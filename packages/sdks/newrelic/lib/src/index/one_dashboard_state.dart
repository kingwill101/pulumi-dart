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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? guid,
    pulumi.Output<String>? name,
    pulumi.Output<List<OneDashboardPage>>? pages,
    pulumi.Output<String>? permalink,
    pulumi.Output<String>? permissions,
    pulumi.Output<List<OneDashboardVariable>>? variables,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      name = pulumi.Input.asOptionalInput<String>(name),
      pages = pulumi.Input.asOptionalInput<List<OneDashboardPage>>(pages),
      permalink = pulumi.Input.asOptionalInput<String>(permalink),
      permissions = pulumi.Input.asOptionalInput<String>(permissions),
      variables = pulumi.Input.asOptionalInput<List<OneDashboardVariable>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'guid': ?guid,
      'name': ?name,
      'pages': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPage>, List<Map<String, dynamic>>>(pages, (value) => pulumi.Input.encodeList<OneDashboardPage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permalink': ?permalink,
      'permissions': ?permissions,
      'variables': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardVariable>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<OneDashboardVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OneDashboardState.fromMap(Map<String, dynamic> map) {
    return OneDashboardState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pages: map['pages'] == null ? null : pulumi.Output.create<List<OneDashboardPage>>(pulumi.Input.decodeList<OneDashboardPage>(map['pages'], (value) => OneDashboardPage.fromMap((value as Map).cast<String, dynamic>()))),
      permalink: map['permalink'] == null ? null : pulumi.Output.create<String>(map['permalink'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<String>(map['permissions'] as String),
      variables: map['variables'] == null ? null : pulumi.Output.create<List<OneDashboardVariable>>(pulumi.Input.decodeList<OneDashboardVariable>(map['variables'], (value) => OneDashboardVariable.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

