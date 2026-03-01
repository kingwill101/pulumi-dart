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
    required pulumi.Output<String> accessId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? userProject,
  }) :
      accessId = pulumi.Input.asInput<String>(accessId),
      project = pulumi.Input.asOptionalInput<String>(project),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessId': accessId,
      'project': ?project,
      'userProject': ?userProject,
    };
  }

  factory GetHmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHmacKeyArgs(
      accessId: pulumi.Output.create<String>(map['accessId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

