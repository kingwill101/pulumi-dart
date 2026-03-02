// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_get_database_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_spanner_get_database_get_database_args_doc}
class GetDatabaseArgs {
  /// The name of the database's spanner instance.
  ///
  /// - - -
  final pulumi.Input<String> instance;
  /// The name of the spanner database.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseArgs].
  /// [instance] The name of the database's spanner instance.
  /// [name] The name of the spanner database.
  /// [project] The project in which the resource belongs. If it
  GetDatabaseArgs({
    required this.instance,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'name': name,
      'project': ?project,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      instance: (map['instance'] as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

