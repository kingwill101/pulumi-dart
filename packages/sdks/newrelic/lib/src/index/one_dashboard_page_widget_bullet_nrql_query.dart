// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetBulletNrqlQuery {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final String? accountId;
  /// (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  final String query;

  /// Creates a new [OneDashboardPageWidgetBulletNrqlQuery].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [query] (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  OneDashboardPageWidgetBulletNrqlQuery({
    this.accountId,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'query': query,
    };
  }

  factory OneDashboardPageWidgetBulletNrqlQuery.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBulletNrqlQuery(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      query: map['query'] as String,
    );
  }
}

