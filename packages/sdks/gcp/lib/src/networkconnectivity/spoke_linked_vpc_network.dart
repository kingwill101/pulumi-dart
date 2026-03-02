// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpokeLinkedVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  final pulumi.Input<List<String>>? excludeExportRanges;
  /// IP ranges allowed to be included from peering.
  final pulumi.Input<List<String>>? includeExportRanges;
  /// The URI of the VPC network resource.
  final pulumi.Input<String> uri;

  /// Creates a new [SpokeLinkedVpcNetwork].
  /// [excludeExportRanges] IP ranges encompassing the subnets to be excluded from peering.
  /// [includeExportRanges] IP ranges allowed to be included from peering.
  /// [uri] The URI of the VPC network resource.
  SpokeLinkedVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'includeExportRanges': ?includeExportRanges,
      'uri': uri,
    };
  }

  factory SpokeLinkedVpcNetwork.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedVpcNetwork(
      excludeExportRanges: map['excludeExportRanges'] == null ? null : ((map['excludeExportRanges']! as List).cast<String>()).input(),
      includeExportRanges: map['includeExportRanges'] == null ? null : ((map['includeExportRanges']! as List).cast<String>()).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

