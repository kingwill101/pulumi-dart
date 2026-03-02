// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An IP range provided in any one of the supported formats.
class IpRangeResponse {
  /// The name of an `ExternalAddress` resource. The external address must have been reserved in the scope of this external access rule's parent network policy. Provide the external address name in the form of `projects/{project}/locations/{location}/privateClouds/{private_cloud}/externalAddresses/{external_address}`. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`.
  final pulumi.Input<String> externalAddress;
  /// A single IP address. For example: `10.0.0.5`.
  final pulumi.Input<String> ipAddress;
  /// An IP address range in the CIDR format. For example: `10.0.0.0/24`.
  final pulumi.Input<String> ipAddressRange;

  /// Creates a new [IpRangeResponse].
  /// [externalAddress] The name of an `ExternalAddress` resource. The external address must have been reserved in the scope of this external access rule's parent network policy. Provide the external address name in the form of `projects/{project}/locations/{location}/privateClouds/{private_cloud}/externalAddresses/{external_address}`. For example: `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`.
  /// [ipAddress] A single IP address. For example: `10.0.0.5`.
  /// [ipAddressRange] An IP address range in the CIDR format. For example: `10.0.0.0/24`.
  IpRangeResponse({
    required this.externalAddress,
    required this.ipAddress,
    required this.ipAddressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAddress': externalAddress,
      'ipAddress': ipAddress,
      'ipAddressRange': ipAddressRange,
    };
  }

  factory IpRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpRangeResponse(
      externalAddress: (map['externalAddress'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      ipAddressRange: (map['ipAddressRange'] as String).input(),
    );
  }
}

