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
    required this.networkPeeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkPeeringId': networkPeeringId,
      'project': ?project,
    };
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      networkPeeringId: (map['networkPeeringId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

