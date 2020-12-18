

/*import 'package:cubit/cubit.dart';*/
import 'package:flutter_bloc/flutter_bloc.dart';
//events in blocEvents
enum CubitEvent{increment,decrement}
class CubitBloc extends Cubit<int> {
  CubitBloc() : super(0);

  void increment(){
    emit(state+1);
  }

  void decrement(){
    emit(state - 1);
  }
/*@override
  Stream<int> mapEventToState(event) async* {
    switch (event) {
      case CubitEvent.increment:
      // returning the state
        yield state + 1;
        break;
      case CubitEvent.decrement:
      //returning the state
        yield state - 1;
        break;
    }
  }
  */
}
