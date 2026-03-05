// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match_integer_range_response.dart';

/// Specifies how to select a route rule based on HTTP request headers.
class HttpRouteHeaderMatchResponse {
  /// The value of the header should match exactly the content of exact_match.
  final pulumi.Input<String> exactMatch;
  /// The name of the HTTP header to match against.
  final pulumi.Input<String> header;
  /// If specified, the match result will be inverted before checking. Default value is set to false.
  final pulumi.Input<bool> invertMatch;
  /// The value of the header must start with the contents of prefix_match.
  final pulumi.Input<String> prefixMatch;
  /// A header with header_name must exist. The match takes place whether or not the header has a value.
  final pulumi.Input<bool> presentMatch;
  /// If specified, the rule will match if the request header value is within the range.
  final pulumi.Input<HttpRouteHeaderMatchIntegerRangeResponse> rangeMatch;
  /// The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String> regexMatch;
  /// The value of the header must end with the contents of suffix_match.
  final pulumi.Input<String> suffixMatch;

  /// Creates a new [HttpRouteHeaderMatchResponse].
  /// [exactMatch] The value of the header should match exactly the content of exact_match.
  /// [header] The name of the HTTP header to match against.
  /// [invertMatch] If specified, the match result will be inverted before checking. Default value is set to false.
  /// [prefixMatch] The value of the header must start with the contents of prefix_match.
  /// [presentMatch] A header with header_name must exist. The match takes place whether or not the header has a value.
  /// [rangeMatch] If specified, the rule will match if the request header value is within the range.
  /// [regexMatch] The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  /// [suffixMatch] The value of the header must end with the contents of suffix_match.
  HttpRouteHeaderMatchResponse({
    required this.exactMatch,
    required this.header,
    required this.invertMatch,
    required this.prefixMatch,
    required this.presentMatch,
    required this.rangeMatch,
    required this.regexMatch,
    required this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': exactMatch,
      'header': header,
      'invertMatch': invertMatch,
      'prefixMatch': prefixMatch,
      'presentMatch': presentMatch,
      'rangeMatch': pulumi.Input.mapInputValue<HttpRouteHeaderMatchIntegerRangeResponse, Map<String, dynamic>>(rangeMatch, (value) => value.toMap()),
      'regexMatch': regexMatch,
      'suffixMatch': suffixMatch,
    };
  }

  factory HttpRouteHeaderMatchResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchResponse(
      exactMatch: pulumi.Input.fromValue(map['exactMatch'] as String),
      header: pulumi.Input.fromValue(map['header'] as String),
      invertMatch: pulumi.Input.fromValue(map['invertMatch'] as bool),
      prefixMatch: pulumi.Input.fromValue(map['prefixMatch'] as String),
      presentMatch: pulumi.Input.fromValue(map['presentMatch'] as bool),
      rangeMatch: pulumi.Input.fromValue(HttpRouteHeaderMatchIntegerRangeResponse.fromMap((map['rangeMatch']! as Map).cast<String, dynamic>())),
      regexMatch: pulumi.Input.fromValue(map['regexMatch'] as String),
      suffixMatch: pulumi.Input.fromValue(map['suffixMatch'] as String),
    );
  }
}

