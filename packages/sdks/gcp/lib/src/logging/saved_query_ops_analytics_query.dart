// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SavedQueryOpsAnalyticsQuery {
  /// A logs analytics SQL query, which generally follows BigQuery format.
  final pulumi.Input<String> sqlQueryText;

  /// Creates a new [SavedQueryOpsAnalyticsQuery].
  /// [sqlQueryText] A logs analytics SQL query, which generally follows BigQuery format.
  const SavedQueryOpsAnalyticsQuery({
    required this.sqlQueryText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlQueryText': sqlQueryText,
    };
  }

  factory SavedQueryOpsAnalyticsQuery.fromMap(Map<String, dynamic> map) {
    return SavedQueryOpsAnalyticsQuery(
      sqlQueryText: pulumi.Input.fromValue(map['sqlQueryText'] as String),
    );
  }
}
