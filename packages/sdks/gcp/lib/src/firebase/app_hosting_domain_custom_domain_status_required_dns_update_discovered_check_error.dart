// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// (Output)
  /// A list of messages that carry the error details.
  final pulumi.Input<String>? details;
  /// (Output)
  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String>? message;

  /// Creates a new [AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  const AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError({
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

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
