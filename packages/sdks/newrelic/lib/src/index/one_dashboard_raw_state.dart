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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? guid,
    pulumi.Output<String>? name,
    pulumi.Output<List<OneDashboardRawPage>>? pages,
    pulumi.Output<String>? permalink,
    pulumi.Output<String>? permissions,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      name = pulumi.Input.asOptionalInput<String>(name),
      pages = pulumi.Input.asOptionalInput<List<OneDashboardRawPage>>(pages),
      permalink = pulumi.Input.asOptionalInput<String>(permalink),
      permissions = pulumi.Input.asOptionalInput<String>(permissions);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pages: map['pages'] == null ? null : pulumi.Output.create<List<OneDashboardRawPage>>(pulumi.Input.decodeList<OneDashboardRawPage>(map['pages'], (value) => OneDashboardRawPage.fromMap((value as Map).cast<String, dynamic>()))),
      permalink: map['permalink'] == null ? null : pulumi.Output.create<String>(map['permalink'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<String>(map['permissions'] as String),
    );
  }
}

