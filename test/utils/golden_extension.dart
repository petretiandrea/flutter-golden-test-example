import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

extension BlocGoldenDevice on DeviceBuilder {
  addBlocScenario<T extends BlocBase>({
    String? name,
    required T bloc,
    required WidgetBuilder builder,
    required Function(T) setupBloc,
    Future<void> Function(Key)? onCreate,
  }) {
    return addScenario(
      name: name,
      widget: blocScenario(bloc: bloc, builder: builder, setupBloc: setupBloc),
      onCreate: onCreate,
    );
  }
}

Widget blocScenario<T extends BlocBase>({
  required T bloc,
  required WidgetBuilder builder,
  required Function(T) setupBloc,
}) {
  return MultiBlocProvider(
    providers: [BlocProvider.value(value: bloc)],
    child: Builder(
      builder: (ctx) {
        setupBloc(bloc);
        return builder(ctx);
      },
    ),
  );
}
