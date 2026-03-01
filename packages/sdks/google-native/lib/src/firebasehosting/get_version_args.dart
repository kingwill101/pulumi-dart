// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_version_args_doc}
/// Arguments for getVersion.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_version_args_doc}
class GetVersionArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArgs].
  /// [project] Optional.
  /// [siteId] Required.
  /// [versionId] Required.
  GetVersionArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> siteId,
    required pulumi.Output<String> versionId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'siteId': siteId,
      'versionId': versionId,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

