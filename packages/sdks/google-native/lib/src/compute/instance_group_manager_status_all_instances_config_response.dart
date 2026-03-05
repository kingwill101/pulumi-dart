// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStatusAllInstancesConfigResponse {
  /// Current all-instances configuration revision. This value is in RFC3339 text format.
  final pulumi.Input<String> currentRevision;
  /// A bit indicating whether this configuration has been applied to all managed instances in the group.
  final pulumi.Input<bool> effective;

  /// Creates a new [InstanceGroupManagerStatusAllInstancesConfigResponse].
  /// [currentRevision] Current all-instances configuration revision. This value is in RFC3339 text format.
  /// [effective] A bit indicating whether this configuration has been applied to all managed instances in the group.
  InstanceGroupManagerStatusAllInstancesConfigResponse({
    required this.currentRevision,
    required this.effective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentRevision': currentRevision,
      'effective': effective,
    };
  }

  factory InstanceGroupManagerStatusAllInstancesConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusAllInstancesConfigResponse(
      currentRevision: pulumi.Input.fromValue(map['currentRevision'] as String),
      effective: pulumi.Input.fromValue(map['effective'] as bool),
    );
  }
}

