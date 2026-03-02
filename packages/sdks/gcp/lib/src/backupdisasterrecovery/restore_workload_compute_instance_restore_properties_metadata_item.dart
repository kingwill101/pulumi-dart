// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem {
  /// (Optional)
  final pulumi.Input<String>? key;
  /// (Optional)
  final pulumi.Input<String>? value;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem].
  /// [key] (Optional)
  /// [value] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesMetadataItem(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

