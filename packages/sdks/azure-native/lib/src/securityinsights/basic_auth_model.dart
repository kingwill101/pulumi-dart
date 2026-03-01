// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with basic flow - user name + password.
class BasicAuthModel {
  /// The password
  final String password;
  /// Type of paging
  /// Expected value is 'Basic'.
  final String type;
  /// The user name.
  final String userName;

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
      password: map['password'] as String,
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}

