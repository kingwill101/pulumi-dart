// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  ///
  /// &gt; **Note:** Passing a null value will utilize a Managed Storage Account to store Boot Diagnostics.
  final pulumi.Input<String>? storageAccountUri;

  /// Creates a new [LinuxVirtualMachineScaleSetBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor.
  LinuxVirtualMachineScaleSetBootDiagnostics({this.storageAccountUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageAccountUri': ?storageAccountUri};
  }

  factory LinuxVirtualMachineScaleSetBootDiagnostics.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxVirtualMachineScaleSetBootDiagnostics(
      storageAccountUri: (() {
        final guardedValue = map['storageAccountUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
