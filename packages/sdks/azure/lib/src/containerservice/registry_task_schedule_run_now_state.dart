// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryTaskScheduleRunNow resources.
class RegistryTaskScheduleRunNowState {
  /// The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  final pulumi.Input<String>? containerRegistryTaskId;

  /// Creates a new [RegistryTaskScheduleRunNowState].
  /// [containerRegistryTaskId] The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  const RegistryTaskScheduleRunNowState({
    this.containerRegistryTaskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryTaskId': ?containerRegistryTaskId,
    };
  }

  factory RegistryTaskScheduleRunNowState.fromMap(Map<String, dynamic> map) {
    return RegistryTaskScheduleRunNowState(
      containerRegistryTaskId: (() { final guardedValue = map['containerRegistryTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
