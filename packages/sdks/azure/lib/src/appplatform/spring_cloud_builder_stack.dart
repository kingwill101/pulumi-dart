// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudBuilderStack {
  /// Specifies the ID of the ClusterStack.
  final pulumi.Input<String> id;
  /// Specifies the version of the ClusterStack
  final pulumi.Input<String> version;

  /// Creates a new [SpringCloudBuilderStack].
  /// [id] Specifies the ID of the ClusterStack.
  /// [version] Specifies the version of the ClusterStack
  SpringCloudBuilderStack({
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'version': version,
    };
  }

  factory SpringCloudBuilderStack.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuilderStack(
      id: (map['id'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

