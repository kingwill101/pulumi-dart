// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryTaskScheduleRunNow resources.
class RegistryTaskScheduleRunNowState {
  /// The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  final pulumi.Input<String>? containerRegistryTaskId;

  /// Creates a new [RegistryTaskScheduleRunNowState].
  /// [containerRegistryTaskId] The ID of the Container Registry Task that to be scheduled. Changing this forces a new Container Registry Task Schedule to be created.
  RegistryTaskScheduleRunNowState({
    pulumi.Output<String>? containerRegistryTaskId,
  }) :
      containerRegistryTaskId = pulumi.Input.asOptionalInput<String>(containerRegistryTaskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryTaskId': ?containerRegistryTaskId,
    };
  }

  factory RegistryTaskScheduleRunNowState.fromMap(Map<String, dynamic> map) {
    return RegistryTaskScheduleRunNowState(
      containerRegistryTaskId: map['containerRegistryTaskId'] == null ? null : pulumi.Output.create<String>(map['containerRegistryTaskId'] as String),
    );
  }
}

