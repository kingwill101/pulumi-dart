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
  HttpRouteRuleMatchHeader({
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
      exactMatch: map['exactMatch'] == null ? null : (map['exactMatch']! as String).input(),
      header: map['header'] == null ? null : (map['header']! as String).input(),
      invertMatch: map['invertMatch'] == null ? null : (map['invertMatch']! as bool).input(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch']! as String).input(),
      presentMatch: map['presentMatch'] == null ? null : (map['presentMatch']! as bool).input(),
      rangeMatch: map['rangeMatch'] == null ? null : (HttpRouteRuleMatchHeaderRangeMatch.fromMap((map['rangeMatch']! as Map).cast<String, dynamic>())).input(),
      regexMatch: map['regexMatch'] == null ? null : (map['regexMatch']! as String).input(),
      suffixMatch: map['suffixMatch'] == null ? null : (map['suffixMatch']! as String).input(),
    );
  }
}

