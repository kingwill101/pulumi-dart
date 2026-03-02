// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_spanner_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String>? config;
  final pulumi.Input<String>? displayName;
  /// The name of the spanner instance.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [config] Optional.
  /// [displayName] Optional.
  /// [name] The name of the spanner instance.
  /// [project] The project in which the resource belongs. If it
  GetInstanceArgs({
    this.config,
    this.displayName,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'displayName': ?displayName,
      'name': name,
      'project': ?project,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      config: map['config'] == null ? null : (map['config']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

