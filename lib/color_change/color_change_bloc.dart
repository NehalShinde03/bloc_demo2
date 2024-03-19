import 'dart:async';

import 'package:bloc_demo2/color_change/color_change_event.dart';
import 'package:bloc_demo2/color_change/color_change_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorChangeBloc extends Bloc<ColorChangeEvent, ColorChangeState>{
  ColorChangeBloc(super.initialState){
   on<ChangeColor>(_colorChange);
  }


  FutureOr<void> _colorChange(ChangeColor event, Emitter<ColorChangeState> emit){
        bool colorChange = event.colorChange;
        emit(state.copyWith(colorChange: colorChange));
  }
}