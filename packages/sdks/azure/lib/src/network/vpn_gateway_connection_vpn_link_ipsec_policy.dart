// ignore_for_file: unused_element, unnecessary_cast


class VpnGatewayConnectionVpnLinkIpsecPolicy {
  /// The DH Group used in IKE Phase 1 for initial SA. Possible values are `None`, `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384`.
  final String dhGroup;
  /// The IPSec encryption algorithm (IKE phase 1). Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256`, `None`.
  final String encryptionAlgorithm;
  /// The IKE encryption algorithm (IKE phase 2). Possible values are `DES`, `DES3`, `AES128`, `AES192`, `AES256`, `GCMAES128`, `GCMAES256`.
  final String ikeEncryptionAlgorithm;
  /// The IKE integrity algorithm (IKE phase 2). Possible values are `MD5`, `SHA1`, `SHA256`, `SHA384`, `GCMAES128`, `GCMAES256`.
  final String ikeIntegrityAlgorithm;
  /// The IPSec integrity algorithm (IKE phase 1). Possible values are `MD5`, `SHA1`, `SHA256`, `GCMAES128`, `GCMAES192`, `GCMAES256`.
  final String integrityAlgorithm;
  /// The Pfs Group used in IKE Phase 2 for the new child SA. Possible values are `None`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM`, `ECP256`, `ECP384`.
  final String pfsGroup;
  /// The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for the site to site VPN tunnel.
  final int saDataSizeKb;
  /// The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for the site to site VPN tunnel.
  final int saLifetimeSec;

  /// Creates a new [VpnGatewayConnectionVpnLinkIpsecPolicy].
  /// [dhGroup] The DH Group used in IKE Phase 1 for initial SA. Possible values are `None`, `DHGroup1`, `DHGroup2`, `DHGroup14`, `DHGroup24`, `DHGroup2048`, `ECP256`, `ECP384`.
  /// [encryptionAlgorithm] The IPSec encryption algorithm (IKE phase 1). Possible values are `AES128`, `AES192`, `AES256`, `DES`, `DES3`, `GCMAES128`, `GCMAES192`, `GCMAES256`, `None`.
  /// [ikeEncryptionAlgorithm] The IKE encryption algorithm (IKE phase 2). Possible values are `DES`, `DES3`, `AES128`, `AES192`, `AES256`, `GCMAES128`, `GCMAES256`.
  /// [ikeIntegrityAlgorithm] The IKE integrity algorithm (IKE phase 2). Possible values are `MD5`, `SHA1`, `SHA256`, `SHA384`, `GCMAES128`, `GCMAES256`.
  /// [integrityAlgorithm] The IPSec integrity algorithm (IKE phase 1). Possible values are `MD5`, `SHA1`, `SHA256`, `GCMAES128`, `GCMAES192`, `GCMAES256`.
  /// [pfsGroup] The Pfs Group used in IKE Phase 2 for the new child SA. Possible values are `None`, `PFS1`, `PFS2`, `PFS14`, `PFS24`, `PFS2048`, `PFSMM`, `ECP256`, `ECP384`.
  /// [saDataSizeKb] The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for the site to site VPN tunnel.
  /// [saLifetimeSec] The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for the site to site VPN tunnel.
  VpnGatewayConnectionVpnLinkIpsecPolicy({
    required this.dhGroup,
    required this.encryptionAlgorithm,
    required this.ikeEncryptionAlgorithm,
    required this.ikeIntegrityAlgorithm,
    required this.integrityAlgorithm,
    required this.pfsGroup,
    required this.saDataSizeKb,
    required this.saLifetimeSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhGroup': dhGroup,
      'encryptionAlgorithm': encryptionAlgorithm,
      'ikeEncryptionAlgorithm': ikeEncryptionAlgorithm,
      'ikeIntegrityAlgorithm': ikeIntegrityAlgorithm,
      'integrityAlgorithm': integrityAlgorithm,
      'pfsGroup': pfsGroup,
      'saDataSizeKb': saDataSizeKb,
      'saLifetimeSec': saLifetimeSec,
    };
  }

  factory VpnGatewayConnectionVpnLinkIpsecPolicy.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionVpnLinkIpsecPolicy(
      dhGroup: map['dhGroup'] as String,
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      ikeEncryptionAlgorithm: map['ikeEncryptionAlgorithm'] as String,
      ikeIntegrityAlgorithm: map['ikeIntegrityAlgorithm'] as String,
      integrityAlgorithm: map['integrityAlgorithm'] as String,
      pfsGroup: map['pfsGroup'] as String,
      saDataSizeKb: map['saDataSizeKb'] as int,
      saLifetimeSec: map['saLifetimeSec'] as int,
    );
  }
}

