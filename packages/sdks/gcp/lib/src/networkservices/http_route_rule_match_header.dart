// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_match_header_range_match.dart';

class HttpRouteRuleMatchHeader {
  /// The value of the header should match exactly the content of exactMatch.
  final pulumi.Input<String>? exactMatch;
  /// The name of the HTTP header to match against.
  final pulumi.Input<String>? header;
  /// If specified, the match result will be inverted before checking. Default value is set to false.
  final pulumi.Input<bool>? invertMatch;
  /// The value of the header must start with the contents of prefixMatch.
  final pulumi.Input<String>? prefixMatch;
  /// A header with headerName must exist. The match takes place whether or not the header has a value.
  final pulumi.Input<bool>? presentMatch;
  /// If specified, the rule will match if the request header value is within the range.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleMatchHeaderRangeMatch>? rangeMatch;
  /// The value of the header must match the regular expression specified in regexMatch.
  final pulumi.Input<String>? regexMatch;
  /// The value of the header must end with the contents of suffixMatch.
  final pulumi.Input<String>? suffixMatch;

  /// Creates a new [HttpRouteRuleMatchHeader].
  /// [exactMatch] The value of the header should match exactly the content of exactMatch.
  /// [header] The name of the HTTP header to match against.
  /// [invertMatch] If specified, the match result will be inverted before checking. Default value is set to false.
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch.
  /// [presentMatch] A header with headerName must exist. The match takes place whether or not the header has a value.
  /// [rangeMatch] If specified, the rule will match if the request header value is within the range.
  /// [regexMatch] The value of the header must match the regular expression specified in regexMatch.
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch.
  const HttpRouteRuleMatchHeader({
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
      'rangeMatch': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleMatchHeaderRangeMatch, Map<String, dynamic>>(rangeMatch, (value) => value.toMap()),
      'regexMatch': ?regexMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory HttpRouteRuleMatchHeader.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchHeader(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invertMatch: (() { final guardedValue = map['invertMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presentMatch: (() { final guardedValue = map['presentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rangeMatch: (() { final guardedValue = map['rangeMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteRuleMatchHeaderRangeMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffixMatch: (() { final guardedValue = map['suffixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
