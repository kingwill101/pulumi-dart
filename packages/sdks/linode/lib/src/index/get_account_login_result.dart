// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountLogin.
class GetAccountLoginResult {
  /// When the login was initiated.
  final String datetime;
  /// The unique ID of this login object.
  final int id;
  /// The remote IP address that requested the login.
  final String ip;
  /// True if the User that was logged into was a restricted User, false otherwise.
  final bool restricted;
  final String status;
  /// The username of the User that was logged into.
  final String username;

  /// Creates a new [GetAccountLoginResult].
  /// [datetime] When the login was initiated.
  /// [id] The unique ID of this login object.
  /// [ip] The remote IP address that requested the login.
  /// [restricted] True if the User that was logged into was a restricted User, false otherwise.
  /// [status] Required.
  /// [username] The username of the User that was logged into.
  const GetAccountLoginResult({
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

  factory GetAccountLoginResult.fromMap(Map<String, dynamic> map) {
    return GetAccountLoginResult(
      datetime: map['datetime'] as String,
      id: map['id'] as int,
      ip: map['ip'] as String,
      restricted: map['restricted'] as bool,
      status: map['status'] as String,
      username: map['username'] as String,
    );
  }
}

