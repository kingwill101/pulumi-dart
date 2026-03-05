// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_message_code.dart';

class InstanceMessage {
  /// A code that correspond to one type of user-facing message.
  final pulumi.Input<InstanceMessageCode>? code;
  /// Message on memcached instance which will be exposed to users.
  final pulumi.Input<String>? message;

  /// Creates a new [InstanceMessage].
  /// [code] A code that correspond to one type of user-facing message.
  /// [message] Message on memcached instance which will be exposed to users.
  InstanceMessage({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<InstanceMessageCode, String>(code, (value) => value.wireValue),
      'message': ?message,
    };
  }

  factory InstanceMessage.fromMap(Map<String, dynamic> map) {
    return InstanceMessage(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMessageCode.fromValue(guardedValue as String)); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

