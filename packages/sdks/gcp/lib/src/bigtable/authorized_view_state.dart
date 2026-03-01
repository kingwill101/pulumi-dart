// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_subset_view.dart';

/// Input properties used for looking up and filtering AuthorizedView resources.
class AuthorizedViewState {
  final pulumi.Input<String>? deletionProtection;
  /// The name of the Bigtable instance in which the authorized view belongs.
  final pulumi.Input<String>? instanceName;
  /// The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  ///
  /// -----
  final pulumi.Input<AuthorizedViewSubsetView>? subsetView;
  /// The name of the Bigtable table in which the authorized view belongs.
  final pulumi.Input<String>? tableName;

  /// Creates a new [AuthorizedViewState].
  /// [deletionProtection] Optional.
  /// [instanceName] The name of the Bigtable instance in which the authorized view belongs.
  /// [name] The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [subsetView] An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  /// [tableName] The name of the Bigtable table in which the authorized view belongs.
  AuthorizedViewState({
    pulumi.Output<String>? deletionProtection,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<AuthorizedViewSubsetView>? subsetView,
    pulumi.Output<String>? tableName,
  }) :
      deletionProtection = pulumi.Input.asOptionalInput<String>(deletionProtection),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      subsetView = pulumi.Input.asOptionalInput<AuthorizedViewSubsetView>(subsetView),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'instanceName': ?instanceName,
      'name': ?name,
      'project': ?project,
      'subsetView': ?pulumi.Input.mapOptionalInputValue<AuthorizedViewSubsetView, Map<String, dynamic>>(subsetView, (value) => value.toMap()),
      'tableName': ?tableName,
    };
  }

  factory AuthorizedViewState.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewState(
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<String>(map['deletionProtection'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      subsetView: map['subsetView'] == null ? null : pulumi.Output.create<AuthorizedViewSubsetView>(AuthorizedViewSubsetView.fromMap((map['subsetView'] as Map).cast<String, dynamic>())),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

