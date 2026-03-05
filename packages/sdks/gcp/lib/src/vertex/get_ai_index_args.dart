// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_index_get_ai_index_args_doc}
/// Arguments for getAiIndex.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_index_get_ai_index_args_doc}
class GetAiIndexArgs {
  /// The name of the index.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;
  /// The region of the index.
  ///
  /// - - -
  final pulumi.Input<String> region;

  /// Creates a new [GetAiIndexArgs].
  /// [name] The name of the index.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the index.
  GetAiIndexArgs({
    required this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': region,
    };
  }

  factory GetAiIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetAiIndexArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

