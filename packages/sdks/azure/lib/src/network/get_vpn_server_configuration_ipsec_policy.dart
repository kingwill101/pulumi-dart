// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnServerConfigurationIpsecPolicy {
  /// The DH Group, used in IKE Phase 1.
  final pulumi.Input<String> dhGroup;
  /// The IKE encryption algorithm, used for IKE Phase 2.
  final pulumi.Input<String> ikeEncryption;
  /// The IKE encryption integrity algorithm, used for IKE Phase 2.
  final pulumi.Input<String> ikeIntegrity;
  /// The IPSec encryption algorithm, used for IKE phase 1.
  final pulumi.Input<String> ipsecEncryption;
  /// The IPSec integrity algorithm, used for IKE phase 1.
  final pulumi.Input<String> ipsecIntegrity;
  /// The Pfs Group, used in IKE Phase 2.
  final pulumi.Input<String> pfsGroup;
  /// The IPSec Security Association payload size in KB for a Site-to-Site VPN tunnel.
  final pulumi.Input<int> saDataSizeKilobytes;
  /// The IPSec Security Association lifetime in seconds for a Site-to-Site VPN tunnel.
  final pulumi.Input<int> saLifetimeSeconds;

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
      dhGroup: (map['dhGroup'] as String).input(),
      ikeEncryption: (map['ikeEncryption'] as String).input(),
      ikeIntegrity: (map['ikeIntegrity'] as String).input(),
      ipsecEncryption: (map['ipsecEncryption'] as String).input(),
      ipsecIntegrity: (map['ipsecIntegrity'] as String).input(),
      pfsGroup: (map['pfsGroup'] as String).input(),
      saDataSizeKilobytes: (map['saDataSizeKilobytes'] as int).input(),
      saLifetimeSeconds: (map['saLifetimeSeconds'] as int).input(),
    );
  }
}

