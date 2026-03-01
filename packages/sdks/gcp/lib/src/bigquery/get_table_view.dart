// ignore_for_file: unused_element, unnecessary_cast


class GetTableView {
  /// A query that BigQuery executes when the view is referenced.
  final String query;
  /// Specifies whether to use BigQuery's legacy SQL for this view. If set to false, the view will use BigQuery's standard SQL
  final bool useLegacySql;

  /// Creates a new [GetTableView].
  /// [query] A query that BigQuery executes when the view is referenced.
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL for this view. If set to false, the view will use BigQuery's standard SQL
  GetTableView({
    required this.query,
    required this.useLegacySql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'useLegacySql': useLegacySql,
    };
  }

  factory GetTableView.fromMap(Map<String, dynamic> map) {
    return GetTableView(
      query: map['query'] as String,
      useLegacySql: map['useLegacySql'] as bool,
    );
  }
}

