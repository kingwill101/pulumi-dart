// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for Vulnerability Assessment autoprovisioning
class DefenderForServersGcpOfferingConfiguration {
  /// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersGcpOfferingConfiguration].
  /// [type] The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  DefenderForServersGcpOfferingConfiguration({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory DefenderForServersGcpOfferingConfiguration.fromMap(Map<String, dynamic> map) {
    return DefenderForServersGcpOfferingConfiguration(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

