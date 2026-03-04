// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_objective_time_window.dart';

class ServiceLevelObjective {
  /// The description of the SLI.
  final pulumi.Input<String>? description;

  /// A short name for the SLI that will help anyone understand what it is about.
  final pulumi.Input<String>? name;

  /// The target of the objective, valid values between `0` and `100`. Up to 5 decimals accepted.
  final pulumi.Input<double> target;

  /// Time window is the period of the objective.
  final pulumi.Input<ServiceLevelObjectiveTimeWindow> timeWindow;

  /// Creates a new [ServiceLevelObjective].
  /// [description] The description of the SLI.
  /// [name] A short name for the SLI that will help anyone understand what it is about.
  /// [target] The target of the objective, valid values between `0` and `100`. Up to 5 decimals accepted.
  /// [timeWindow] Time window is the period of the objective.
  ServiceLevelObjective({
    this.description,
    this.name,
    required this.target,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'target': target,
      'timeWindow':
          pulumi.Input.mapInputValue<
            ServiceLevelObjectiveTimeWindow,
            Map<String, dynamic>
          >(timeWindow, (value) => value.toMap()),
    };
  }

  factory ServiceLevelObjective.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjective(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: pulumi.Input.fromValue(map['target'] as double),
      timeWindow: pulumi.Input.fromValue(
        ServiceLevelObjectiveTimeWindow.fromMap(
          (map['timeWindow']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
