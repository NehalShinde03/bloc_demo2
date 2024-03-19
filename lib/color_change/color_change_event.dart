import 'package:equatable/equatable.dart';

class ColorChangeEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class ChangeColor extends ColorChangeEvent{
  final bool colorChange;
  ChangeColor({required this.colorChange});
}