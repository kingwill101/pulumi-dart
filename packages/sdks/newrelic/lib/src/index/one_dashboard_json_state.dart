// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OneDashboardJson resources.
class OneDashboardJsonState {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// The unique entity identifier of the dashboard in New Relic.
  final pulumi.Input<String>? guid;
  /// The JSON export of a dashboard. [The JSON can be exported from the UI](https://docs.newrelic.com/docs/query-your-data/explore-query-data/dashboards/dashboards-charts-import-export-data/#dashboards)
  final pulumi.Input<String>? json;
  /// The URL for viewing the dashboard.
  final pulumi.Input<String>? permalink;
  /// The date and time when the dashboard was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [OneDashboardJsonState].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [guid] The unique entity identifier of the dashboard in New Relic.
  /// [json] The JSON export of a dashboard. [The JSON can be exported from the UI](https://docs.newrelic.com/docs/query-your-data/explore-query-data/dashboards/dashboards-charts-import-export-data/#dashboards)
  /// [permalink] The URL for viewing the dashboard.
  /// [updatedAt] The date and time when the dashboard was last updated.
  OneDashboardJsonState({
    this.accountId,
    this.guid,
    this.json,
    this.permalink,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'guid': ?guid,
      'json': ?json,
      'permalink': ?permalink,
      'updatedAt': ?updatedAt,
    };
  }

  factory OneDashboardJsonState.fromMap(Map<String, dynamic> map) {
    return OneDashboardJsonState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      guid: map['guid'] == null ? null : (map['guid']! as String).input(),
      json: map['json'] == null ? null : (map['json']! as String).input(),
      permalink: map['permalink'] == null ? null : (map['permalink']! as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt']! as String).input(),
    );
  }
}

