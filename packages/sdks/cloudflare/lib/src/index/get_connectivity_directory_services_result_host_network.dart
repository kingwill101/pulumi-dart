// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectivityDirectoryServicesResultHostNetwork {
  final pulumi.Input<String> tunnelId;

  /// Creates a new [GetConnectivityDirectoryServicesResultHostNetwork].
  /// [tunnelId] Required.
  const GetConnectivityDirectoryServicesResultHostNetwork({
    required this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tunnelId': tunnelId,
    };
  }

  factory GetConnectivityDirectoryServicesResultHostNetwork.fromMap(Map<String, dynamic> map) {
    return GetConnectivityDirectoryServicesResultHostNetwork(
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
    );
  }
}
