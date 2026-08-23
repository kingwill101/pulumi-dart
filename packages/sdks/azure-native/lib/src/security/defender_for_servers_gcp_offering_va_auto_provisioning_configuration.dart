// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for Vulnerability Assessment autoprovisioning
class DefenderForServersGcpOfferingVaAutoProvisioningConfiguration {
  /// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersGcpOfferingVaAutoProvisioningConfiguration].
  /// [type] The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  const DefenderForServersGcpOfferingVaAutoProvisioningConfiguration({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersGcpOfferingVaAutoProvisioningConfiguration.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVaAutoProvisioningConfiguration(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
