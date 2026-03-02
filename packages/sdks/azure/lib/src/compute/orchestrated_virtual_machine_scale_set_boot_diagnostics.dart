// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetBootDiagnostics {
  /// The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. By including a `boot_diagnostics` block without passing the `storage_account_uri` field will cause the API to utilize a Managed Storage Account to store the Boot Diagnostics output.
  final pulumi.Input<String>? storageAccountUri;

  /// Creates a new [OrchestratedVirtualMachineScaleSetBootDiagnostics].
  /// [storageAccountUri] The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. By including a `boot_diagnostics` block without passing the `storage_account_uri` field will cause the API to utilize a Managed Storage Account to store the Boot Diagnostics output.
  OrchestratedVirtualMachineScaleSetBootDiagnostics({
    this.storageAccountUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountUri': ?storageAccountUri,
    };
  }

  factory OrchestratedVirtualMachineScaleSetBootDiagnostics.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetBootDiagnostics(
      storageAccountUri: map['storageAccountUri'] == null ? null : (map['storageAccountUri'] as String).input(),
    );
  }
}

