// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rate_limits_result_match_header.dart';
import 'get_rate_limits_result_match_request.dart';
import 'get_rate_limits_result_match_response.dart';

class GetRateLimitsResultMatch {
  final pulumi.Input<List<GetRateLimitsResultMatchHeader>> headers;
  final pulumi.Input<GetRateLimitsResultMatchRequest> request;
  final pulumi.Input<GetRateLimitsResultMatchResponse> response;

  /// Creates a new [GetRateLimitsResultMatch].
  /// [headers] Required.
  /// [request] Required.
  /// [response] Required.
  const GetRateLimitsResultMatch({
    required this.headers,
    required this.request,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': pulumi.Input.mapInputValue<List<GetRateLimitsResultMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetRateLimitsResultMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'request': pulumi.Input.mapInputValue<GetRateLimitsResultMatchRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'response': pulumi.Input.mapInputValue<GetRateLimitsResultMatchResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory GetRateLimitsResultMatch.fromMap(Map<String, dynamic> map) {
    return GetRateLimitsResultMatch(
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRateLimitsResultMatchHeader>(map['headers']!, (value) => GetRateLimitsResultMatchHeader.fromMap((value as Map).cast<String, dynamic>()))),
      request: pulumi.Input.fromValue(GetRateLimitsResultMatchRequest.fromMap((map['request']! as Map).cast<String, dynamic>())),
      response: pulumi.Input.fromValue(GetRateLimitsResultMatchResponse.fromMap((map['response']! as Map).cast<String, dynamic>())),
    );
  }
}
