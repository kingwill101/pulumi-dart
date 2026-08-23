// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadDiskRestorePropertiesLabel {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> key;
  /// (Optional)
  final pulumi.Input<String>? value;

  /// Creates a new [RestoreWorkloadDiskRestorePropertiesLabel].
  /// [key] The identifier for this object. Format specified above.
  /// [value] (Optional)
  const RestoreWorkloadDiskRestorePropertiesLabel({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory RestoreWorkloadDiskRestorePropertiesLabel.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestorePropertiesLabel(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
