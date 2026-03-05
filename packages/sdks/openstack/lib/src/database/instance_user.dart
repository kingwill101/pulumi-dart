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
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

