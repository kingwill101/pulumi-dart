// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  ///
  /// > **NOTE:** Passing a null value will utilize a Managed Storage Account to store Boot Diagnostics
  final String? storageAccountUri;

  /// Creates a new [LinuxVirtualMachineBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  LinuxVirtualMachineBootDiagnostics({
    this.storageAccountUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountUri': ?storageAccountUri,
    };
  }

  factory LinuxVirtualMachineBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineBootDiagnostics(
      storageAccountUri: map['storageAccountUri'] == null ? null : map['storageAccountUri'] as String,
    );
  }
}

