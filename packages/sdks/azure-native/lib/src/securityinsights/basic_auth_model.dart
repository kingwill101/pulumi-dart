// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication with basic flow - user name + password.
class BasicAuthModel {
  /// The password
  final pulumi.Input<String> password;

  /// Type of paging
  /// Expected value is 'Basic'.
  final pulumi.Input<String> type;

  /// The user name.
  final pulumi.Input<String> userName;

  /// Creates a new [BasicAuthModel].
  /// [password] The password
  /// [type] Type of paging
  /// [userName] The user name.
  BasicAuthModel({
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

  factory BasicAuthModel.fromMap(Map<String, dynamic> map) {
    return BasicAuthModel(
      password: pulumi.Input.fromValue(map['password'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
