// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for Vulnerability Assessment autoprovisioning
class DefenderForServersAwsOfferingVaAutoProvisioningConfiguration {
  /// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  final pulumi.Input<dynamic>? type;

  /// Creates a new [DefenderForServersAwsOfferingVaAutoProvisioningConfiguration].
  /// [type] The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  const DefenderForServersAwsOfferingVaAutoProvisioningConfiguration({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersAwsOfferingVaAutoProvisioningConfiguration.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingVaAutoProvisioningConfiguration(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
