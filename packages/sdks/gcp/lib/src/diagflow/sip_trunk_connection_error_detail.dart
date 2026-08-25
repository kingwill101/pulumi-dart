// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SipTrunkConnectionErrorDetail {
  /// (Output)
  /// Output only. The error code.
  final pulumi.Input<String?>? code;
  /// (Output)
  /// Output only. The error message.
  final pulumi.Input<String?>? message;

  /// Creates a new [SipTrunkConnectionErrorDetail].
  /// [code] (Output)
  /// [message] (Output)
  const SipTrunkConnectionErrorDetail({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory SipTrunkConnectionErrorDetail.fromMap(Map<String, dynamic> map) {
    return SipTrunkConnectionErrorDetail(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
