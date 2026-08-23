// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy {
  /// The DH Group, used in IKE Phase 1. Possible values are `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384` and `None`.
  final pulumi.Input<String> dhGroup;
  /// The IKE encryption algorithm, used for IKE Phase 2. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128` and `GCMAES256`.
  final pulumi.Input<String> ikeEncryption;
  /// The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values are `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256` and `SHA384`.
  final pulumi.Input<String> ikeIntegrity;
  /// The IPSec encryption algorithm, used for IKE phase 1. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256` and `None`.
  final pulumi.Input<String> ipsecEncryption;
  /// The IPSec integrity algorithm, used for IKE phase 1. Possible values are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1` and `SHA256`.
  final pulumi.Input<String> ipsecIntegrity;
  /// The Pfs Group, used in IKE Phase 2. Possible values are `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM` and `None`.
  final pulumi.Input<String> pfsGroup;
  /// The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel. Possible values are between `1024` and `2147483647`.
  final pulumi.Input<int> saDataSizeInKilobytes;
  /// The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel. Possible values are between `300` and `172799`.
  final pulumi.Input<int> saLifetimeInSeconds;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy].
  /// [dhGroup] The DH Group, used in IKE Phase 1. Possible values are `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384` and `None`.
  /// [ikeEncryption] The IKE encryption algorithm, used for IKE Phase 2. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128` and `GCMAES256`.
  /// [ikeIntegrity] The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values are `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256` and `SHA384`.
  /// [ipsecEncryption] The IPSec encryption algorithm, used for IKE phase 1. Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256` and `None`.
  /// [ipsecIntegrity] The IPSec integrity algorithm, used for IKE phase 1. Possible values are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1` and `SHA256`.
  /// [pfsGroup] The Pfs Group, used in IKE Phase 2. Possible values are `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM` and `None`.
  /// [saDataSizeInKilobytes] The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel. Possible values are between `1024` and `2147483647`.
  /// [saLifetimeInSeconds] The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel. Possible values are between `300` and `172799`.
  const VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy({
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
      dhGroup: pulumi.Input.fromValue(map['dhGroup'] as String),
      ikeEncryption: pulumi.Input.fromValue(map['ikeEncryption'] as String),
      ikeIntegrity: pulumi.Input.fromValue(map['ikeIntegrity'] as String),
      ipsecEncryption: pulumi.Input.fromValue(map['ipsecEncryption'] as String),
      ipsecIntegrity: pulumi.Input.fromValue(map['ipsecIntegrity'] as String),
      pfsGroup: pulumi.Input.fromValue(map['pfsGroup'] as String),
      saDataSizeInKilobytes: pulumi.Input.fromValue(map['saDataSizeInKilobytes'] as int),
      saLifetimeInSeconds: pulumi.Input.fromValue(map['saLifetimeInSeconds'] as int),
    );
  }
}
