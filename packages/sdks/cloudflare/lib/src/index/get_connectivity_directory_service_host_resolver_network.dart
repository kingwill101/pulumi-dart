// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServiceHostResolverNetwork {
  final pulumi.Input<List<String>> resolverIps;
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetConnectivityDirectoryServiceHostResolverNetwork].
  /// [resolverIps] Required.
  /// [tunnelId] Required.
  const GetConnectivityDirectoryServiceHostResolverNetwork({
    required this.resolverIps,
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resolverIps': resolverIps,
      'tunnelId': tunnelId,
    };
  }

  factory GetConnectivityDirectoryServiceHostResolverNetwork.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceHostResolverNetwork(
      resolverIps: pulumi.Input.fromValue((map['resolverIps'] as List).cast<String>()),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
