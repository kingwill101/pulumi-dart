// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMessageResponse {
  /// A code that correspond to one type of user-facing message.
  final pulumi.Input<String> code;
  /// Message on memcached instance which will be exposed to users.
  final pulumi.Input<String> message;

  /// Creates a new [InstanceMessageResponse].
  /// [code] A code that correspond to one type of user-facing message.
  /// [message] Message on memcached instance which will be exposed to users.
  const InstanceMessageResponse({
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
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
