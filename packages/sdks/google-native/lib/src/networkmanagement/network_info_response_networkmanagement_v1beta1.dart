// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine network.
class NetworkInfoResponseNetworkmanagementV1beta1 {
  /// Name of a Compute Engine network.
  final pulumi.Input<String> displayName;

  /// The IP range that matches the test.
  final pulumi.Input<String> matchedIpRange;

  /// URI of a Compute Engine network.
  final pulumi.Input<String> uri;

  /// Creates a new [NetworkInfoResponseNetworkmanagementV1beta1].
  /// [displayName] Name of a Compute Engine network.
  /// [matchedIpRange] The IP range that matches the test.
  /// [uri] URI of a Compute Engine network.
  NetworkInfoResponseNetworkmanagementV1beta1({
    required this.displayName,
    required this.matchedIpRange,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'matchedIpRange': matchedIpRange,
      'uri': uri,
    };
  }

  factory NetworkInfoResponseNetworkmanagementV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInfoResponseNetworkmanagementV1beta1(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      matchedIpRange: pulumi.Input.fromValue(map['matchedIpRange'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
