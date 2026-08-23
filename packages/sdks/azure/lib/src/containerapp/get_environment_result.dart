// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The ID of the Custom Domain Verification for this Container App Environment.
  final String customDomainVerificationId;
  /// The default publicly resolvable name of this Container App Environment. This is generated at creation time to be globally unique.
  final String defaultDomain;
  /// The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  final String dockerBridgeCidr;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the Subnet in use by the Container Apps Control Plane.
  final String infrastructureSubnetId;
  /// Does the Container App Environment operate in Internal Load Balancing Mode?
  final bool internalLoadBalancerEnabled;
  /// The Azure Location where this Container App Environment exists.
  final String location;
  /// The name of the Log Analytics Workspace this Container Apps Managed Environment is linked to.
  final String logAnalyticsWorkspaceName;
  final String name;
  /// The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  final String platformReservedCidr;
  /// The IP address from the IP range defined by `platformReservedCidr` that is reserved for the internal DNS server.
  final String platformReservedDnsIpAddress;
  /// The public network access setting for this Container App Environment.
  final String publicNetworkAccess;
  final String resourceGroupName;
  /// The Static IP address of the Environment.
  final String staticIpAddress;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetEnvironmentResult].
  /// [customDomainVerificationId] The ID of the Custom Domain Verification for this Container App Environment.
  /// [defaultDomain] The default publicly resolvable name of this Container App Environment. This is generated at creation time to be globally unique.
  /// [dockerBridgeCidr] The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [infrastructureSubnetId] The ID of the Subnet in use by the Container Apps Control Plane.
  /// [internalLoadBalancerEnabled] Does the Container App Environment operate in Internal Load Balancing Mode?
  /// [location] The Azure Location where this Container App Environment exists.
  /// [logAnalyticsWorkspaceName] The name of the Log Analytics Workspace this Container Apps Managed Environment is linked to.
  /// [name] Required.
  /// [platformReservedCidr] The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  /// [platformReservedDnsIpAddress] The IP address from the IP range defined by `platformReservedCidr` that is reserved for the internal DNS server.
  /// [publicNetworkAccess] The public network access setting for this Container App Environment.
  /// [resourceGroupName] Required.
  /// [staticIpAddress] The Static IP address of the Environment.
  /// [tags] A mapping of tags assigned to the resource.
  const GetEnvironmentResult({
    required this.customDomainVerificationId,
    required this.defaultDomain,
    required this.dockerBridgeCidr,
    required this.id,
    required this.infrastructureSubnetId,
    required this.internalLoadBalancerEnabled,
    required this.location,
    required this.logAnalyticsWorkspaceName,
    required this.name,
    required this.platformReservedCidr,
    required this.platformReservedDnsIpAddress,
    required this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.staticIpAddress,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainVerificationId': customDomainVerificationId,
      'defaultDomain': defaultDomain,
      'dockerBridgeCidr': dockerBridgeCidr,
      'id': id,
      'infrastructureSubnetId': infrastructureSubnetId,
      'internalLoadBalancerEnabled': internalLoadBalancerEnabled,
      'location': location,
      'logAnalyticsWorkspaceName': logAnalyticsWorkspaceName,
      'name': name,
      'platformReservedCidr': platformReservedCidr,
      'platformReservedDnsIpAddress': platformReservedDnsIpAddress,
      'publicNetworkAccess': publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'staticIpAddress': staticIpAddress,
      'tags': tags,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      defaultDomain: map['defaultDomain'] as String,
      dockerBridgeCidr: map['dockerBridgeCidr'] as String,
      id: map['id'] as String,
      infrastructureSubnetId: map['infrastructureSubnetId'] as String,
      internalLoadBalancerEnabled: map['internalLoadBalancerEnabled'] as bool,
      location: map['location'] as String,
      logAnalyticsWorkspaceName: map['logAnalyticsWorkspaceName'] as String,
      name: map['name'] as String,
      platformReservedCidr: map['platformReservedCidr'] as String,
      platformReservedDnsIpAddress: map['platformReservedDnsIpAddress'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      staticIpAddress: map['staticIpAddress'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
