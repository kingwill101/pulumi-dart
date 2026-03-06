// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration {
  /// Whether or not Cloud Data Lineage integration is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration].
  /// [enabled] Whether or not Cloud Data Lineage integration is enabled.
  const GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

