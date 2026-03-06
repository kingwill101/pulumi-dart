// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match_integer_range_networkservices_v1beta1.dart';

/// Specifies how to select a route rule based on HTTP request headers.
class HttpRouteHeaderMatchNetworkservicesV1beta1 {
  /// The value of the header should match exactly the content of exact_match.
  final pulumi.Input<String>? exactMatch;
  /// The name of the HTTP header to match against.
  final pulumi.Input<String>? header;
  /// If specified, the match result will be inverted before checking. Default value is set to false.
  final pulumi.Input<bool>? invertMatch;
  /// The value of the header must start with the contents of prefix_match.
  final pulumi.Input<String>? prefixMatch;
  /// A header with header_name must exist. The match takes place whether or not the header has a value.
  final pulumi.Input<bool>? presentMatch;
  /// If specified, the rule will match if the request header value is within the range.
  final pulumi.Input<HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1>? rangeMatch;
  /// The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String>? regexMatch;
  /// The value of the header must end with the contents of suffix_match.
  final pulumi.Input<String>? suffixMatch;

  /// Creates a new [HttpRouteHeaderMatchNetworkservicesV1beta1].
  /// [exactMatch] The value of the header should match exactly the content of exact_match.
  /// [header] The name of the HTTP header to match against.
  /// [invertMatch] If specified, the match result will be inverted before checking. Default value is set to false.
  /// [prefixMatch] The value of the header must start with the contents of prefix_match.
  /// [presentMatch] A header with header_name must exist. The match takes place whether or not the header has a value.
  /// [rangeMatch] If specified, the rule will match if the request header value is within the range.
  /// [regexMatch] The value of the header must match the regular expression specified in regex_match. For regular expression grammar, please see: https://github.com/google/re2/wiki/Syntax
  /// [suffixMatch] The value of the header must end with the contents of suffix_match.
  const HttpRouteHeaderMatchNetworkservicesV1beta1({
    this.exactMatch,
    this.header,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.rangeMatch,
    this.regexMatch,
    this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'header': ?header,
      'invertMatch': ?invertMatch,
      'prefixMatch': ?prefixMatch,
      'presentMatch': ?presentMatch,
      'rangeMatch': ?pulumi.Input.mapOptionalInputValue<HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1, Map<String, dynamic>>(rangeMatch, (value) => value.toMap()),
      'regexMatch': ?regexMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory HttpRouteHeaderMatchNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteHeaderMatchNetworkservicesV1beta1(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertMatch: (() { final guardedValue = map['invertMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presentMatch: (() { final guardedValue = map['presentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rangeMatch: (() { final guardedValue = map['rangeMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteHeaderMatchIntegerRangeNetworkservicesV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffixMatch: (() { final guardedValue = map['suffixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

