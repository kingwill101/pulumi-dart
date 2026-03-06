// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_raw_page.dart';

/// {@template pulumi_index_one_dashboard_raw_one_dashboard_raw_args_doc}
/// The set of arguments for OneDashboardRaw.
/// {@endtemplate}
/// {@macro pulumi_index_one_dashboard_raw_one_dashboard_raw_args_doc}
class OneDashboardRawArgs {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// Brief text describing the dashboard.
  final pulumi.Input<String>? description;
  /// The title of the dashboard.
  final pulumi.Input<String>? name;
  /// A nested block that describes a page. See Nested page blocks below for details.
  final pulumi.Input<List<OneDashboardRawPage>> pages;
  /// Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`. Defaults to `public_read_only`.
  final pulumi.Input<String>? permissions;

  /// Creates a new [OneDashboardRawArgs].
  /// [accountId] Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  /// [description] Brief text describing the dashboard.
  /// [name] The title of the dashboard.
  /// [pages] A nested block that describes a page. See Nested page blocks below for details.
  /// [permissions] Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`. Defaults to `public_read_only`.
  const OneDashboardRawArgs({
    this.accountId,
    this.description,
    this.name,
    required this.pages,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'name': ?name,
      'pages': pulumi.Input.mapInputValue<List<OneDashboardRawPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<OneDashboardRawPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissions': ?permissions,
    };
  }

  factory OneDashboardRawArgs.fromMap(Map<String, dynamic> map) {
    return OneDashboardRawArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pages: pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardRawPage>(map['pages']!, (value) => OneDashboardRawPage.fromMap((value as Map).cast<String, dynamic>()))),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

