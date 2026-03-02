// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains infrastructure information about the Appliance
class AppliancePropertiesInfrastructureConfig {
  /// Information about the connected appliance.
  final pulumi.Input<String>? provider;

  /// Creates a new [AppliancePropertiesInfrastructureConfig].
  /// [provider] Information about the connected appliance.
  AppliancePropertiesInfrastructureConfig({
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?provider,
    };
  }

  factory AppliancePropertiesInfrastructureConfig.fromMap(Map<String, dynamic> map) {
    return AppliancePropertiesInfrastructureConfig(
      provider: map['provider'] == null ? null : (map['provider']! as String).input(),
    );
  }
}

