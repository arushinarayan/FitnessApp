import 'package:bloc/bloc.dart';
enum CounterEvents {increment, decrement}

class CounterBloc extends Bloc<CounterEvents, double>{
  @override
  // TODO: implement initialState
  double get initialState => 0;

  @override
  Stream<double> mapEventToState(CounterEvents event) async*{
    // TODO: implement mapEventToState
    switch(event){
      case CounterEvents.increment:
        yield state + 0.14;
        break;
      case CounterEvents.decrement:
        yield state - 0.05;
        break;
    }
  }

}