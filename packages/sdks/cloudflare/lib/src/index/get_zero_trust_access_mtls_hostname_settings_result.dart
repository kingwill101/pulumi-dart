// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustAccessMtlsHostnameSettings.
class GetZeroTrustAccessMtlsHostnameSettingsResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  final bool? chinaNetwork;
  /// Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  final bool? clientCertificateForwarding;
  /// The hostname that these settings apply to.
  final String? hostname;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessMtlsHostnameSettingsResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [chinaNetwork] Request client certificates for this hostname in China. Can only be set to true if this zone is china network enabled.
  /// [clientCertificateForwarding] Client Certificate Forwarding is a feature that takes the client cert provided by the eyeball to the edge, and forwards it to the origin as a HTTP header to allow logging on the origin.
  /// [hostname] The hostname that these settings apply to.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessMtlsHostnameSettingsResult({
    this.accountId,
    this.chinaNetwork,
    this.clientCertificateForwarding,
    this.hostname,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'chinaNetwork': ?chinaNetwork,
      'clientCertificateForwarding': ?clientCertificateForwarding,
      'hostname': ?hostname,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessMtlsHostnameSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessMtlsHostnameSettingsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      chinaNetwork: (() { final guardedValue = map['chinaNetwork']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateForwarding: (() { final guardedValue = map['clientCertificateForwarding']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
