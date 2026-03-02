// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketIpFilterPublicNetworkSource {
  /// The list of public IPv4 and IPv6 CIDR ranges that can access the bucket and its data.
  final pulumi.Input<List<String>> allowedIpCidrRanges;

  /// Creates a new [BucketIpFilterPublicNetworkSource].
  /// [allowedIpCidrRanges] The list of public IPv4 and IPv6 CIDR ranges that can access the bucket and its data.
  BucketIpFilterPublicNetworkSource({
    required this.allowedIpCidrRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpCidrRanges': allowedIpCidrRanges,
    };
  }

  factory BucketIpFilterPublicNetworkSource.fromMap(Map<String, dynamic> map) {
    return BucketIpFilterPublicNetworkSource(
      allowedIpCidrRanges: ((map['allowedIpCidrRanges'] as List).cast<String>()).input(),
    );
  }
}

