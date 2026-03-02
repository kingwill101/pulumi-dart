// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch {
  /// The value of the header should exactly match contents of exactMatch.
  final pulumi.Input<String>? exactMatch;
  /// The header name to match on.
  final pulumi.Input<String> headerName;
  /// If set to false (default), the headerMatch is considered a match if the match criteria above are met.
  /// If set to true, the headerMatch is considered a match if the match criteria above are NOT met.
  final pulumi.Input<bool>? invertMatch;
  /// The value of the header must start with the contents of prefixMatch.
  final pulumi.Input<String>? prefixMatch;
  /// A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value.
  final pulumi.Input<bool>? presentMatch;
  /// The value of the header must end with the contents of suffixMatch.
  final pulumi.Input<String>? suffixMatch;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch].
  /// [exactMatch] The value of the header should exactly match contents of exactMatch.
  /// [headerName] The header name to match on.
  /// [invertMatch] If set to false (default), the headerMatch is considered a match if the match criteria above are met.
  /// [prefixMatch] The value of the header must start with the contents of prefixMatch.
  /// [presentMatch] A header with the contents of headerName must exist. The match takes place whether or not the request's header has a value.
  /// [suffixMatch] The value of the header must end with the contents of suffixMatch.
  EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch({
    this.exactMatch,
    required this.headerName,
    this.invertMatch,
    this.prefixMatch,
    this.presentMatch,
    this.suffixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactMatch': ?exactMatch,
      'headerName': headerName,
      'invertMatch': ?invertMatch,
      'prefixMatch': ?prefixMatch,
      'presentMatch': ?presentMatch,
      'suffixMatch': ?suffixMatch,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRuleHeaderMatch(
      exactMatch: map['exactMatch'] == null ? null : (map['exactMatch']! as String).input(),
      headerName: (map['headerName'] as String).input(),
      invertMatch: map['invertMatch'] == null ? null : (map['invertMatch']! as bool).input(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch']! as String).input(),
      presentMatch: map['presentMatch'] == null ? null : (map['presentMatch']! as bool).input(),
      suffixMatch: map['suffixMatch'] == null ? null : (map['suffixMatch']! as String).input(),
    );
  }
}

