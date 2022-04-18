import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class CurrentpageCubit extends Cubit<int> {
  CurrentpageCubit() : super(0);

  void changePage(int index) {
    emit(index);
  }
}
