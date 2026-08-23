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
  const GetNfsShareArgs({
    required this.location,
    required this.nfsShareId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nfsShareId': nfsShareId,
      'project': ?project,
    };
  }

  factory GetNfsShareArgs.fromMap(Map<String, dynamic> map) {
    return GetNfsShareArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      nfsShareId: pulumi.Input.fromValue(map['nfsShareId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
