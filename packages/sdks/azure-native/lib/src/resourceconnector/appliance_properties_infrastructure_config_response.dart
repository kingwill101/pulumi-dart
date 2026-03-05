// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains infrastructure information about the Appliance
class AppliancePropertiesInfrastructureConfigResponse {
  /// Information about the connected appliance.
  final pulumi.Input<String>? provider;

  /// Creates a new [AppliancePropertiesInfrastructureConfigResponse].
  /// [provider] Information about the connected appliance.
  AppliancePropertiesInfrastructureConfigResponse({
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': ?provider,
    };
  }

  factory AppliancePropertiesInfrastructureConfigResponse.fromMap(Map<String, dynamic> map) {
    return AppliancePropertiesInfrastructureConfigResponse(
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

