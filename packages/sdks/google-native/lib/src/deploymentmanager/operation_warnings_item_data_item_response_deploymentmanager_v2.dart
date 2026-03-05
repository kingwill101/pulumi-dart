// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OperationWarningsItemDataItemResponseDeploymentmanagerV2 {
  /// A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
  final pulumi.Input<String> key;
  /// A warning data value corresponding to the key.
  final pulumi.Input<String> value;

  /// Creates a new [OperationWarningsItemDataItemResponseDeploymentmanagerV2].
  /// [key] A key that provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement, or a warning about invalid network settings (for example, if an instance attempts to perform IP forwarding but is not enabled for IP forwarding).
  /// [value] A warning data value corresponding to the key.
  OperationWarningsItemDataItemResponseDeploymentmanagerV2({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory OperationWarningsItemDataItemResponseDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return OperationWarningsItemDataItemResponseDeploymentmanagerV2(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

