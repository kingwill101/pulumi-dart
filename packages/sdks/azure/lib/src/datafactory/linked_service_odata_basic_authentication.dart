// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceOdataBasicAuthentication {
  /// The password associated with the username, which can be used to authenticate to the OData endpoint.
  final pulumi.Input<String> password;
  /// The username which can be used to authenticate to the OData endpoint.
  final pulumi.Input<String> username;

  /// Creates a new [LinkedServiceOdataBasicAuthentication].
  /// [password] The password associated with the username, which can be used to authenticate to the OData endpoint.
  /// [username] The username which can be used to authenticate to the OData endpoint.
  LinkedServiceOdataBasicAuthentication({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory LinkedServiceOdataBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return LinkedServiceOdataBasicAuthentication(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

