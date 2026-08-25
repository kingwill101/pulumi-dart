// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_tiers_get_tiers_args_doc}
/// Arguments for getTiers.
/// {@endtemplate}
/// {@macro pulumi_sql_get_tiers_get_tiers_args_doc}
class GetTiersArgs {
  /// The Project ID for which to list tiers. If `project` is not provided, the project defined within the default provider configuration is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetTiersArgs].
  /// [project] The Project ID for which to list tiers. If `project` is not provided, the project defined within the default provider configuration is used.
  const GetTiersArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetTiersArgs.fromMap(Map<String, dynamic> map) {
    return GetTiersArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
