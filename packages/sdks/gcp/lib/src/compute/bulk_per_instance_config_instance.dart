// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BulkPerInstanceConfigInstance {
  /// The name for this per-instance config and its corresponding instance.
  final pulumi.Input<String> name;

  /// Creates a new [BulkPerInstanceConfigInstance].
  /// [name] The name for this per-instance config and its corresponding instance.
  const BulkPerInstanceConfigInstance({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory BulkPerInstanceConfigInstance.fromMap(Map<String, dynamic> map) {
    return BulkPerInstanceConfigInstance(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
