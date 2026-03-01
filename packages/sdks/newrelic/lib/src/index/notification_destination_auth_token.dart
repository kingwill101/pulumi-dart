// ignore_for_file: unused_element, unnecessary_cast


class NotificationDestinationAuthToken {
  /// The prefix of the URL.
  final String? prefix;
  /// Specifies the token for integrating.
  final String token;

  /// Creates a new [NotificationDestinationAuthToken].
  /// [prefix] The prefix of the URL.
  /// [token] Specifies the token for integrating.
  NotificationDestinationAuthToken({
    this.prefix,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'token': token,
    };
  }

  factory NotificationDestinationAuthToken.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationAuthToken(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      token: map['token'] as String,
    );
  }
}

