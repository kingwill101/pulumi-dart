// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceUser {
  /// A list of databases that user will have access to. If not specified,
  /// user has access to all databases on th einstance. Changing this creates a new instance.
  final pulumi.Input<List<String>>? databases;
  /// An ip address or % sign indicating what ip addresses can connect with
  /// this user credentials. Changing this creates a new instance.
  final pulumi.Input<String>? host;
  /// Username to be created on new instance. Changing this creates a
  /// new instance.
  final pulumi.Input<String> name;
  /// User's password. Changing this creates a
  /// new instance.
  final pulumi.Input<String>? password;

  /// Creates a new [InstanceUser].
  /// [databases] A list of databases that user will have access to. If not specified,
  /// [host] An ip address or % sign indicating what ip addresses can connect with
  /// [name] Username to be created on new instance. Changing this creates a
  /// [password] User's password. Changing this creates a
  InstanceUser({
    this.databases,
    this.host,
    required this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?databases,
      'host': ?host,
      'name': name,
      'password': ?password,
    };
  }

  factory InstanceUser.fromMap(Map<String, dynamic> map) {
    return InstanceUser(
      databases: map['databases'] == null ? null : ((map['databases'] as List).cast<String>()).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      name: (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
    );
  }
}

