// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Details of a Google Service sending packets to a VPC network. Although the source IP might be a publicly routable address, some Google Services use special routes within Google production infrastructure to reach Compute Engine Instances. https://cloud.google.com/vpc/docs/routes#special_return_paths
class GoogleServiceInfoResponseNetworkmanagementV1beta1 {
  /// Recognized type of a Google Service.
  final pulumi.Input<String> googleServiceType;
  /// Source IP address.
  final pulumi.Input<String> sourceIp;

  /// Creates a new [GoogleServiceInfoResponseNetworkmanagementV1beta1].
  /// [googleServiceType] Recognized type of a Google Service.
  /// [sourceIp] Source IP address.
  const GoogleServiceInfoResponseNetworkmanagementV1beta1({
    required this.googleServiceType,
    required this.sourceIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleServiceType': googleServiceType,
      'sourceIp': sourceIp,
    };
  }

  factory GoogleServiceInfoResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return GoogleServiceInfoResponseNetworkmanagementV1beta1(
      googleServiceType: pulumi.Input.fromValue(map['googleServiceType'] as String),
      sourceIp: pulumi.Input.fromValue(map['sourceIp'] as String),
    );
  }
}

