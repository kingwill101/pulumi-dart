// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_database_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_database_user_user_args_doc}
class UserArgs {
  /// A list of database user should have access to.
  final pulumi.Input<List<String>>? databases;
  final pulumi.Input<String>? host;
  /// The ID for the database instance.
  final pulumi.Input<String> instanceId;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// User's password.
  final pulumi.Input<String> password;
  /// The region in which to create the db user. Changing
  /// this creates a new user.
  final pulumi.Input<String>? region;

  /// Creates a new [UserArgs].
  /// [databases] A list of database user should have access to.
  /// [host] Optional.
  /// [instanceId] The ID for the database instance.
  /// [name] A unique name for the resource.
  /// [password] User's password.
  /// [region] The region in which to create the db user. Changing
  const UserArgs({
    this.databases,
    this.host,
    required this.instanceId,
    this.name,
    required this.password,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'host': ?host,
      'instanceId': instanceId,
      'name': ?name,
      'password': password,
      'region': ?region,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

