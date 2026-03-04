// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page.dart';
import 'one_dashboard_variable.dart';

/// {@template pulumi_index_one_dashboard_one_dashboard_args_doc}
/// The set of arguments for OneDashboard.
/// {@endtemplate}
/// {@macro pulumi_index_one_dashboard_one_dashboard_args_doc}
class OneDashboardArgs {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;

  /// Brief text describing the dashboard.
  final pulumi.Input<String>? description;

  /// The title of the dashboard.
  final pulumi.Input<String>? name;

  /// A nested block that describes a page. See Nested page blocks below for details.
  final pulumi.Input<List<OneDashboardPage>> pages;

  /// Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`.  Defaults to `public_read_only`.
  final pulumi.Input<String>? permissions;

  /// A nested block that describes a dashboard-local variable. See Nested variable blocks below for details.
  final pulumi.Input<List<OneDashboardVariable>>? variables;

  /// Creates a new [OneDashboardArgs].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [description] Brief text describing the dashboard.
  /// [name] The title of the dashboard.
  /// [pages] A nested block that describes a page. See Nested page blocks below for details.
  /// [permissions] Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`.  Defaults to `public_read_only`.
  /// [variables] A nested block that describes a dashboard-local variable. See Nested variable blocks below for details.
  OneDashboardArgs({
    this.accountId,
    this.description,
    this.name,
    required this.pages,
    this.permissions,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'name': ?name,
      'pages':
          pulumi.Input.mapInputValue<
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

  factory OneDashboardArgs.fromMap(Map<String, dynamic> map) {
    return OneDashboardArgs(
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OneDashboardPage>(
          map['pages']!,
          (value) =>
              OneDashboardPage.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
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
