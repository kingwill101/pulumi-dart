// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineTable {
  /// Unique identifier for the connection (stream or sink).
  final pulumi.Input<String?>? id;
  /// Latest available version of the connection.
  final pulumi.Input<int?>? latest;
  /// Name of the connection.
  final pulumi.Input<String?>? name;
  /// Type of the connection.
  /// Available values: "stream", "sink".
  final pulumi.Input<String?>? type;
  /// Current version of the connection used by this pipeline.
  final pulumi.Input<int?>? version;

  /// Creates a new [PipelineTable].
  /// [id] Unique identifier for the connection (stream or sink).
  /// [latest] Latest available version of the connection.
  /// [name] Name of the connection.
  /// [type] Type of the connection.
  /// [version] Current version of the connection used by this pipeline.
  const PipelineTable({
    this.id,
    this.latest,
    this.name,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'latest': ?latest,
      'name': ?name,
      'type': ?type,
      'version': ?version,
    };
  }

  factory PipelineTable.fromMap(Map<String, dynamic> map) {
    return PipelineTable(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latest: (() { final guardedValue = map['latest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
