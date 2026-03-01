// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy {
  /// The DH Group, used in IKE Phase 1. Possible values are `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384` and `None`.
  final String dhGroup;
  /// The IKE encryption algorithm, used for IKE Phase 2. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128` and `GCMAES256`.
  final String ikeEncryption;
  /// The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values are `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256` and `SHA384`.
  final String ikeIntegrity;
  /// The IPSec encryption algorithm, used for IKE phase 1. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256` and `None`.
  final String ipsecEncryption;
  /// The IPSec integrity algorithm, used for IKE phase 1. Possible values are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1` and `SHA256`.
  final String ipsecIntegrity;
  /// The Pfs Group, used in IKE Phase 2. Possible values are `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM` and `None`.
  final String pfsGroup;
  /// The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel. Possible values are between `1024` and `2147483647`.
  final int saDataSizeInKilobytes;
  /// The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel. Possible values are between `300` and `172799`.
  final int saLifetimeInSeconds;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy].
  /// [dhGroup] The DH Group, used in IKE Phase 1. Possible values are `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384` and `None`.
  /// [ikeEncryption] The IKE encryption algorithm, used for IKE Phase 2. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128` and `GCMAES256`.
  /// [ikeIntegrity] The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values are `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256` and `SHA384`.
  /// [ipsecEncryption] The IPSec encryption algorithm, used for IKE phase 1. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256` and `None`.
  /// [ipsecIntegrity] The IPSec integrity algorithm, used for IKE phase 1. Possible values are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1` and `SHA256`.
  /// [pfsGroup] The Pfs Group, used in IKE Phase 2. Possible values are `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM` and `None`.
  /// [saDataSizeInKilobytes] The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel. Possible values are between `1024` and `2147483647`.
  /// [saLifetimeInSeconds] The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel. Possible values are between `300` and `172799`.
  VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    required this.saDataSizeInKilobytes,
    required this.saLifetimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhGroup': dhGroup,
      'ikeEncryption': ikeEncryption,
      'ikeIntegrity': ikeIntegrity,
      'ipsecEncryption': ipsecEncryption,
      'ipsecIntegrity': ipsecIntegrity,
      'pfsGroup': pfsGroup,
      'saDataSizeInKilobytes': saDataSizeInKilobytes,
      'saLifetimeInSeconds': saLifetimeInSeconds,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy(
      dhGroup: map['dhGroup'] as String,
      ikeEncryption: map['ikeEncryption'] as String,
      ikeIntegrity: map['ikeIntegrity'] as String,
      ipsecEncryption: map['ipsecEncryption'] as String,
      ipsecIntegrity: map['ipsecIntegrity'] as String,
      pfsGroup: map['pfsGroup'] as String,
      saDataSizeInKilobytes: map['saDataSizeInKilobytes'] as int,
      saLifetimeInSeconds: map['saLifetimeInSeconds'] as int,
    );
  }
}

