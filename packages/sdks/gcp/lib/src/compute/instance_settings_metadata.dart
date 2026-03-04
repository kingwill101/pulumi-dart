// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceSettingsMetadata {
  /// A metadata key/value items map. The total size of all keys and values must be less than 512KB
  final pulumi.Input<Map<String, String>>? items;

  /// Creates a new [InstanceSettingsMetadata].
  /// [items] A metadata key/value items map. The total size of all keys and values must be less than 512KB
  InstanceSettingsMetadata({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory InstanceSettingsMetadata.fromMap(Map<String, dynamic> map) {
    return InstanceSettingsMetadata(
      items: (() {
        final guardedValue = map['items'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
