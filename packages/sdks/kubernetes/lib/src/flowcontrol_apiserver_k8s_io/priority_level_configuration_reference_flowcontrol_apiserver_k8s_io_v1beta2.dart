// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta2 {
  /// `name` is the name of the priority level configuration being referenced Required.
  final pulumi.Input<String> name;

  /// Creates a new [PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta2].
  /// [name] `name` is the name of the priority level configuration being referenced Required.
  PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1beta2(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
