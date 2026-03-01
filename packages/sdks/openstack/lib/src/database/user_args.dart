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
  UserArgs({
    pulumi.Output<List<String>>? databases,
    pulumi.Output<String>? host,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> password,
    pulumi.Output<String>? region,
  }) :
      databases = pulumi.Input.asOptionalInput<List<String>>(databases),
      host = pulumi.Input.asOptionalInput<String>(host),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      databases: map['databases'] == null ? null : pulumi.Output.create<List<String>>((map['databases'] as List).cast<String>()),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

