// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayConnectionIpsecPolicy {
  /// The DH group used in IKE phase 1 for initial SA. Valid
  /// options are `DHGroup1`, `DHGroup14`, `DHGroup2`, `DHGroup2048`, `DHGroup24`,
  /// `ECP256`, `ECP384`, or `None`.
  final String dhGroup;
  /// The IKE encryption algorithm. Valid
  /// options are `AES128`, `AES192`, `AES256`, `DES`, or `DES3`.
  final String ikeEncryption;
  /// The IKE integrity algorithm. Valid
  /// options are `MD5`, `SHA1`, `SHA256`, or `SHA384`.
  final String ikeIntegrity;
  /// The IPSec encryption algorithm. Valid
  /// options are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256`, or `None`.
  final String ipsecEncryption;
  /// The IPSec integrity algorithm. Valid
  /// options are `GCMAES128`, `GCMAES192`, `GCMAES256`, `MD5`, `SHA1`, or `SHA256`.
  final String ipsecIntegrity;
  /// The DH group used in IKE phase 2 for new child SA.
  /// Valid options are `ECP256`, `ECP384`, `PFS1`, `PFS2`, `PFS2048`, `PFS24`,
  /// or `None`.
  final String pfsGroup;
  /// The IPSec SA payload size in KB. Must be at least
  /// `1024` KB.
  final int saDatasize;
  /// The IPSec SA lifetime in seconds. Must be at least
  /// `300` seconds.
  final int saLifetime;

  /// Creates a new [GetGatewayConnectionIpsecPolicy].
  /// [dhGroup] The DH group used in IKE phase 1 for initial SA. Valid
  /// [ikeEncryption] The IKE encryption algorithm. Valid
  /// [ikeIntegrity] The IKE integrity algorithm. Valid
  /// [ipsecEncryption] The IPSec encryption algorithm. Valid
  /// [ipsecIntegrity] The IPSec integrity algorithm. Valid
  /// [pfsGroup] The DH group used in IKE phase 2 for new child SA.
  /// [saDatasize] The IPSec SA payload size in KB. Must be at least
  /// [saLifetime] The IPSec SA lifetime in seconds. Must be at least
  GetGatewayConnectionIpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    required this.saDatasize,
    required this.saLifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhGroup': dhGroup,
      'ikeEncryption': ikeEncryption,
      'ikeIntegrity': ikeIntegrity,
      'ipsecEncryption': ipsecEncryption,
      'ipsecIntegrity': ipsecIntegrity,
      'pfsGroup': pfsGroup,
      'saDatasize': saDatasize,
      'saLifetime': saLifetime,
    };
  }

  factory GetGatewayConnectionIpsecPolicy.fromMap(Map<String, dynamic> map) {
    return GetGatewayConnectionIpsecPolicy(
      dhGroup: map['dhGroup'] as String,
      ikeEncryption: map['ikeEncryption'] as String,
      ikeIntegrity: map['ikeIntegrity'] as String,
      ipsecEncryption: map['ipsecEncryption'] as String,
      ipsecIntegrity: map['ipsecIntegrity'] as String,
      pfsGroup: map['pfsGroup'] as String,
      saDatasize: map['saDatasize'] as int,
      saLifetime: map['saLifetime'] as int,
    );
  }
}

