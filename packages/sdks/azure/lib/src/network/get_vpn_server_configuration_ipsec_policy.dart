// ignore_for_file: unused_element, unnecessary_cast


class GetVpnServerConfigurationIpsecPolicy {
  /// The DH Group, used in IKE Phase 1.
  final String dhGroup;
  /// The IKE encryption algorithm, used for IKE Phase 2.
  final String ikeEncryption;
  /// The IKE encryption integrity algorithm, used for IKE Phase 2.
  final String ikeIntegrity;
  /// The IPSec encryption algorithm, used for IKE phase 1.
  final String ipsecEncryption;
  /// The IPSec integrity algorithm, used for IKE phase 1.
  final String ipsecIntegrity;
  /// The Pfs Group, used in IKE Phase 2.
  final String pfsGroup;
  /// The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel.
  final int saDataSizeKilobytes;
  /// The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel.
  final int saLifetimeSeconds;

  /// Creates a new [GetVpnServerConfigurationIpsecPolicy].
  /// [dhGroup] The DH Group, used in IKE Phase 1.
  /// [ikeEncryption] The IKE encryption algorithm, used for IKE Phase 2.
  /// [ikeIntegrity] The IKE encryption integrity algorithm, used for IKE Phase 2.
  /// [ipsecEncryption] The IPSec encryption algorithm, used for IKE phase 1.
  /// [ipsecIntegrity] The IPSec integrity algorithm, used for IKE phase 1.
  /// [pfsGroup] The Pfs Group, used in IKE Phase 2.
  /// [saDataSizeKilobytes] The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel.
  /// [saLifetimeSeconds] The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel.
  GetVpnServerConfigurationIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    required this.saDataSizeKilobytes,
    required this.saLifetimeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhGroup': dhGroup,
      'ikeEncryption': ikeEncryption,
      'ikeIntegrity': ikeIntegrity,
      'ipsecEncryption': ipsecEncryption,
      'ipsecIntegrity': ipsecIntegrity,
      'pfsGroup': pfsGroup,
      'saDataSizeKilobytes': saDataSizeKilobytes,
      'saLifetimeSeconds': saLifetimeSeconds,
    };
  }

  factory GetVpnServerConfigurationIpsecPolicy.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationIpsecPolicy(
      dhGroup: map['dhGroup'] as String,
      ikeEncryption: map['ikeEncryption'] as String,
      ikeIntegrity: map['ikeIntegrity'] as String,
      ipsecEncryption: map['ipsecEncryption'] as String,
      ipsecIntegrity: map['ipsecIntegrity'] as String,
      pfsGroup: map['pfsGroup'] as String,
      saDataSizeKilobytes: map['saDataSizeKilobytes'] as int,
      saLifetimeSeconds: map['saLifetimeSeconds'] as int,
    );
  }
}

