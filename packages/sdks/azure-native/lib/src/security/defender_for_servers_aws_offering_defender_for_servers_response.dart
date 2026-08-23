// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for servers connection configuration
class DefenderForServersAwsOfferingDefenderForServersResponse {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForServersAwsOfferingDefenderForServersResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  const DefenderForServersAwsOfferingDefenderForServersResponse({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForServersAwsOfferingDefenderForServersResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingDefenderForServersResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
