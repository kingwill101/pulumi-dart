// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigGvnic {
  /// Whether or not gvnic is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigGvnic].
  /// [enabled] Whether or not gvnic is enabled
  const GetClusterNodePoolNodeConfigGvnic({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigGvnic.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigGvnic(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

