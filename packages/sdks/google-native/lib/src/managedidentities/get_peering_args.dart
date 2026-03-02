// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1_get_peering_args_doc}
/// Arguments for getPeering.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1_get_peering_args_doc}
class GetPeeringArgs {
  final pulumi.Input<String> peeringId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPeeringArgs].
  /// [peeringId] Required.
  /// [project] Optional.
  GetPeeringArgs({
    required this.peeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringId': peeringId,
      'project': ?project,
    };
  }

  factory GetPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeringArgs(
      peeringId: (map['peeringId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

