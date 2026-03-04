// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page.dart';
import 'one_dashboard_variable.dart';

/// Input properties used for looking up and filtering OneDashboard resources.
class OneDashboardState {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;

  /// Brief text describing the dashboard.
  final pulumi.Input<String>? description;

  /// The unique entity identifier of the dashboard page in New Relic.
  final pulumi.Input<String>? guid;

  /// The title of the dashboard.
  final pulumi.Input<String>? name;

  /// A nested block that describes a page. See Nested page blocks below for details.
  final pulumi.Input<List<OneDashboardPage>>? pages;

  /// The URL for viewing the dashboard.
  final pulumi.Input<String>? permalink;

  /// Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`.  Defaults to `public_read_only`.
  final pulumi.Input<String>? permissions;

  /// A nested block that describes a dashboard-local variable. See Nested variable blocks below for details.
  final pulumi.Input<List<OneDashboardVariable>>? variables;

  /// Creates a new [OneDashboardState].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [description] Brief text describing the dashboard.
  /// [guid] The unique entity identifier of the dashboard page in New Relic.
  /// [name] The title of the dashboard.
  /// [pages] A nested block that describes a page. See Nested page blocks below for details.
  /// [permalink] The URL for viewing the dashboard.
  /// [permissions] Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`.  Defaults to `public_read_only`.
  /// [variables] A nested block that describes a dashboard-local variable. See Nested variable blocks below for details.
  OneDashboardState({
    this.accountId,
    this.description,
    this.guid,
    this.name,
    this.pages,
    this.permalink,
    this.permissions,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'guid': ?guid,
      'name': ?name,
      'pages':
          ?pulumi.Input.mapOptionalInputValue<
            List<OneDashboardPage>,
            List<Map<String, dynamic>>
          >(
            pages,
            (value) =>
                pulumi.Input.encodeList<OneDashboardPage, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'permalink': ?permalink,
      'permissions': ?permissions,
      'variables':
          ?pulumi.Input.mapOptionalInputValue<
            List<OneDashboardVariable>,
            List<Map<String, dynamic>>
          >(
            variables,
            (value) =>
                pulumi.Input.encodeList<
                  OneDashboardVariable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OneDashboardState.fromMap(Map<String, dynamic> map) {
    return OneDashboardState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      guid: (() {
        final guardedValue = map['guid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pages: (() {
        final guardedValue = map['pages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OneDashboardPage>(
            guardedValue,
            (value) => OneDashboardPage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      permalink: (() {
        final guardedValue = map['permalink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      variables: (() {
        final guardedValue = map['variables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OneDashboardVariable>(
            guardedValue,
            (value) => OneDashboardVariable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
