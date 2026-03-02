// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  ///
  /// > **NOTE:** Passing a null value will utilize a Managed Storage Account to store Boot Diagnostics.
  final pulumi.Input<String>? storageAccountUri;

  /// Creates a new [WindowsVirtualMachineBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  WindowsVirtualMachineBootDiagnostics({
    this.storageAccountUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountUri': ?storageAccountUri,
    };
  }

  factory WindowsVirtualMachineBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineBootDiagnostics(
      storageAccountUri: map['storageAccountUri'] == null ? null : (map['storageAccountUri'] as String).input(),
    );
  }
}

