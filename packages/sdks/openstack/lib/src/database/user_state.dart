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
    this.databases,
    this.host,
    this.instanceId,
    this.name,
    this.password,
    this.region,
  });

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
      databases: map['databases'] == null ? null : ((map['databases'] as List).cast<String>()).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

