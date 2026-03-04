// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// configuration for Vulnerability Assessment autoprovisioning
class DefenderForServersAwsOfferingResponseConfiguration {
  /// The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  final pulumi.Input<String>? type;

  /// Creates a new [DefenderForServersAwsOfferingResponseConfiguration].
  /// [type] The Vulnerability Assessment solution to be provisioned. Can be either 'TVM' or 'Qualys'
  DefenderForServersAwsOfferingResponseConfiguration({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory DefenderForServersAwsOfferingResponseConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderForServersAwsOfferingResponseConfiguration(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
