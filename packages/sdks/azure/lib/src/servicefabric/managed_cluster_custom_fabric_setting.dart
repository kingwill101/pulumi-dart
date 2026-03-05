// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedClusterCustomFabricSetting {
  /// Parameter name.
  final pulumi.Input<String> parameter;
  /// Section name.
  final pulumi.Input<String> section;
  /// Parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [ManagedClusterCustomFabricSetting].
  /// [parameter] Parameter name.
  /// [section] Section name.
  /// [value] Parameter value.
  ManagedClusterCustomFabricSetting({
    required this.parameter,
    required this.section,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'section': section,
      'value': value,
    };
  }

  factory ManagedClusterCustomFabricSetting.fromMap(Map<String, dynamic> map) {
    return ManagedClusterCustomFabricSetting(
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      section: pulumi.Input.fromValue(map['section'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

