// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayConnectionIpsecPolicy {
  /// The DH group used in IKE phase 1 for initial SA. Valid options are `DHGroup1`, `DHGroup14`, `DHGroup2`, `DHGroup2048`, `DHGroup24`, `ECP256`, `ECP384`, or `None`.
  final pulumi.Input<String> dhGroup;
  /// The IKE encryption algorithm. Valid options are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, or `GCMAES256`.
  final pulumi.Input<String> ikeEncryption;
  /// The IKE integrity algorithm. Valid options are `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256`, or `SHA384`.
  final pulumi.Input<String> ikeIntegrity;
  /// The IPSec encryption algorithm. Valid options are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256`, or `None`.
  final pulumi.Input<String> ipsecEncryption;
  /// The IPSec integrity algorithm. Valid options are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1`, or `SHA256`.
  final pulumi.Input<String> ipsecIntegrity;
  /// The DH group used in IKE phase 2 for new child SA.
  /// Valid options are `ECP256`, `ECP384`, `PFS1`, `PFS14`, `PFS2`, `PFS2048`, `PFS24`, `PFSMM`,
  /// or `None`.
  final pulumi.Input<String> pfsGroup;
  /// The IPSec SA payload size in KB. Must be at least `1024` KB. Defaults to `102400000` KB.
  final pulumi.Input<int>? saDatasize;
  /// The IPSec SA lifetime in seconds. Must be at least `300` seconds. Defaults to `27000` seconds.
  final pulumi.Input<int>? saLifetime;

  /// Creates a new [VirtualNetworkGatewayConnectionIpsecPolicy].
  /// [dhGroup] The DH group used in IKE phase 1 for initial SA. Valid options are `DHGroup1`, `DHGroup14`, `DHGroup2`, `DHGroup2048`, `DHGroup24`, `ECP256`, `ECP384`, or `None`.
  /// [ikeEncryption] The IKE encryption algorithm. Valid options are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, or `GCMAES256`.
  /// [ikeIntegrity] The IKE integrity algorithm. Valid options are `GCMAES128`, `GCMAES256`, `MD5`, `SHA1`, `SHA256`, or `SHA384`.
  /// [ipsecEncryption] The IPSec encryption algorithm. Valid options are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256`, or `None`.
  /// [ipsecIntegrity] The IPSec integrity algorithm. Valid options are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1`, or `SHA256`.
  /// [pfsGroup] The DH group used in IKE phase 2 for new child SA.
  /// [saDatasize] The IPSec SA payload size in KB. Must be at least `1024` KB. Defaults to `102400000` KB.
  /// [saLifetime] The IPSec SA lifetime in seconds. Must be at least `300` seconds. Defaults to `27000` seconds.
  const VirtualNetworkGatewayConnectionIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    this.saDatasize,
    this.saLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhGroup': dhGroup,
      'ikeEncryption': ikeEncryption,
      'ikeIntegrity': ikeIntegrity,
      'ipsecEncryption': ipsecEncryption,
      'ipsecIntegrity': ipsecIntegrity,
      'pfsGroup': pfsGroup,
      'saDatasize': ?saDatasize,
      'saLifetime': ?saLifetime,
    };
  }

  factory VirtualNetworkGatewayConnectionIpsecPolicy.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionIpsecPolicy(
      dhGroup: pulumi.Input.fromValue(map['dhGroup'] as String),
      ikeEncryption: pulumi.Input.fromValue(map['ikeEncryption'] as String),
      ikeIntegrity: pulumi.Input.fromValue(map['ikeIntegrity'] as String),
      ipsecEncryption: pulumi.Input.fromValue(map['ipsecEncryption'] as String),
      ipsecIntegrity: pulumi.Input.fromValue(map['ipsecIntegrity'] as String),
      pfsGroup: pulumi.Input.fromValue(map['pfsGroup'] as String),
      saDatasize: (() { final guardedValue = map['saDatasize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      saLifetime: (() { final guardedValue = map['saLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

