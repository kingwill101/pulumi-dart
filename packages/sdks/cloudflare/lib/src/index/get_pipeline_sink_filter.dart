// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinkFilter {
  /// Sort direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Filters sinks by name (case-insensitive substring).
  final pulumi.Input<String?>? name;
  /// Sorts sinks by this field. Defaults to `createdAt`.
  /// Available values: "name", "createdAt".
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? pipelineId;

  /// Creates a new [GetPipelineSinkFilter].
  /// [direction] Sort direction.
  /// [name] Filters sinks by name (case-insensitive substring).
  /// [orderBy] Sorts sinks by this field. Defaults to `createdAt`.
  /// [pipelineId] Optional.
  const GetPipelineSinkFilter({
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

  factory GetPipelineSinkFilter.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
