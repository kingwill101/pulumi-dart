// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for controlling master global access settings.
class PrivateClusterMasterGlobalAccessConfigResponse {
  /// Whenever master is accessible globally or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [PrivateClusterMasterGlobalAccessConfigResponse].
  /// [enabled] Whenever master is accessible globally or not.
  PrivateClusterMasterGlobalAccessConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory PrivateClusterMasterGlobalAccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivateClusterMasterGlobalAccessConfigResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

