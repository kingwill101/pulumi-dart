// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostingCustomDomainIssue {
  /// The status code, which should be an enum value of `google.rpc.Code`
  final pulumi.Input<int>? code;
  /// A list of messages that carry the error details.
  final pulumi.Input<String>? details;
  /// Error message
  final pulumi.Input<String>? message;

  /// Creates a new [HostingCustomDomainIssue].
  /// [code] The status code, which should be an enum value of `google.rpc.Code`
  /// [details] A list of messages that carry the error details.
  /// [message] Error message
  const HostingCustomDomainIssue({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details,
      'message': ?message,
    };
  }

  factory HostingCustomDomainIssue.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainIssue(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
