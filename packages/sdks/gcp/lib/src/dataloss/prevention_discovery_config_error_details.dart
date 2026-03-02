// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigErrorDetails {
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// A list of messages that carry the error details.
  final pulumi.Input<List<Map<String, String>>>? details;
  /// A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String>? message;

  /// Creates a new [PreventionDiscoveryConfigErrorDetails].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [details] A list of messages that carry the error details.
  /// [message] A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  PreventionDiscoveryConfigErrorDetails({
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

  factory PreventionDiscoveryConfigErrorDetails.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigErrorDetails(
      code: map['code'] == null ? null : (map['code']! as int).input(),
      details: map['details'] == null ? null : ((map['details']! as List).cast<Map<String, String>>()).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

