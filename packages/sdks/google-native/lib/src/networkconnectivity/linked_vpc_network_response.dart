// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An existing VPC network.
class LinkedVpcNetworkResponse {
  /// Optional. IP ranges encompassing the subnets to be excluded from peering.
  final pulumi.Input<List<String>> excludeExportRanges;
  /// The URI of the VPC network resource.
  final pulumi.Input<String> uri;

  /// Creates a new [LinkedVpcNetworkResponse].
  /// [excludeExportRanges] Optional. IP ranges encompassing the subnets to be excluded from peering.
  /// [uri] The URI of the VPC network resource.
  LinkedVpcNetworkResponse({
    required this.excludeExportRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': excludeExportRanges,
      'uri': uri,
    };
  }

  factory LinkedVpcNetworkResponse.fromMap(Map<String, dynamic> map) {
    return LinkedVpcNetworkResponse(
      excludeExportRanges: pulumi.Input.fromValue((map['excludeExportRanges'] as List).cast<String>()),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

