// ignore_for_file: unused_element, unnecessary_cast


class GetAccountLoginsLogin {
  /// When the login was initiated.
  final String datetime;
  /// The unique ID of this login object.
  final int id;
  /// The remote IP address that requested the login.
  final String ip;
  /// True if the User that was logged into was a restricted User, false otherwise.
  final bool restricted;
  /// Whether the login attempt succeeded or failed.
  final String status;
  /// The username of the User that was logged into.
  final String username;

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
      datetime: map['datetime'] as String,
      id: map['id'] as int,
      ip: map['ip'] as String,
      restricted: map['restricted'] as bool,
      status: map['status'] as String,
      username: map['username'] as String,
    );
  }
}

