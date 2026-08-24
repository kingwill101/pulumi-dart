// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineTable {
  /// Unique identifier for the connection (stream or sink).
  final pulumi.Input<String> id;
  /// Latest available version of the connection.
  final pulumi.Input<int> latest;
  /// Name of the connection.
  final pulumi.Input<String> name;
  /// Type of the connection.
  /// Available values: "stream", "sink".
  final pulumi.Input<String> type;
  /// Current version of the connection used by this pipeline.
  final pulumi.Input<int> version;

  /// Creates a new [GetPipelineTable].
  /// [id] Unique identifier for the connection (stream or sink).
  /// [latest] Latest available version of the connection.
  /// [name] Name of the connection.
  /// [type] Type of the connection.
  /// [version] Current version of the connection used by this pipeline.
  const GetPipelineTable({
    required this.id,
    required this.latest,
    required this.name,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'latest': latest,
      'name': name,
      'type': type,
      'version': version,
    };
  }

  factory GetPipelineTable.fromMap(Map<String, dynamic> map) {
    return GetPipelineTable(
      id: pulumi.Input.fromValue(map['id'] as String),
      latest: pulumi.Input.fromValue((map['latest'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
    );
  }
}
