// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetFunnelNrqlQuery {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  final pulumi.Input<String> query;

  /// Creates a new [OneDashboardPageWidgetFunnelNrqlQuery].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [query] (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  OneDashboardPageWidgetFunnelNrqlQuery({
    this.accountId,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'query': query,
    };
  }

  factory OneDashboardPageWidgetFunnelNrqlQuery.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetFunnelNrqlQuery(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      query: (map['query'] as String).input(),
    );
  }
}

