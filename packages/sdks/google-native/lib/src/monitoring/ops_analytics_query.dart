// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Preview: A query that produces an aggregated response and supporting data. This is a preview feature and may be subject to change before final release.
class OpsAnalyticsQuery {
  /// A SQL query to fetch time series, category series, or numeric series data.
  final pulumi.Input<String>? sql;

  /// Creates a new [OpsAnalyticsQuery].
  /// [sql] A SQL query to fetch time series, category series, or numeric series data.
  OpsAnalyticsQuery({this.sql});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sql': ?sql};
  }

  factory OpsAnalyticsQuery.fromMap(Map<String, dynamic> map) {
    return OpsAnalyticsQuery(
      sql: (() {
        final guardedValue = map['sql'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
