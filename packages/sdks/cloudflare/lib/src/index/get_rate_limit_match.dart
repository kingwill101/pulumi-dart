// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rate_limit_match_header.dart';
import 'get_rate_limit_match_request.dart';
import 'get_rate_limit_match_response.dart';

class GetRateLimitMatch {
  final pulumi.Input<List<GetRateLimitMatchHeader>> headers;
  final pulumi.Input<GetRateLimitMatchRequest> request;
  final pulumi.Input<GetRateLimitMatchResponse> response;

  /// Creates a new [GetRateLimitMatch].
  /// [headers] Required.
  /// [request] Required.
  /// [response] Required.
  const GetRateLimitMatch({
    required this.headers,
    required this.request,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': pulumi.Input.mapInputValue<List<GetRateLimitMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetRateLimitMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'request': pulumi.Input.mapInputValue<GetRateLimitMatchRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'response': pulumi.Input.mapInputValue<GetRateLimitMatchResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory GetRateLimitMatch.fromMap(Map<String, dynamic> map) {
    return GetRateLimitMatch(
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRateLimitMatchHeader>(map['headers']!, (value) => GetRateLimitMatchHeader.fromMap((value as Map).cast<String, dynamic>()))),
      request: pulumi.Input.fromValue(GetRateLimitMatchRequest.fromMap((map['request']! as Map).cast<String, dynamic>())),
      response: pulumi.Input.fromValue(GetRateLimitMatchResponse.fromMap((map['response']! as Map).cast<String, dynamic>())),
    );
  }
}
