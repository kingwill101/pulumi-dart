// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketIpFilterPublicNetworkSource {
  /// The list of public IPv4, IPv6 cidr ranges that are allowed to access the bucket.
  final pulumi.Input<List<String>> allowedIpCidrRanges;

  /// Creates a new [GetBucketIpFilterPublicNetworkSource].
  /// [allowedIpCidrRanges] The list of public IPv4, IPv6 cidr ranges that are allowed to access the bucket.
  const GetBucketIpFilterPublicNetworkSource({
    required this.allowedIpCidrRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpCidrRanges': allowedIpCidrRanges,
    };
  }

  factory GetBucketIpFilterPublicNetworkSource.fromMap(Map<String, dynamic> map) {
    return GetBucketIpFilterPublicNetworkSource(
      allowedIpCidrRanges: pulumi.Input.fromValue((map['allowedIpCidrRanges'] as List).cast<String>()),
    );
  }
}
