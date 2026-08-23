// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for Vulnerability Assessment autoprovisioning
class DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse {
  /// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse].
  /// [type] The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  const DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingVaAutoProvisioningConfigurationResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
