// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiscoveryClientError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// (Output)
  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  final pulumi.Input<List<Map<String, dynamic>>>? details;
  /// (Output)
  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String>? message;

  /// Creates a new [DiscoveryClientError].
  /// [code] (Output)
  /// [details] (Output)
  /// [message] (Output)
  const DiscoveryClientError({
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

  factory DiscoveryClientError.fromMap(Map<String, dynamic> map) {
    return DiscoveryClientError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
