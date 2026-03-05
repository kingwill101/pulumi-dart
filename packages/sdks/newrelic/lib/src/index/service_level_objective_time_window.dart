// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_objective_time_window_rolling.dart';

class ServiceLevelObjectiveTimeWindow {
  /// Rolling window.
  final pulumi.Input<ServiceLevelObjectiveTimeWindowRolling> rolling;

  /// Creates a new [ServiceLevelObjectiveTimeWindow].
  /// [rolling] Rolling window.
  ServiceLevelObjectiveTimeWindow({
    required this.rolling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolling': pulumi.Input.mapInputValue<ServiceLevelObjectiveTimeWindowRolling, Map<String, dynamic>>(rolling, (value) => value.toMap()),
    };
  }

  factory ServiceLevelObjectiveTimeWindow.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjectiveTimeWindow(
      rolling: pulumi.Input.fromValue(ServiceLevelObjectiveTimeWindowRolling.fromMap((map['rolling']! as Map).cast<String, dynamic>())),
    );
  }
}

