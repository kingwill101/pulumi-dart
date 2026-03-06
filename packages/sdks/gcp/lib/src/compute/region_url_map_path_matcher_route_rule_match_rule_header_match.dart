// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_route_rule_match_rule_header_match_range_match.dart';

class RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch {
  /// The value should exactly match contents of exactMatch. Only one of exactMatch,
  /// prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final pulumi.Input<String>? exactMatch;
  /// The name of the HTTP header to match. For matching against the HTTP request's
  /// authority, use a headerMatch with the header name ":authority". For matching a
  /// request's method, use the headerName ":method".
  final pulumi.Input<String> headerName;
  /// If set to false, the headerMatch is considered a match if the match criteria
  /// above are met. If set to true, the headerMatch is considered a match if the
  /// match criteria above are NOT met. Defaults to false.
  final pulumi.Input<bool>? invertMatch;
  /// The value of the header must start with the contents of prefixMatch. Only one of
  /// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
  /// must be set.
  final pulumi.Input<String>? prefixMatch;
  /// A header with the contents of headerName must exist. The match takes place
  /// whether or not the request's header has a value or not. Only one of exactMatch,
  /// prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch must be set.
  final pulumi.Input<bool>? presentMatch;
  /// The header value must be an integer and its value must be in the range specified
  /// in rangeMatch. If the header does not contain an integer, number or is empty,
  /// the match fails. For example for a range [-5, 0]
  /// * -3 will match
  /// * 0 will not match
  /// * 0.25 will not match
  /// * -3someString will not match.
  /// Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or
  /// rangeMatch must be set.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch>? rangeMatch;
  /// The value of the header must match the regular expression specified in
  /// regexMatch. For regular expression grammar, please see:
  /// en.cppreference.com/w/cpp/regex/ecmascript  For matching against a port
  /// specified in the HTTP request, use a headerMatch with headerName set to PORT and
  /// a regular expression that satisfies the RFC2616 Host header's port specifier.
  /// Only one of exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or
  /// rangeMatch must be set.
  final pulumi.Input<String>? regexMatch;
  /// The value of the header must end with the contents of suffixMatch. Only one of
  /// exactMatch, prefixMatch, suffixMatch, regexMatch, presentMatch or rangeMatch
  /// must be set.
  final pulumi.Input<String>? suffixMatch;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch].
  /// [exactMatch] The value should exactly match contents of exactMatch. Only one of exactMatch,
  /// [headerName] The name of the HTTP header to match. For matching against the HTTP request's
  /// [invertMatch] If set to false, the headerMatch is considered a match if the match criteria
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch. Only one of
  /// [presentMatch] A header with the contents of headerName must exist. The match takes place
  /// [rangeMatch] The header value must be an integer and its value must be in the range specified
  /// [regexMatch] The value of the header must match the regular expression specified in
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch. Only one of
  const RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch({
    this.exactMatch,
    required this.headerName,
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
      'headerName': headerName,
      'invertMatch': ?invertMatch,
      'prefixMatch': ?prefixMatch,
      'presentMatch': ?presentMatch,
      'rangeMatch': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch, Map<String, dynamic>>(rangeMatch, (value) => value.toMap()),
      'regexMatch': ?regexMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatch(
      exactMatch: (() { final guardedValue = map['exactMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      invertMatch: (() { final guardedValue = map['invertMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      presentMatch: (() { final guardedValue = map['presentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rangeMatch: (() { final guardedValue = map['rangeMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherRouteRuleMatchRuleHeaderMatchRangeMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suffixMatch: (() { final guardedValue = map['suffixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

