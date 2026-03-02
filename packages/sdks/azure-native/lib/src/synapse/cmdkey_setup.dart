// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string.dart';

/// The custom setup of running cmdkey commands.
class CmdkeySetup {
  /// The password of data source access.
  final pulumi.Input<SecureString> password;
  /// The server name of data source access.
  final pulumi.Input<dynamic> targetName;
  /// The type of custom setup.
  /// Expected value is 'CmdkeySetup'.
  final pulumi.Input<String> type;
  /// The user name of data source access.
  final pulumi.Input<dynamic> userName;

  /// Creates a new [CmdkeySetup].
  /// [password] The password of data source access.
  /// [targetName] The server name of data source access.
  /// [type] The type of custom setup.
  /// [userName] The user name of data source access.
  CmdkeySetup({
    required this.password,
    required this.targetName,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': pulumi.Input.mapInputValue<SecureString, Map<String, dynamic>>(password, (value) => value.toMap()),
      'targetName': targetName,
      'type': type,
      'userName': userName,
    };
  }

  factory CmdkeySetup.fromMap(Map<String, dynamic> map) {
    return CmdkeySetup(
      password: (SecureString.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      targetName: (map['targetName']).input(),
      type: (map['type'] as String).input(),
      userName: (map['userName']).input(),
    );
  }
}

