// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_user_creds_user_creds_args_doc}
/// The set of arguments for UserCreds.
/// {@endtemplate}
/// {@macro pulumi_firestore_user_creds_user_creds_args_doc}
class UserCredsArgs {
  /// The Firestore database ID.
  final pulumi.Input<String> database;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID to use for the user creds, which will become the final component
  /// of the user cred's resource name.
  /// This value should be 4-63 characters. Valid characters are /[a-z][0-9]-/
  /// with first character a letter and the last a letter or a number. Must not
  /// be UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [UserCredsArgs].
  /// [database] The Firestore database ID.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [name] The ID to use for the user creds, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  const UserCredsArgs({
    required this.database,
    this.deletionPolicy,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'deletionPolicy': ?deletionPolicy,
      'name': ?name,
      'project': ?project,
    };
  }

  factory UserCredsArgs.fromMap(Map<String, dynamic> map) {
    return UserCredsArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
