// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardVariableNrqlQuery {
  /// (Required) List of account IDs such as `[12345, 67890]`.
  final List<String>? accountIds;
  /// (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  final String query;

  /// Creates a new [OneDashboardVariableNrqlQuery].
  /// [accountIds] (Required) List of account IDs such as `[12345, 67890]`.
  /// [query] (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  OneDashboardVariableNrqlQuery({
    this.accountIds,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIds': ?accountIds,
      'query': query,
    };
  }

  factory OneDashboardVariableNrqlQuery.fromMap(Map<String, dynamic> map) {
    return OneDashboardVariableNrqlQuery(
      accountIds: map['accountIds'] == null ? null : (map['accountIds'] as List).cast<String>(),
      query: map['query'] as String,
    );
  }
}

