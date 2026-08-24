// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServiceHostNetwork {
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetConnectivityDirectoryServiceHostNetwork].
  /// [tunnelId] Required.
  const GetConnectivityDirectoryServiceHostNetwork({
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tunnelId': tunnelId,
    };
  }

  factory GetConnectivityDirectoryServiceHostNetwork.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServiceHostNetwork(
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
