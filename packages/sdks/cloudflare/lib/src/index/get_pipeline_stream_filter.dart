// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamFilter {
  /// Filters streams by name (case-insensitive substring).
  final pulumi.Input<String?>? name;
  /// Specifies the public ID of the pipeline.
  final pulumi.Input<String?>? pipelineId;

  /// Creates a new [GetPipelineStreamFilter].
  /// [name] Filters streams by name (case-insensitive substring).
  /// [pipelineId] Specifies the public ID of the pipeline.
  const GetPipelineStreamFilter({
    this.name,
    this.pipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'pipelineId': ?pipelineId,
    };
  }

  factory GetPipelineStreamFilter.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamFilter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineId: (() { final guardedValue = map['pipelineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
