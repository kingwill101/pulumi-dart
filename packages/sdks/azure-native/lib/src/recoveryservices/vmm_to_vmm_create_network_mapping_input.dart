// ignore_for_file: unused_element, unnecessary_cast


/// Create network mappings input properties/behavior specific to vmm to vmm Network mapping.
class VmmToVmmCreateNetworkMappingInput {
  /// The instance type.
  /// Expected value is 'VmmToVmm'.
  final String instanceType;

  /// Creates a new [VmmToVmmCreateNetworkMappingInput].
  /// [instanceType] The instance type.
  VmmToVmmCreateNetworkMappingInput({
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
    };
  }

  factory VmmToVmmCreateNetworkMappingInput.fromMap(Map<String, dynamic> map) {
    return VmmToVmmCreateNetworkMappingInput(
      instanceType: map['instanceType'] as String,
    );
  }
}

