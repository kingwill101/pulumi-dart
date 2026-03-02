// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetLineNrqlQuery {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  final pulumi.Input<String> query;

  /// Creates a new [OneDashboardPageWidgetLineNrqlQuery].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [query] (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  OneDashboardPageWidgetLineNrqlQuery({
    this.accountId,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'query': query,
    };
  }

  factory OneDashboardPageWidgetLineNrqlQuery.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLineNrqlQuery(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      query: (map['query'] as String).input(),
    );
  }
}

