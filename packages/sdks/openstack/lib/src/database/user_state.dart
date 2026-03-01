// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// A list of database user should have access to.
  final pulumi.Input<List<String>>? databases;
  final pulumi.Input<String>? host;
  /// The ID for the database instance.
  final pulumi.Input<String>? instanceId;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// User's password.
  final pulumi.Input<String>? password;
  /// The region in which to create the db user. Changing
  /// this creates a new user.
  final pulumi.Input<String>? region;

  /// Creates a new [UserState].
  /// [databases] A list of database user should have access to.
  /// [host] Optional.
  /// [instanceId] The ID for the database instance.
  /// [name] A unique name for the resource.
  /// [password] User's password.
  /// [region] The region in which to create the db user. Changing
  UserState({
    pulumi.Output<List<String>>? databases,
    pulumi.Output<String>? host,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? region,
  }) :
      databases = pulumi.Input.asOptionalInput<List<String>>(databases),
      host = pulumi.Input.asOptionalInput<String>(host),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'host': ?host,
      'instanceId': ?instanceId,
      'name': ?name,
      'password': ?password,
      'region': ?region,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      databases: map['databases'] == null ? null : pulumi.Output.create<List<String>>((map['databases'] as List).cast<String>()),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

