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
  const GetVersionArgs({
    this.project,
    required this.siteId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'siteId': siteId,
      'versionId': versionId,
    };
  }

  factory GetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}
