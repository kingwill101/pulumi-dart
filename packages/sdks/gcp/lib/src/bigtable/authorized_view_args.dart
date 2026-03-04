// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_subset_view.dart';

/// {@template pulumi_bigtable_authorized_view_authorized_view_args_doc}
/// The set of arguments for AuthorizedView.
/// {@endtemplate}
/// {@macro pulumi_bigtable_authorized_view_authorized_view_args_doc}
class AuthorizedViewArgs {
  final pulumi.Input<String>? deletionProtection;

  /// The name of the Bigtable instance in which the authorized view belongs.
  final pulumi.Input<String> instanceName;

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
  final pulumi.Input<String> tableName;

  /// Creates a new [AuthorizedViewArgs].
  /// [deletionProtection] Optional.
  /// [instanceName] The name of the Bigtable instance in which the authorized view belongs.
  /// [name] The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [subsetView] An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  /// [tableName] The name of the Bigtable table in which the authorized view belongs.
  AuthorizedViewArgs({
    this.deletionProtection,
    required this.instanceName,
    this.name,
    this.project,
    this.subsetView,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'instanceName': instanceName,
      'name': ?name,
      'project': ?project,
      'subsetView':
          ?pulumi.Input.mapOptionalInputValue<
            AuthorizedViewSubsetView,
            Map<String, dynamic>
          >(subsetView, (value) => value.toMap()),
      'tableName': tableName,
    };
  }

  factory AuthorizedViewArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewArgs(
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subsetView: (() {
        final guardedValue = map['subsetView'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthorizedViewSubsetView.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
