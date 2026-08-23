// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_hmac_key_args_doc}
/// The set of arguments for HmacKey.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_hmac_key_args_doc}
class HmacKeyArgs {
  final pulumi.Input<String>? project;
  /// Email address of the service account.
  final pulumi.Input<String> serviceAccountEmail;
  /// The project to be billed for this request.
  final pulumi.Input<String>? userProject;

  /// Creates a new [HmacKeyArgs].
  /// [project] Optional.
  /// [serviceAccountEmail] Email address of the service account.
  /// [userProject] The project to be billed for this request.
  const HmacKeyArgs({
    this.project,
    required this.serviceAccountEmail,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'serviceAccountEmail': serviceAccountEmail,
      'userProject': ?userProject,
    };
  }

  factory HmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return HmacKeyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
