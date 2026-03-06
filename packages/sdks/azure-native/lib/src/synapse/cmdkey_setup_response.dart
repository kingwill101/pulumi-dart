// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string_response.dart';

/// The custom setup of running cmdkey commands.
class CmdkeySetupResponse {
  /// The password of data source access.
  final pulumi.Input<SecureStringResponse> password;
  /// The server name of data source access.
  final pulumi.Input<dynamic> targetName;
  /// The type of custom setup.
  /// Expected value is 'CmdkeySetup'.
  final pulumi.Input<String> type;
  /// The user name of data source access.
  final pulumi.Input<dynamic> userName;

  /// Creates a new [CmdkeySetupResponse].
  /// [password] The password of data source access.
  /// [targetName] The server name of data source access.
  /// [type] The type of custom setup.
  /// [userName] The user name of data source access.
  const CmdkeySetupResponse({
    required this.password,
    required this.targetName,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': pulumi.Input.mapInputValue<SecureStringResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'targetName': targetName,
      'type': type,
      'userName': userName,
    };
  }

  factory CmdkeySetupResponse.fromMap(Map<String, dynamic> map) {
    return CmdkeySetupResponse(
      password: pulumi.Input.fromValue(SecureStringResponse.fromMap((map['password']! as Map).cast<String, dynamic>())),
      targetName: pulumi.Input.fromValue(map['targetName']),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(map['userName']),
    );
  }
}

