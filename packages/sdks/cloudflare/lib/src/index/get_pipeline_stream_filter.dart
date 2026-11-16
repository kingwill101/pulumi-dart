// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamFilter {
  /// Sort direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filters streams by name (case-insensitive substring).
  final pulumi.Input<String?>? name;
  /// Sorts streams by this field. Defaults to `createdAt`.
  /// Available values: "name", "createdAt".
  final pulumi.Input<String?>? orderBy;
  /// Specifies the public ID of the pipeline.
  final pulumi.Input<String?>? pipelineId;

  /// Creates a new [GetPipelineStreamFilter].
  /// [direction] Sort direction.
  /// [name] Filters streams by name (case-insensitive substring).
  /// [orderBy] Sorts streams by this field. Defaults to `createdAt`.
  /// [pipelineId] Specifies the public ID of the pipeline.
  const GetPipelineStreamFilter({
    required this.direction,
    this.name,
    this.orderBy,
    this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': ?name,
      'orderBy': ?orderBy,
      'pipelineId': ?pipelineId,
    };
  }

  factory GetPipelineStreamFilter.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
