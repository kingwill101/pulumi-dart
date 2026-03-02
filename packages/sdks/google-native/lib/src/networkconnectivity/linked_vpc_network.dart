// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An existing VPC network.
class LinkedVpcNetwork {
  /// Optional. IP ranges encompassing the subnets to be excluded from peering.
  final pulumi.Input<List<String>>? excludeExportRanges;
  /// The URI of the VPC network resource.
  final pulumi.Input<String> uri;

  /// Creates a new [LinkedVpcNetwork].
  /// [excludeExportRanges] Optional. IP ranges encompassing the subnets to be excluded from peering.
  /// [uri] The URI of the VPC network resource.
  LinkedVpcNetwork({
    this.excludeExportRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'uri': uri,
    };
  }

  factory LinkedVpcNetwork.fromMap(Map<String, dynamic> map) {
    return LinkedVpcNetwork(
      excludeExportRanges: map['excludeExportRanges'] == null ? null : ((map['excludeExportRanges']! as List).cast<String>()).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

