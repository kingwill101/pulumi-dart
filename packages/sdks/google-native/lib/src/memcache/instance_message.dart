// ignore_for_file: unused_element, unnecessary_cast

import 'instance_message_code.dart';

class InstanceMessage {
  /// A code that correspond to one type of user-facing message.
  final InstanceMessageCode? code;
  /// Message on memcached instance which will be exposed to users.
  final String? message;

  /// Creates a new [InstanceMessage].
  /// [code] A code that correspond to one type of user-facing message.
  /// [message] Message on memcached instance which will be exposed to users.
  InstanceMessage({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code == null ? null : code!.value,
      'message': ?message,
    };
  }

  factory InstanceMessage.fromMap(Map<String, dynamic> map) {
    return InstanceMessage(
      code: map['code'] == null ? null : InstanceMessageCode.fromValue(map['code'] as String),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

