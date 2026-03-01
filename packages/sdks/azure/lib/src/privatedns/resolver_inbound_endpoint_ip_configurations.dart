// ignore_for_file: unused_element, unnecessary_cast


class ResolverInboundEndpointIpConfigurations {
  /// Private IP address of the IP configuration.
  final String? privateIpAddress;
  /// Private IP address allocation method. Allowed value is `Dynamic` and `Static`. Defaults to `Dynamic`.
  final String? privateIpAllocationMethod;
  /// The subnet ID of the IP configuration.
  final String subnetId;

  /// Creates a new [ResolverInboundEndpointIpConfigurations].
  /// [privateIpAddress] Private IP address of the IP configuration.
  /// [privateIpAllocationMethod] Private IP address allocation method. Allowed value is `Dynamic` and `Static`. Defaults to `Dynamic`.
  /// [subnetId] The subnet ID of the IP configuration.
  ResolverInboundEndpointIpConfigurations({
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnetId': subnetId,
    };
  }

  factory ResolverInboundEndpointIpConfigurations.fromMap(Map<String, dynamic> map) {
    return ResolverInboundEndpointIpConfigurations(
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : map['privateIpAllocationMethod'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

