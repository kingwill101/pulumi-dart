// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener {
  /// The Secret URL of a Key Vault Certificate, which must be specified when protocol is set to `Https`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can be sourced from the `secretId` field within the `azure.keyvault.Certificate` Resource.
  final pulumi.Input<String?>? certificateUrl;
  /// Specifies the protocol of listener. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  final pulumi.Input<String> protocol;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener].
  /// [certificateUrl] The Secret URL of a Key Vault Certificate, which must be specified when protocol is set to `Https`. Changing this forces a new resource to be created.
  /// [protocol] Specifies the protocol of listener. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  const OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener({
    this.certificateUrl,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': protocol,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationWinrmListener(
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}
