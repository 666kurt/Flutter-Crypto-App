import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repositories/repositories.dart';
part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final CryptoCoinRepository repository;
  CryptoBloc(this.repository) : super(CryptoInitial()) {
    on<LoadCryptoList>((event, emit) async {
      emit(CryptoLoading());
      try {
        final cryptoList = await repository.fetchCriptoData();
        emit(CryptoListLoadSuccess(coins: cryptoList));
      } catch (e) {
        emit(CryptoLoadFailure(error: e.toString()));
      }
    });
  }
}
