// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The databases DSPM configuration
class DefenderCspmAwsOfferingDatabasesDspm {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Is databases DSPM protection enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderCspmAwsOfferingDatabasesDspm].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  /// [enabled] Is databases DSPM protection enabled
  DefenderCspmAwsOfferingDatabasesDspm({this.cloudRoleArn, this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmAwsOfferingDatabasesDspm.fromMap(
    Map<String, dynamic> map,
  ) {
    return DefenderCspmAwsOfferingDatabasesDspm(
      cloudRoleArn: (() {
        final guardedValue = map['cloudRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
