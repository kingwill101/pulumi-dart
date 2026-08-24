// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectivityDirectoryServiceHostNetwork {
  final pulumi.Input<String> tunnelId;

  /// Creates a new [ConnectivityDirectoryServiceHostNetwork].
  /// [tunnelId] Required.
  const ConnectivityDirectoryServiceHostNetwork({
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tunnelId': tunnelId,
    };
  }

  factory ConnectivityDirectoryServiceHostNetwork.fromMap(Map<String, dynamic> map) {
    return ConnectivityDirectoryServiceHostNetwork(
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
