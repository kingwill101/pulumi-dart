// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleMatchHeaderRangeMatch {
  /// End of the range (exclusive).
  final pulumi.Input<int> end;

  /// Start of the range (inclusive).
  final pulumi.Input<int> start;

  /// Creates a new [HttpRouteRuleMatchHeaderRangeMatch].
  /// [end] End of the range (exclusive).
  /// [start] Start of the range (inclusive).
  HttpRouteRuleMatchHeaderRangeMatch({required this.end, required this.start});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'end': end, 'start': start};
  }

  factory HttpRouteRuleMatchHeaderRangeMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatchHeaderRangeMatch(
      end: pulumi.Input.fromValue(map['end'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
    );
  }
}
