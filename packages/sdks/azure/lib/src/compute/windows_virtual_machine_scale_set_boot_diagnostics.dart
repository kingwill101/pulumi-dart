// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  ///
  /// > **Note:** Passing a null value will utilize a Managed Storage Account to store Boot Diagnostics
  final String? storageAccountUri;

  /// Creates a new [WindowsVirtualMachineScaleSetBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  WindowsVirtualMachineScaleSetBootDiagnostics({
    this.storageAccountUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountUri': ?storageAccountUri,
    };
  }

  factory WindowsVirtualMachineScaleSetBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetBootDiagnostics(
      storageAccountUri: map['storageAccountUri'] == null ? null : map['storageAccountUri'] as String,
    );
  }
}

