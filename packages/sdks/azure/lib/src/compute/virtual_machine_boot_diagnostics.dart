// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineBootDiagnostics {
  /// Should Boot Diagnostics be enabled for this Virtual Machine?
  final bool enabled;
  /// The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.
  ///
  /// > **NOTE:** This needs to be the root of a Storage Account and not a Storage Container.
  final String storageUri;

  /// Creates a new [VirtualMachineBootDiagnostics].
  /// [enabled] Should Boot Diagnostics be enabled for this Virtual Machine?
  /// [storageUri] The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.
  VirtualMachineBootDiagnostics({
    required this.enabled,
    required this.storageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'storageUri': storageUri,
    };
  }

  factory VirtualMachineBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return VirtualMachineBootDiagnostics(
      enabled: map['enabled'] as bool,
      storageUri: map['storageUri'] as String,
    );
  }
}

