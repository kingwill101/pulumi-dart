// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with basic flow - user name + password.
class BasicAuthModelResponse {
  /// The password
  final pulumi.Input<String> password;
  /// Type of paging
  /// Expected value is 'Basic'.
  final pulumi.Input<String> type;
  /// The user name.
  final pulumi.Input<String> userName;

  /// Creates a new [BasicAuthModelResponse].
  /// [password] The password
  /// [type] Type of paging
  /// [userName] The user name.
  BasicAuthModelResponse({
    required this.password,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'type': type,
      'userName': userName,
    };
  }

  factory BasicAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return BasicAuthModelResponse(
      password: pulumi.Input.fromValue(map['password'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

