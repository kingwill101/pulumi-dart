// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceConnectionPolicyPscConnectionError {
  /// The status code, which should be an enum value of [google.rpc.Code][].
  final pulumi.Input<int>? code;
  /// (Output)
  /// A list of messages that carry the error details.
  final pulumi.Input<List<Map<String, String>>>? details;
  /// A developer-facing error message.
  final pulumi.Input<String>? message;

  /// Creates a new [ServiceConnectionPolicyPscConnectionError].
  /// [code] The status code, which should be an enum value of [google.rpc.Code][].
  /// [details] (Output)
  /// [message] A developer-facing error message.
  ServiceConnectionPolicyPscConnectionError({
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

  factory ServiceConnectionPolicyPscConnectionError.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyPscConnectionError(
      code: map['code'] == null ? null : (map['code'] as int).input(),
      details: map['details'] == null ? null : ((map['details'] as List).cast<Map<String, String>>()).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

