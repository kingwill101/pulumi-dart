// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineBootDiagnostics {
  /// Should Boot Diagnostics be enabled for this Virtual Machine?
  final pulumi.Input<bool> enabled;
  /// The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.
  ///
  /// &gt; **NOTE:** This needs to be the root of a Storage Account and not a Storage Container.
  final pulumi.Input<String> storageUri;

  /// Creates a new [VirtualMachineBootDiagnostics].
  /// [enabled] Should Boot Diagnostics be enabled for this Virtual Machine?
  /// [storageUri] The Storage Account's Blob Endpoint which should hold the virtual machine's diagnostic files.
  const VirtualMachineBootDiagnostics({
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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      storageUri: pulumi.Input.fromValue(map['storageUri'] as String),
    );
  }
}
