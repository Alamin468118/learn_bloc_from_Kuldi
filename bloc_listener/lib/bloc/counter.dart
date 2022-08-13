import 'package:bloc/bloc.dart';


class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  // void increment() => emit(state + 1);
  // void decrement() => emit(state - 1);

  void tambahData() {
    // counterCubit.increment();
    emit(state + 1);
  }

  void penolakanData() {
    // counterCubit.decrement();
    emit(state - 1);
  }

  // ================Observer====================
  // -perubahan (onchange)
  // -error (onerror)

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print('onChange: $change');
  }

  // for observer error
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('onError: $error');
  }
}
