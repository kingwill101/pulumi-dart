// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for Vulnerability Assessment autoprovisioning
class DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse {
  /// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  final pulumi.Input<String?>? type;

  /// Creates a new [DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse].
  /// [type] The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  const DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingVaAutoProvisioningConfigurationResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
