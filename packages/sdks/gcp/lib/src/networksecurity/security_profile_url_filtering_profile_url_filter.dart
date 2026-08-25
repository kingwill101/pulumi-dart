// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileUrlFilteringProfileUrlFilter {
  /// The action to take when the filter is applied.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String> filteringAction;
  /// The priority of the filter within the URL filtering profile.
  /// Must be an integer from 0 and 2147483647, inclusive. Lower integers indicate higher priorities.
  /// The priority of a filter must be unique within a URL filtering profile.
  final pulumi.Input<int> priority;
  /// A list of domain matcher strings that a domain name gets compared with to determine if the filter is applicable.
  /// A domain name must match with at least one of the strings in the list for a filter to be applicable.
  final pulumi.Input<List<String>?>? urls;

  /// Creates a new [SecurityProfileUrlFilteringProfileUrlFilter].
  /// [filteringAction] The action to take when the filter is applied.
  /// [priority] The priority of the filter within the URL filtering profile.
  /// [urls] A list of domain matcher strings that a domain name gets compared with to determine if the filter is applicable.
  const SecurityProfileUrlFilteringProfileUrlFilter({
    required this.filteringAction,
    required this.priority,
    this.urls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringAction': filteringAction,
      'priority': priority,
      'urls': ?urls,
    };
  }

  factory SecurityProfileUrlFilteringProfileUrlFilter.fromMap(Map<String, dynamic> map) {
    return SecurityProfileUrlFilteringProfileUrlFilter(
      filteringAction: pulumi.Input.fromValue(map['filteringAction'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
