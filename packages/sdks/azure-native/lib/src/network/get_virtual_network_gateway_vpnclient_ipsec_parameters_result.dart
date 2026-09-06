// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetworkGatewayVpnclientIpsecParameters.
class GetVirtualNetworkGatewayVpnclientIpsecParametersResult {
  /// The DH Group used in IKE Phase 1 for initial SA.
  final String? dhGroup;
  /// The IKE encryption algorithm (IKE phase 2).
  final String? ikeEncryption;
  /// The IKE integrity algorithm (IKE phase 2).
  final String? ikeIntegrity;
  /// The IPSec encryption algorithm (IKE phase 1).
  final String? ipsecEncryption;
  /// The IPSec integrity algorithm (IKE phase 1).
  final String? ipsecIntegrity;
  /// The Pfs Group used in IKE Phase 2 for new child SA.
  final String? pfsGroup;
  /// The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for P2S client..
  final int? saDataSizeKilobytes;
  /// The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for P2S client.
  final int? saLifeTimeSeconds;

  /// Creates a new [GetVirtualNetworkGatewayVpnclientIpsecParametersResult].
  /// [dhGroup] The DH Group used in IKE Phase 1 for initial SA.
  /// [ikeEncryption] The IKE encryption algorithm (IKE phase 2).
  /// [ikeIntegrity] The IKE integrity algorithm (IKE phase 2).
  /// [ipsecEncryption] The IPSec encryption algorithm (IKE phase 1).
  /// [ipsecIntegrity] The IPSec integrity algorithm (IKE phase 1).
  /// [pfsGroup] The Pfs Group used in IKE Phase 2 for new child SA.
  /// [saDataSizeKilobytes] The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for P2S client..
  /// [saLifeTimeSeconds] The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for P2S client.
  const GetVirtualNetworkGatewayVpnclientIpsecParametersResult({
    this.dhGroup,
    this.ikeEncryption,
    this.ikeIntegrity,
    this.ipsecEncryption,
    this.ipsecIntegrity,
    this.pfsGroup,
    this.saDataSizeKilobytes,
    this.saLifeTimeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhGroup': ?dhGroup,
      'ikeEncryption': ?ikeEncryption,
      'ikeIntegrity': ?ikeIntegrity,
      'ipsecEncryption': ?ipsecEncryption,
      'ipsecIntegrity': ?ipsecIntegrity,
      'pfsGroup': ?pfsGroup,
      'saDataSizeKilobytes': ?saDataSizeKilobytes,
      'saLifeTimeSeconds': ?saLifeTimeSeconds,
    };
  }

  factory GetVirtualNetworkGatewayVpnclientIpsecParametersResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnclientIpsecParametersResult(
      dhGroup: (() { final guardedValue = map['dhGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ikeEncryption: (() { final guardedValue = map['ikeEncryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ikeIntegrity: (() { final guardedValue = map['ikeIntegrity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipsecEncryption: (() { final guardedValue = map['ipsecEncryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipsecIntegrity: (() { final guardedValue = map['ipsecIntegrity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pfsGroup: (() { final guardedValue = map['pfsGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      saDataSizeKilobytes: (() { final guardedValue = map['saDataSizeKilobytes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      saLifeTimeSeconds: (() { final guardedValue = map['saLifeTimeSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
