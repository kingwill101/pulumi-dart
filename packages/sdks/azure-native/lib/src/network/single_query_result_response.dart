// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SingleQueryResultResponse {
  /// Describes what is the signature enforces
  final pulumi.Input<String>? description;
  /// Describes the list of destination ports related to this signature
  final pulumi.Input<List<String>>? destinationPorts;
  /// Describes in which direction signature is being enforced: 0 - OutBound, 1 - InBound, 2 - Any, 3 - Internal, 4 - InternalOutbound, 5 - InternalInbound
  final pulumi.Input<int>? direction;
  /// Describes the groups the signature belongs to
  final pulumi.Input<String>? group;
  /// Describes if this override is inherited from base policy or not
  final pulumi.Input<bool>? inheritedFromParentPolicy;
  /// Describes the last updated time of the signature (provided from 3rd party vendor)
  final pulumi.Input<String>? lastUpdated;
  /// The current mode enforced, 0 - Disabled, 1 - Alert, 2 -Deny
  final pulumi.Input<int>? mode;
  /// Describes the protocol the signatures is being enforced in
  final pulumi.Input<String>? protocol;
  /// Describes the severity of signature: 1 - High, 2 - Medium, 3 - Low
  final pulumi.Input<int>? severity;
  /// The ID of the signature
  final pulumi.Input<int>? signatureId;
  /// Describes the list of source ports related to this signature
  final pulumi.Input<List<String>>? sourcePorts;

  /// Creates a new [SingleQueryResultResponse].
  /// [description] Describes what is the signature enforces
  /// [destinationPorts] Describes the list of destination ports related to this signature
  /// [direction] Describes in which direction signature is being enforced: 0 - OutBound, 1 - InBound, 2 - Any, 3 - Internal, 4 - InternalOutbound, 5 - InternalInbound
  /// [group] Describes the groups the signature belongs to
  /// [inheritedFromParentPolicy] Describes if this override is inherited from base policy or not
  /// [lastUpdated] Describes the last updated time of the signature (provided from 3rd party vendor)
  /// [mode] The current mode enforced, 0 - Disabled, 1 - Alert, 2 -Deny
  /// [protocol] Describes the protocol the signatures is being enforced in
  /// [severity] Describes the severity of signature: 1 - High, 2 - Medium, 3 - Low
  /// [signatureId] The ID of the signature
  /// [sourcePorts] Describes the list of source ports related to this signature
  SingleQueryResultResponse({
    this.description,
    this.destinationPorts,
    this.direction,
    this.group,
    this.inheritedFromParentPolicy,
    this.lastUpdated,
    this.mode,
    this.protocol,
    this.severity,
    this.signatureId,
    this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationPorts': ?destinationPorts,
      'direction': ?direction,
      'group': ?group,
      'inheritedFromParentPolicy': ?inheritedFromParentPolicy,
      'lastUpdated': ?lastUpdated,
      'mode': ?mode,
      'protocol': ?protocol,
      'severity': ?severity,
      'signatureId': ?signatureId,
      'sourcePorts': ?sourcePorts,
    };
  }

  factory SingleQueryResultResponse.fromMap(Map<String, dynamic> map) {
    return SingleQueryResultResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationPorts: map['destinationPorts'] == null ? null : ((map['destinationPorts']! as List).cast<String>()).input(),
      direction: map['direction'] == null ? null : (map['direction']! as int).input(),
      group: map['group'] == null ? null : (map['group']! as String).input(),
      inheritedFromParentPolicy: map['inheritedFromParentPolicy'] == null ? null : (map['inheritedFromParentPolicy']! as bool).input(),
      lastUpdated: map['lastUpdated'] == null ? null : (map['lastUpdated']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as int).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      severity: map['severity'] == null ? null : (map['severity']! as int).input(),
      signatureId: map['signatureId'] == null ? null : (map['signatureId']! as int).input(),
      sourcePorts: map['sourcePorts'] == null ? null : ((map['sourcePorts']! as List).cast<String>()).input(),
    );
  }
}

