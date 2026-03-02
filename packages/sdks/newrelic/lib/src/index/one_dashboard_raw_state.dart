// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_raw_page.dart';

/// Input properties used for looking up and filtering OneDashboardRaw resources.
class OneDashboardRawState {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// Brief text describing the dashboard.
  final pulumi.Input<String>? description;
  /// The unique entity identifier of the dashboard page in New Relic.
  final pulumi.Input<String>? guid;
  /// The title of the dashboard.
  final pulumi.Input<String>? name;
  /// A nested block that describes a page. See Nested page blocks below for details.
  final pulumi.Input<List<OneDashboardRawPage>>? pages;
  /// The URL for viewing the dashboard.
  final pulumi.Input<String>? permalink;
  /// Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`. Defaults to `public_read_only`.
  final pulumi.Input<String>? permissions;

  /// Creates a new [OneDashboardRawState].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [description] Brief text describing the dashboard.
  /// [guid] The unique entity identifier of the dashboard page in New Relic.
  /// [name] The title of the dashboard.
  /// [pages] A nested block that describes a page. See Nested page blocks below for details.
  /// [permalink] The URL for viewing the dashboard.
  /// [permissions] Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`. Defaults to `public_read_only`.
  OneDashboardRawState({
    this.accountId,
    this.description,
    this.guid,
    this.name,
    this.pages,
    this.permalink,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'guid': ?guid,
      'name': ?name,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardRawPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<OneDashboardRawPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permalink': ?permalink,
      'permissions': ?permissions,
    };
  }

  factory OneDashboardRawState.fromMap(Map<String, dynamic> map) {
    return OneDashboardRawState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      guid: map['guid'] == null ? null : (map['guid'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pages: map['pages'] == null ? null : (pulumi.Input.decodeList<OneDashboardRawPage>(map['pages'], (value) => OneDashboardRawPage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      permalink: map['permalink'] == null ? null : (map['permalink'] as String).input(),
      permissions: map['permissions'] == null ? null : (map['permissions'] as String).input(),
    );
  }
}

