// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanIpsecTunnelCustomRemoteIdentities {
  /// A custom IKE ID of type FQDN that may be used to identity the IPsec tunnel. The
  /// generated IKE IDs can still be used even if this custom value is specified.
  final pulumi.Input<String?>? fqdnId;

  /// Creates a new [MagicWanIpsecTunnelCustomRemoteIdentities].
  /// [fqdnId] A custom IKE ID of type FQDN that may be used to identity the IPsec tunnel. The
  const MagicWanIpsecTunnelCustomRemoteIdentities({
    this.fqdnId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdnId': ?fqdnId,
    };
  }

  factory MagicWanIpsecTunnelCustomRemoteIdentities.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelCustomRemoteIdentities(
      fqdnId: (() { final guardedValue = map['fqdnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
