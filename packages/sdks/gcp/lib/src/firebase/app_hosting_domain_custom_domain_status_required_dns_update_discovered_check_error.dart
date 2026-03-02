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
  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredCheckError({
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
      code: map['code'] == null ? null : (map['code']! as int).input(),
      details: map['details'] == null ? null : (map['details']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

