// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities {
  /// A custom IKE ID of type FQDN that may be used to identity the IPsec tunnel. The
  /// generated IKE IDs can still be used even if this custom value is specified.
  final pulumi.Input<String> fqdnId;

  /// Creates a new [GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities].
  /// [fqdnId] A custom IKE ID of type FQDN that may be used to identity the IPsec tunnel. The
  const GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities({
    required this.fqdnId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdnId': fqdnId,
    };
  }

  factory GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelIpsecTunnelCustomRemoteIdentities(
      fqdnId: pulumi.Input.fromValue(map['fqdnId'] as String),
    );
  }
}
