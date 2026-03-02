// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint {
  /// (Output)
  /// ip Address created by the automated forwarding rule.
  final pulumi.Input<String>? matchAddress;
  /// (Output)
  /// Corresponding network in pscAutomationConfigs.
  final pulumi.Input<String>? network;
  /// (Output)
  /// Corresponding projectId in pscAutomationConfigs
  final pulumi.Input<String>? projectId;

  /// Creates a new [AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint].
  /// [matchAddress] (Output)
  /// [network] (Output)
  /// [projectId] (Output)
  AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint({
    this.matchAddress,
    this.network,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchAddress': ?matchAddress,
      'network': ?network,
      'projectId': ?projectId,
    };
  }

  factory AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint.fromMap(Map<String, dynamic> map) {
    return AiIndexEndpointDeployedIndexPrivateEndpointPscAutomatedEndpoint(
      matchAddress: map['matchAddress'] == null ? null : (map['matchAddress']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
    );
  }
}

