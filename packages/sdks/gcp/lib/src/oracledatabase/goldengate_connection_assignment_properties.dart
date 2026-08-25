// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionAssignmentProperties {
  /// (Output)
  /// Credential store alias.
  final pulumi.Input<String?>? alias;
  /// The GoldengateConnection resource to be assigned.
  /// Format:
  /// projects/{project}/locations/{location}/goldengateConnections/{goldengate_connection}
  final pulumi.Input<String> goldengateConnection;
  /// The GoldenGateDeployment to assign the connection to.
  /// Format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}
  final pulumi.Input<String> goldengateDeployment;
  /// (Output)
  /// The
  /// [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)
  /// of the connection assignment being referenced.
  final pulumi.Input<String?>? ocid;
  /// (Output)
  /// The lifecycle state of the connection assignment.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// FAILED
  /// UPDATING
  /// DELETING
  final pulumi.Input<String?>? state;

  /// Creates a new [GoldengateConnectionAssignmentProperties].
  /// [alias] (Output)
  /// [goldengateConnection] The GoldengateConnection resource to be assigned.
  /// [goldengateDeployment] The GoldenGateDeployment to assign the connection to.
  /// [ocid] (Output)
  /// [state] (Output)
  const GoldengateConnectionAssignmentProperties({
    this.alias,
    required this.goldengateConnection,
    required this.goldengateDeployment,
    this.ocid,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'goldengateConnection': goldengateConnection,
      'goldengateDeployment': goldengateDeployment,
      'ocid': ?ocid,
      'state': ?state,
    };
  }

  factory GoldengateConnectionAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionAssignmentProperties(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      goldengateConnection: pulumi.Input.fromValue(map['goldengateConnection'] as String),
      goldengateDeployment: pulumi.Input.fromValue(map['goldengateDeployment'] as String),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
