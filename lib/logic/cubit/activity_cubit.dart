import 'package:bloc/bloc.dart';
import 'package:bored/data/repository/activity_repository.dart';
import 'package:equatable/equatable.dart';

part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityRepository activityRepository;

  ActivityCubit(this.activityRepository) : super(ActivityInitial());
}
