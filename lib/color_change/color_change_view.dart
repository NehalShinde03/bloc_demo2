import 'package:bloc_demo2/color_change/color_change_bloc.dart';
import 'package:bloc_demo2/color_change/color_change_event.dart';
import 'package:bloc_demo2/color_change/color_change_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ColorChangeView extends StatefulWidget {
  const ColorChangeView({super.key});

  @override
  State<ColorChangeView> createState() => _ColorChangeViewState();
}

class _ColorChangeViewState extends State<ColorChangeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ColorChangeBloc, ColorChangeState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  color: state.colorChange? Colors.teal : Colors.black,
                  width: 200,
                  height: 200,
                ),

                const Gap(20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        context.read<ColorChangeBloc>().add(
                           state.colorChange
                               ? ChangeColor(colorChange: false)
                               : ChangeColor(colorChange: true)
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: state.colorChange ? Colors.black : Colors.teal
                      ),
                      child: Text(
                          state.colorChange ? 'black' : 'teal', style: const TextStyle(color: Colors.white)),
                    ),

                  ],
                )

              ],
            ),
          );
        },
      ),
    );
  }
}
