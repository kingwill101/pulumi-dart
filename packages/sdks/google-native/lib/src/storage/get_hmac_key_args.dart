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
  GetHmacKeyArgs({
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
      accessId: (map['accessId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      userProject: map['userProject'] == null ? null : (map['userProject'] as String).input(),
    );
  }
}

