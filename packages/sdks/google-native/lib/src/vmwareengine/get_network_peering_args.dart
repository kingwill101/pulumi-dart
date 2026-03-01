// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_network_peering_args_doc}
/// Arguments for getNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_network_peering_args_doc}
class GetNetworkPeeringArgs {
  final pulumi.Input<String> networkPeeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNetworkPeeringArgs].
  /// [networkPeeringId] Required.
  /// [project] Optional.
  GetNetworkPeeringArgs({
    required pulumi.Output<String> networkPeeringId,
    pulumi.Output<String>? project,
  }) :
      networkPeeringId = pulumi.Input.asInput<String>(networkPeeringId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkPeeringId': networkPeeringId,
      'project': ?project,
    };
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      networkPeeringId: pulumi.Output.create<String>(map['networkPeeringId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

