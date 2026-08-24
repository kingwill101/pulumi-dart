// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineSinkFilter {
  /// Filters sinks by name (case-insensitive substring).
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? pipelineId;

  /// Creates a new [GetPipelineSinkFilter].
  /// [name] Filters sinks by name (case-insensitive substring).
  /// [pipelineId] Optional.
  const GetPipelineSinkFilter({
    this.name,
    this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'pipelineId': ?pipelineId,
    };
  }

  factory GetPipelineSinkFilter.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkFilter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
