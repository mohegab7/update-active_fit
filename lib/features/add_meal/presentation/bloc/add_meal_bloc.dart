import 'package:active_fit/core/domain/usecase/get_config_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'add_meal_event.dart';

part 'add_meal_state.dart';

class AddMealBloc extends Bloc<AddMealEvent, AddMealState> {
  final GetConfigUsecase _getConfigUsecase;

  AddMealBloc(this._getConfigUsecase) : super(AddMealInitialState()) {
    on<InitializeAddMealEvent>((event, emit) async {
      emit(AddMealLoadingState());

      final config = await _getConfigUsecase.getConfig();
      emit(AddMealLoadedState(usesImperialUnits: config.usesImperialUnits));
    });
  }
}
