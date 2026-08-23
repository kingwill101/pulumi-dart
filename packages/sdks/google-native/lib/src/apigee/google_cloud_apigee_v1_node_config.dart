// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeConfig for setting the min/max number of nodes associated with the environment.
class GoogleCloudApigeeV1NodeConfig {
  /// Optional. The maximum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended maximum number of nodes for that gateway.
  final pulumi.Input<String>? maxNodeCount;
  /// Optional. The minimum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended minimum number of nodes for that gateway.
  final pulumi.Input<String>? minNodeCount;

  /// Creates a new [GoogleCloudApigeeV1NodeConfig].
  /// [maxNodeCount] Optional. The maximum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended maximum number of nodes for that gateway.
  /// [minNodeCount] Optional. The minimum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended minimum number of nodes for that gateway.
  const GoogleCloudApigeeV1NodeConfig({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory GoogleCloudApigeeV1NodeConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1NodeConfig(
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
