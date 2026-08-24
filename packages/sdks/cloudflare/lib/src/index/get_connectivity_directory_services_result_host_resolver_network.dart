// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServicesResultHostResolverNetwork {
  final pulumi.Input<List<String>> resolverIps;
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetConnectivityDirectoryServicesResultHostResolverNetwork].
  /// [resolverIps] Required.
  /// [tunnelId] Required.
  const GetConnectivityDirectoryServicesResultHostResolverNetwork({
    required this.resolverIps,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolverIps': resolverIps,
      'tunnelId': tunnelId,
    };
  }

  factory GetConnectivityDirectoryServicesResultHostResolverNetwork.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesResultHostResolverNetwork(
      resolverIps: pulumi.Input.fromValue((map['resolverIps'] as List).cast<String>()),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
