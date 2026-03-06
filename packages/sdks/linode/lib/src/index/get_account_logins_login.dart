// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountLoginsLogin {
  /// When the login was initiated.
  final pulumi.Input<String> datetime;
  /// The unique ID of this login object.
  final pulumi.Input<int> id;
  /// The remote IP address that requested the login.
  final pulumi.Input<String> ip;
  /// True if the User that was logged into was a restricted User, false otherwise.
  final pulumi.Input<bool> restricted;
  /// Whether the login attempt succeeded or failed.
  final pulumi.Input<String> status;
  /// The username of the User that was logged into.
  final pulumi.Input<String> username;

  /// Creates a new [GetAccountLoginsLogin].
  /// [datetime] When the login was initiated.
  /// [id] The unique ID of this login object.
  /// [ip] The remote IP address that requested the login.
  /// [restricted] True if the User that was logged into was a restricted User, false otherwise.
  /// [status] Whether the login attempt succeeded or failed.
  /// [username] The username of the User that was logged into.
  const GetAccountLoginsLogin({
    required this.datetime,
    required this.id,
    required this.ip,
    required this.restricted,
    required this.status,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datetime': datetime,
      'id': id,
      'ip': ip,
      'restricted': restricted,
      'status': status,
      'username': username,
    };
  }

  factory GetAccountLoginsLogin.fromMap(Map<String, dynamic> map) {
    return GetAccountLoginsLogin(
      datetime: pulumi.Input.fromValue(map['datetime'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      restricted: pulumi.Input.fromValue(map['restricted'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

