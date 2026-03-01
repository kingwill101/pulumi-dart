// ignore_for_file: unused_element, unnecessary_cast


class WindowsVirtualMachineScaleSetWinrmListener {
  /// The Secret URL of a Key Vault Certificate, which must be specified when `protocol` is set to `Https`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can be sourced from the `secret_id` field within the `azure.keyvault.Certificate` Resource.
  final String? certificateUrl;
  /// The Protocol of the WinRM Listener. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  final String protocol;

  /// Creates a new [WindowsVirtualMachineScaleSetWinrmListener].
  /// [certificateUrl] The Secret URL of a Key Vault Certificate, which must be specified when `protocol` is set to `Https`. Changing this forces a new resource to be created.
  /// [protocol] The Protocol of the WinRM Listener. Possible values are `Http` and `Https`. Changing this forces a new resource to be created.
  WindowsVirtualMachineScaleSetWinrmListener({
    this.certificateUrl,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'protocol': protocol,
    };
  }

  factory WindowsVirtualMachineScaleSetWinrmListener.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetWinrmListener(
      certificateUrl: map['certificateUrl'] == null ? null : map['certificateUrl'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

