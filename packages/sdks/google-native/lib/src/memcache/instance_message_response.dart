// ignore_for_file: unused_element, unnecessary_cast


class InstanceMessageResponse {
  /// A code that correspond to one type of user-facing message.
  final String code;
  /// Message on memcached instance which will be exposed to users.
  final String message;

  /// Creates a new [InstanceMessageResponse].
  /// [code] A code that correspond to one type of user-facing message.
  /// [message] Message on memcached instance which will be exposed to users.
  InstanceMessageResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory InstanceMessageResponse.fromMap(Map<String, dynamic> map) {
    return InstanceMessageResponse(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}

