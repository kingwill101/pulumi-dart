// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_message_code_memcache_v1beta2.dart';

class InstanceMessageMemcacheV1beta2 {
  /// A code that correspond to one type of user-facing message.
  final pulumi.Input<InstanceMessageCodeMemcacheV1beta2>? code;
  /// Message on memcached instance which will be exposed to users.
  final pulumi.Input<String>? message;

  /// Creates a new [InstanceMessageMemcacheV1beta2].
  /// [code] A code that correspond to one type of user-facing message.
  /// [message] Message on memcached instance which will be exposed to users.
  const InstanceMessageMemcacheV1beta2({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<InstanceMessageCodeMemcacheV1beta2, String>(code, (value) => value.wireValue),
      'message': ?message,
    };
  }

  factory InstanceMessageMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return InstanceMessageMemcacheV1beta2(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMessageCodeMemcacheV1beta2.fromValue(guardedValue as String)); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

