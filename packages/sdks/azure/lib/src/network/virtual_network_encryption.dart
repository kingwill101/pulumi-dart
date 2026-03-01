// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkEncryption {
  /// Specifies if the encrypted Virtual Network allows VM that does not support encryption. Possible values are `DropUnencrypted` and `AllowUnencrypted`.
  ///
  /// > **Note:** Currently `AllowUnencrypted` is the only supported value for the `enforcement` property as `DropUnencrypted` is not yet in public preview or general availability. Please see the [official documentation](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-encryption-overview#limitations) for more information.
  final String enforcement;

  /// Creates a new [VirtualNetworkEncryption].
  /// [enforcement] Specifies if the encrypted Virtual Network allows VM that does not support encryption. Possible values are `DropUnencrypted` and `AllowUnencrypted`.
  VirtualNetworkEncryption({
    required this.enforcement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcement': enforcement,
    };
  }

  factory VirtualNetworkEncryption.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkEncryption(
      enforcement: map['enforcement'] as String,
    );
  }
}

