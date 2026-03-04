// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectNotificationConfigStreamingConfig {
  /// Expression that defines the filter to apply across create/update
  /// events of assets or findings as specified by the event type. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form &lt;field&gt; &lt;operator&gt; &lt;value&gt; and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * &gt;, &lt;, &gt;=, &lt;= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final pulumi.Input<String> filter;

  /// Creates a new [ProjectNotificationConfigStreamingConfig].
  /// [filter] Expression that defines the filter to apply across create/update
  ProjectNotificationConfigStreamingConfig({required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter};
  }

  factory ProjectNotificationConfigStreamingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectNotificationConfigStreamingConfig(
      filter: pulumi.Input.fromValue(map['filter'] as String),
    );
  }
}
