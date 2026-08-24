// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanIpsecTunnelIpsecTunnelPskMetadata {
  /// The date and time the tunnel was last modified.
  final pulumi.Input<String> lastGeneratedOn;

  /// Creates a new [GetMagicWanIpsecTunnelIpsecTunnelPskMetadata].
  /// [lastGeneratedOn] The date and time the tunnel was last modified.
  const GetMagicWanIpsecTunnelIpsecTunnelPskMetadata({
    required this.lastGeneratedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastGeneratedOn': lastGeneratedOn,
    };
  }

  factory GetMagicWanIpsecTunnelIpsecTunnelPskMetadata.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelIpsecTunnelPskMetadata(
      lastGeneratedOn: pulumi.Input.fromValue(map['lastGeneratedOn'] as String),
    );
  }
}
