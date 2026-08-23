// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesPlacement {
  /// The availability domain.
  final pulumi.Input<String>? availabilityDomain;
  /// The fault domain.
  final pulumi.Input<String>? faultDomain;

  /// Creates a new [GoldengateDeploymentPropertiesPlacement].
  /// [availabilityDomain] The availability domain.
  /// [faultDomain] The fault domain.
  const GoldengateDeploymentPropertiesPlacement({
    this.availabilityDomain,
    this.faultDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityDomain': ?availabilityDomain,
      'faultDomain': ?faultDomain,
    };
  }

  factory GoldengateDeploymentPropertiesPlacement.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesPlacement(
      availabilityDomain: (() { final guardedValue = map['availabilityDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faultDomain: (() { final guardedValue = map['faultDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
