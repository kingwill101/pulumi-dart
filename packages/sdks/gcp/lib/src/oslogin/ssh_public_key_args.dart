// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
/// The set of arguments for SshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_ssh_public_key_ssh_public_key_args_doc}
class SshPublicKeyArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An expiration time in microseconds since epoch.
  final pulumi.Input<String?>? expirationTimeUsec;
  /// Public key text in SSH format, defined by RFC4253 section 6.6.
  final pulumi.Input<String> key;
  /// The project ID of the Google Cloud Platform project.
  final pulumi.Input<String?>? project;
  /// The user email.
  final pulumi.Input<String> user;

  /// Creates a new [SshPublicKeyArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [expirationTimeUsec] An expiration time in microseconds since epoch.
  /// [key] Public key text in SSH format, defined by RFC4253 section 6.6.
  /// [project] The project ID of the Google Cloud Platform project.
  /// [user] The user email.
  const SshPublicKeyArgs({
    this.deletionPolicy,
    this.expirationTimeUsec,
    required this.key,
    this.project,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'expirationTimeUsec': ?expirationTimeUsec,
      'key': key,
      'project': ?project,
      'user': user,
    };
  }

  factory SshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTimeUsec: (() { final guardedValue = map['expirationTimeUsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
