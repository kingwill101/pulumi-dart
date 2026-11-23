// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenLineageJobInputSymlink {
  /// Name of the symlink target.
  final pulumi.Input<String> name;
  /// Namespace of the symlink target.
  final pulumi.Input<String> namespace;
  /// Type of the symlink target.
  final pulumi.Input<String> type;

  /// Creates a new [OpenLineageJobInputSymlink].
  /// [name] Name of the symlink target.
  /// [namespace] Namespace of the symlink target.
  /// [type] Type of the symlink target.
  const OpenLineageJobInputSymlink({
    required this.name,
    required this.namespace,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
      'type': type,
    };
  }

  factory OpenLineageJobInputSymlink.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobInputSymlink(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
