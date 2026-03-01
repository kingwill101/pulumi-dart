// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalsolution_v2_get_nfs_share_args_doc}
/// Arguments for getNfsShare.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_get_nfs_share_args_doc}
class GetNfsShareArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nfsShareId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNfsShareArgs].
  /// [location] Required.
  /// [nfsShareId] Required.
  /// [project] Optional.
  GetNfsShareArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> nfsShareId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      nfsShareId = pulumi.Input.asInput<String>(nfsShareId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nfsShareId': nfsShareId,
      'project': ?project,
    };
  }

  factory GetNfsShareArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsShareArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      nfsShareId: pulumi.Output.create<String>(map['nfsShareId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

