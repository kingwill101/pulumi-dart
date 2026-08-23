// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Create network mappings input properties/behavior specific to vmm to vmm Network mapping.
class VmmToVmmCreateNetworkMappingInput {
  /// The instance type.
  /// Expected value is 'VmmToVmm'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [VmmToVmmCreateNetworkMappingInput].
  /// [instanceType] The instance type.
  const VmmToVmmCreateNetworkMappingInput({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmToVmmCreateNetworkMappingInput.fromMap(Map<String, dynamic> map) {
    return VmmToVmmCreateNetworkMappingInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
