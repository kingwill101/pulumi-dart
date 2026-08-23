// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_hmac_key_args_doc}
/// Arguments for getHmacKey.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_hmac_key_args_doc}
class GetHmacKeyArgs {
  final pulumi.Input<String> accessId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetHmacKeyArgs].
  /// [accessId] Required.
  /// [project] Optional.
  /// [userProject] Optional.
  const GetHmacKeyArgs({
    required this.accessId,
    this.project,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': accessId,
      'project': ?project,
      'userProject': ?userProject,
    };
  }

  factory GetHmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHmacKeyArgs(
      accessId: pulumi.Input.fromValue(map['accessId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
