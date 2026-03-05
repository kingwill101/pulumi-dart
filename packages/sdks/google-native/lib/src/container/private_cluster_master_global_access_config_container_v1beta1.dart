// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfigContainerV1beta1 {
  /// Whenever master is accessible globally or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [PrivateClusterMasterGlobalAccessConfigContainerV1beta1].
  /// [enabled] Whenever master is accessible globally or not.
  PrivateClusterMasterGlobalAccessConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory PrivateClusterMasterGlobalAccessConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfigContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

