// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanIpsecTunnelPskMetadata {
  /// The date and time the tunnel was last modified.
  final pulumi.Input<String?>? lastGeneratedOn;

  /// Creates a new [MagicWanIpsecTunnelPskMetadata].
  /// [lastGeneratedOn] The date and time the tunnel was last modified.
  const MagicWanIpsecTunnelPskMetadata({
    this.lastGeneratedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastGeneratedOn': ?lastGeneratedOn,
    };
  }

  factory MagicWanIpsecTunnelPskMetadata.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelPskMetadata(
      lastGeneratedOn: (() { final guardedValue = map['lastGeneratedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
