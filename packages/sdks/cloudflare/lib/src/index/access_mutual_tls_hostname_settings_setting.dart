// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessMutualTlsHostnameSettingsSetting {
  /// Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  final pulumi.Input<bool> chinaNetwork;
  /// Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  final pulumi.Input<bool> clientCertificateForwarding;
  /// The hostname that these settings apply to.
  final pulumi.Input<String> hostname;

  /// Creates a new [AccessMutualTlsHostnameSettingsSetting].
  /// [chinaNetwork] Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  /// [clientCertificateForwarding] Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  /// [hostname] The hostname that these settings apply to.
  const AccessMutualTlsHostnameSettingsSetting({
    required this.chinaNetwork,
    required this.clientCertificateForwarding,
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chinaNetwork': chinaNetwork,
      'clientCertificateForwarding': clientCertificateForwarding,
      'hostname': hostname,
    };
  }

  factory AccessMutualTlsHostnameSettingsSetting.fromMap(Map<String, dynamic> map) {
    return AccessMutualTlsHostnameSettingsSetting(
      chinaNetwork: pulumi.Input.fromValue(map['chinaNetwork'] as bool),
      clientCertificateForwarding: pulumi.Input.fromValue(map['clientCertificateForwarding'] as bool),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
    );
  }
}
