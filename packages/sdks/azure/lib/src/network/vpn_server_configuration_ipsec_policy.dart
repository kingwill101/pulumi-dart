// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnServerConfigurationIpsecPolicy {
  /// The DH Group, used in IKE Phase 1. Possible values include `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384` and `None`.
  final pulumi.Input<String> dhGroup;
  /// The IKE encryption algorithm, used for IKE Phase 2. Possible values include `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128` and `GCMAES256`.
  final pulumi.Input<String> ikeEncryption;
  /// The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values include `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256` and `SHA384`.
  final pulumi.Input<String> ikeIntegrity;
  /// The IPSec encryption algorithm, used for IKE phase 1. Possible values include `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256` and `None`.
  final pulumi.Input<String> ipsecEncryption;
  /// The IPSec integrity algorithm, used for IKE phase 1. Possible values include `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1` and `SHA256`.
  final pulumi.Input<String> ipsecIntegrity;
  /// The Pfs Group, used in IKE Phase 2. Possible values include `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM` and `None`.
  final pulumi.Input<String> pfsGroup;
  /// The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel.
  final pulumi.Input<int> saDataSizeKilobytes;
  /// The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel.
  final pulumi.Input<int> saLifetimeSeconds;

  /// Creates a new [VpnServerConfigurationIpsecPolicy].
  /// [dhGroup] The DH Group, used in IKE Phase 1. Possible values include `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384` and `None`.
  /// [ikeEncryption] The IKE encryption algorithm, used for IKE Phase 2. Possible values include `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128` and `GCMAES256`.
  /// [ikeIntegrity] The IKE encryption integrity algorithm, used for IKE Phase 2. Possible values include `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256` and `SHA384`.
  /// [ipsecEncryption] The IPSec encryption algorithm, used for IKE phase 1. Possible values include `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256` and `None`.
  /// [ipsecIntegrity] The IPSec integrity algorithm, used for IKE phase 1. Possible values include `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1` and `SHA256`.
  /// [pfsGroup] The Pfs Group, used in IKE Phase 2. Possible values include `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM` and `None`.
  /// [saDataSizeKilobytes] The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel.
  /// [saLifetimeSeconds] The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel.
  const VpnServerConfigurationIpsecPolicy({
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

  factory VpnServerConfigurationIpsecPolicy.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationIpsecPolicy(
      dhGroup: pulumi.Input.fromValue(map['dhGroup'] as String),
      ikeEncryption: pulumi.Input.fromValue(map['ikeEncryption'] as String),
      ikeIntegrity: pulumi.Input.fromValue(map['ikeIntegrity'] as String),
      ipsecEncryption: pulumi.Input.fromValue(map['ipsecEncryption'] as String),
      ipsecIntegrity: pulumi.Input.fromValue(map['ipsecIntegrity'] as String),
      pfsGroup: pulumi.Input.fromValue(map['pfsGroup'] as String),
      saDataSizeKilobytes: pulumi.Input.fromValue(map['saDataSizeKilobytes'] as int),
      saLifetimeSeconds: pulumi.Input.fromValue(map['saLifetimeSeconds'] as int),
    );
  }
}
