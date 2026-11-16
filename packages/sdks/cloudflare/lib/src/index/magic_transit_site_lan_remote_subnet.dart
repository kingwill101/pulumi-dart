// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicTransitSiteLanRemoteSubnet {
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> localAliasPrefix;
  /// A valid CIDR notation representing an IP range.
  final pulumi.Input<String> remotePrefix;

  /// Creates a new [MagicTransitSiteLanRemoteSubnet].
  /// [localAliasPrefix] A valid CIDR notation representing an IP range.
  /// [remotePrefix] A valid CIDR notation representing an IP range.
  const MagicTransitSiteLanRemoteSubnet({
    required this.localAliasPrefix,
    required this.remotePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAliasPrefix': localAliasPrefix,
      'remotePrefix': remotePrefix,
    };
  }

  factory MagicTransitSiteLanRemoteSubnet.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanRemoteSubnet(
      localAliasPrefix: pulumi.Input.fromValue(map['localAliasPrefix'] as String),
      remotePrefix: pulumi.Input.fromValue(map['remotePrefix'] as String),
    );
  }
}
