// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An IPSec Policy configuration for a virtual network gateway connection.
class IpsecPolicy {
  /// The DH Group used in IKE Phase 1 for initial SA.
  final pulumi.Input<String> dhGroup;
  /// The IKE encryption algorithm (IKE phase 2).
  final pulumi.Input<String> ikeEncryption;
  /// The IKE integrity algorithm (IKE phase 2).
  final pulumi.Input<String> ikeIntegrity;
  /// The IPSec encryption algorithm (IKE phase 1).
  final pulumi.Input<String> ipsecEncryption;
  /// The IPSec integrity algorithm (IKE phase 1).
  final pulumi.Input<String> ipsecIntegrity;
  /// The Pfs Group used in IKE Phase 2 for new child SA.
  final pulumi.Input<String> pfsGroup;
  /// The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for a site to site VPN tunnel.
  final pulumi.Input<int> saDataSizeKilobytes;
  /// The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for a site to site VPN tunnel.
  final pulumi.Input<int> saLifeTimeSeconds;

  /// Creates a new [IpsecPolicy].
  /// [dhGroup] The DH Group used in IKE Phase 1 for initial SA.
  /// [ikeEncryption] The IKE encryption algorithm (IKE phase 2).
  /// [ikeIntegrity] The IKE integrity algorithm (IKE phase 2).
  /// [ipsecEncryption] The IPSec encryption algorithm (IKE phase 1).
  /// [ipsecIntegrity] The IPSec integrity algorithm (IKE phase 1).
  /// [pfsGroup] The Pfs Group used in IKE Phase 2 for new child SA.
  /// [saDataSizeKilobytes] The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for a site to site VPN tunnel.
  /// [saLifeTimeSeconds] The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for a site to site VPN tunnel.
  const IpsecPolicy({
    required this.dhGroup,
    required this.ikeEncryption,
    required this.ikeIntegrity,
    required this.ipsecEncryption,
    required this.ipsecIntegrity,
    required this.pfsGroup,
    required this.saDataSizeKilobytes,
    required this.saLifeTimeSeconds,
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
      'saLifeTimeSeconds': saLifeTimeSeconds,
    };
  }

  factory IpsecPolicy.fromMap(Map<String, dynamic> map) {
    return IpsecPolicy(
      dhGroup: pulumi.Input.fromValue(map['dhGroup'] as String),
      ikeEncryption: pulumi.Input.fromValue(map['ikeEncryption'] as String),
      ikeIntegrity: pulumi.Input.fromValue(map['ikeIntegrity'] as String),
      ipsecEncryption: pulumi.Input.fromValue(map['ipsecEncryption'] as String),
      ipsecIntegrity: pulumi.Input.fromValue(map['ipsecIntegrity'] as String),
      pfsGroup: pulumi.Input.fromValue(map['pfsGroup'] as String),
      saDataSizeKilobytes: pulumi.Input.fromValue(map['saDataSizeKilobytes'] as int),
      saLifeTimeSeconds: pulumi.Input.fromValue(map['saLifeTimeSeconds'] as int),
    );
  }
}

