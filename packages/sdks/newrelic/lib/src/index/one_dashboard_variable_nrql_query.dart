// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardVariableNrqlQuery {
  /// (Required) List of account IDs such as `[12345, 67890]`.
  final pulumi.Input<List<String>>? accountIds;
  /// (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  final pulumi.Input<String> query;

  /// Creates a new [OneDashboardVariableNrqlQuery].
  /// [accountIds] (Required) List of account IDs such as `[12345, 67890]`.
  /// [query] (Required) Valid NRQL query string. See [Writing NRQL Queries](https://docs.newrelic.com/docs/insights/nrql-new-relic-query-language/using-nrql/introduction-nrql) for help.
  const OneDashboardVariableNrqlQuery({
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
      accountIds: (() { final guardedValue = map['accountIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      query: pulumi.Input.fromValue(map['query'] as String),
    );
  }
}

