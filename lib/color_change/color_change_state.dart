import 'package:equatable/equatable.dart';

class ColorChangeState extends Equatable{

  final bool colorChange;

  const ColorChangeState({this.colorChange=false});

  @override
  List<Object?> get props => [colorChange];

  ColorChangeState copyWith({bool? colorChange}){
    return ColorChangeState(colorChange: colorChange ?? this.colorChange);
  }

}