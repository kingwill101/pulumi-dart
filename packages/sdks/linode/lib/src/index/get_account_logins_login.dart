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
  GetAccountLoginsLogin({
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
      datetime: (map['datetime'] as String).input(),
      id: (map['id'] as int).input(),
      ip: (map['ip'] as String).input(),
      restricted: (map['restricted'] as bool).input(),
      status: (map['status'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

