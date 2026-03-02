// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_one_dashboard_json_one_dashboard_json_args_doc}
/// The set of arguments for OneDashboardJson.
/// {@endtemplate}
/// {@macro pulumi_index_one_dashboard_json_one_dashboard_json_args_doc}
class OneDashboardJsonArgs {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// The JSON export of a dashboard. [The JSON can be exported from the UI](https://docs.newrelic.com/docs/query-your-data/explore-query-data/dashboards/dashboards-charts-import-export-data/#dashboards)
  final pulumi.Input<String> json;

  /// Creates a new [OneDashboardJsonArgs].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [json] The JSON export of a dashboard. [The JSON can be exported from the UI](https://docs.newrelic.com/docs/query-your-data/explore-query-data/dashboards/dashboards-charts-import-export-data/#dashboards)
  OneDashboardJsonArgs({
    this.accountId,
    required this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'json': json,
    };
  }

  factory OneDashboardJsonArgs.fromMap(Map<String, dynamic> map) {
    return OneDashboardJsonArgs(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      json: (map['json'] as String).input(),
    );
  }
}

