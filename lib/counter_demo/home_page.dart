import 'package:bloc_demo/counter_demo/counter_bloc.dart';
import 'package:bloc_demo/counter_demo/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<CounterBloc, int>(
      bloc: counterBloc,
      builder: (context, count) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: Column(
            children: [
              Spacer(),
              FloatingActionButton(
                onPressed: () => counterBloc.add(CounterIncremented()),
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                onPressed: () => counterBloc.add(CounterDecremented()),
                tooltip: 'Increment',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
