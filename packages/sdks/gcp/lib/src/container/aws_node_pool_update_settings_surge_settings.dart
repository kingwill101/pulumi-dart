// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolUpdateSettingsSurgeSettings {
  /// Optional. The maximum number of nodes that can be created beyond the current size of the node pool during the update process.
  final pulumi.Input<int>? maxSurge;
  /// Optional. The maximum number of nodes that can be simultaneously unavailable during the update process. A node is considered unavailable if its status is not Ready.
  final pulumi.Input<int>? maxUnavailable;

  /// Creates a new [AwsNodePoolUpdateSettingsSurgeSettings].
  /// [maxSurge] Optional. The maximum number of nodes that can be created beyond the current size of the node pool during the update process.
  /// [maxUnavailable] Optional. The maximum number of nodes that can be simultaneously unavailable during the update process. A node is considered unavailable if its status is not Ready.
  AwsNodePoolUpdateSettingsSurgeSettings({
    this.maxSurge,
    this.maxUnavailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSurge': ?maxSurge,
      'maxUnavailable': ?maxUnavailable,
    };
  }

  factory AwsNodePoolUpdateSettingsSurgeSettings.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolUpdateSettingsSurgeSettings(
      maxSurge: map['maxSurge'] == null ? null : (map['maxSurge']! as int).input(),
      maxUnavailable: map['maxUnavailable'] == null ? null : (map['maxUnavailable']! as int).input(),
    );
  }
}

