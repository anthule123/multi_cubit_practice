import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_cubit_practice/cubit/counter_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) => Text('${state.value}'),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => context.read<CounterCubit>().increment(),
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () => context.read<CounterCubit>().decrement(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
