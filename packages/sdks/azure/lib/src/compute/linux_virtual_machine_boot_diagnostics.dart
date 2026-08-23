// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  ///
  /// &gt; **NOTE:** Passing a null value will utilize a Managed Storage Account to store Boot Diagnostics
  final pulumi.Input<String>? storageAccountUri;

  /// Creates a new [LinuxVirtualMachineBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  const LinuxVirtualMachineBootDiagnostics({
    this.storageAccountUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountUri': ?storageAccountUri,
    };
  }

  factory LinuxVirtualMachineBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineBootDiagnostics(
      storageAccountUri: (() { final guardedValue = map['storageAccountUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
