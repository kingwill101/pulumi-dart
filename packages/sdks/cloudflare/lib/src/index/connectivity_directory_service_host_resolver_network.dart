// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityDirectoryServiceHostResolverNetwork {
  final pulumi.Input<List<String>?>? resolverIps;
  final pulumi.Input<String> tunnelId;

  /// Creates a new [ConnectivityDirectoryServiceHostResolverNetwork].
  /// [resolverIps] Optional.
  /// [tunnelId] Required.
  const ConnectivityDirectoryServiceHostResolverNetwork({
    this.resolverIps,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolverIps': ?resolverIps,
      'tunnelId': tunnelId,
    };
  }

  factory ConnectivityDirectoryServiceHostResolverNetwork.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceHostResolverNetwork(
      resolverIps: (() { final guardedValue = map['resolverIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
