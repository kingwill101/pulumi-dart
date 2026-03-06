// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfigResponseContainerV1beta1 {
  /// Whenever master is accessible globally or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [PrivateClusterMasterGlobalAccessConfigResponseContainerV1beta1].
  /// [enabled] Whenever master is accessible globally or not.
  const PrivateClusterMasterGlobalAccessConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory PrivateClusterMasterGlobalAccessConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfigResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

