// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rate_limit_match_header.dart';
import 'rate_limit_match_request.dart';
import 'rate_limit_match_response.dart';

class RateLimitMatch {
  final pulumi.Input<List<RateLimitMatchHeader>?>? headers;
  final pulumi.Input<RateLimitMatchRequest?>? request;
  final pulumi.Input<RateLimitMatchResponse?>? response;

  /// Creates a new [RateLimitMatch].
  /// [headers] Optional.
  /// [request] Optional.
  /// [response] Optional.
  const RateLimitMatch({
    this.headers,
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<RateLimitMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<RateLimitMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'request': ?pulumi.Input.mapOptionalInputValue<RateLimitMatchRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'response': ?pulumi.Input.mapOptionalInputValue<RateLimitMatchResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory RateLimitMatch.fromMap(Map<String, dynamic> map) {
    return RateLimitMatch(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RateLimitMatchHeader>(guardedValue, (value) => RateLimitMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitMatchRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RateLimitMatchResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
