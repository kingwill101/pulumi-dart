// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Defender for servers connection configuration
class DefenderForServersAwsOfferingDefenderForServers {
  /// The cloud role ARN in AWS for this feature
  final pulumi.Input<String?>? cloudRoleArn;

  /// Creates a new [DefenderForServersAwsOfferingDefenderForServers].
  /// [cloudRoleArn] The cloud role ARN in AWS for this feature
  const DefenderForServersAwsOfferingDefenderForServers({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForServersAwsOfferingDefenderForServers.fromMap(Map<String, dynamic> map) {
    return DefenderForServersAwsOfferingDefenderForServers(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
