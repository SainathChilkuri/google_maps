import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleObserver extends BlocObserver{
  @override
  void onChange(Cubit cubit, Change change) {
   print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }
}