// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironment.
class GetEnvironmentResult {
  /// The ID of the Custom Domain Verification for this Container App Environment.
  final String? customDomainVerificationId;
  /// The default publicly resolvable name of this Container App Environment. This is generated at creation time to be globally unique.
  final String? defaultDomain;
  /// The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  final String? dockerBridgeCidr;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the Subnet in use by the Container Apps Control Plane.
  final String? infrastructureSubnetId;
  /// Does the Container App Environment operate in Internal Load Balancing Mode?
  final bool? internalLoadBalancerEnabled;
  /// The Azure Location where this Container App Environment exists.
  final String? location;
  /// The name of the Log Analytics Workspace this Container Apps Managed Environment is linked to.
  final String? logAnalyticsWorkspaceName;
  final String? name;
  /// The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  final String? platformReservedCidr;
  /// The IP address from the IP range defined by `platformReservedCidr` that is reserved for the internal DNS server.
  final String? platformReservedDnsIpAddress;
  /// The public network access setting for this Container App Environment.
  final String? publicNetworkAccess;
  final String? resourceGroupName;
  /// The Static IP address of the Environment.
  final String? staticIpAddress;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetEnvironmentResult].
  /// [customDomainVerificationId] The ID of the Custom Domain Verification for this Container App Environment.
  /// [defaultDomain] The default publicly resolvable name of this Container App Environment. This is generated at creation time to be globally unique.
  /// [dockerBridgeCidr] The network addressing in which the Container Apps in this Container App Environment will reside in CIDR notation.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [infrastructureSubnetId] The ID of the Subnet in use by the Container Apps Control Plane.
  /// [internalLoadBalancerEnabled] Does the Container App Environment operate in Internal Load Balancing Mode?
  /// [location] The Azure Location where this Container App Environment exists.
  /// [logAnalyticsWorkspaceName] The name of the Log Analytics Workspace this Container Apps Managed Environment is linked to.
  /// [name] Optional.
  /// [platformReservedCidr] The IP range, in CIDR notation, that is reserved for environment infrastructure IP addresses.
  /// [platformReservedDnsIpAddress] The IP address from the IP range defined by `platformReservedCidr` that is reserved for the internal DNS server.
  /// [publicNetworkAccess] The public network access setting for this Container App Environment.
  /// [resourceGroupName] Optional.
  /// [staticIpAddress] The Static IP address of the Environment.
  /// [tags] A mapping of tags assigned to the resource.
  const GetEnvironmentResult({
    this.customDomainVerificationId,
    this.defaultDomain,
    this.dockerBridgeCidr,
    this.id,
    this.infrastructureSubnetId,
    this.internalLoadBalancerEnabled,
    this.location,
    this.logAnalyticsWorkspaceName,
    this.name,
    this.platformReservedCidr,
    this.platformReservedDnsIpAddress,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.staticIpAddress,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultDomain': ?defaultDomain,
      'dockerBridgeCidr': ?dockerBridgeCidr,
      'id': ?id,
      'infrastructureSubnetId': ?infrastructureSubnetId,
      'internalLoadBalancerEnabled': ?internalLoadBalancerEnabled,
      'location': ?location,
      'logAnalyticsWorkspaceName': ?logAnalyticsWorkspaceName,
      'name': ?name,
      'platformReservedCidr': ?platformReservedCidr,
      'platformReservedDnsIpAddress': ?platformReservedDnsIpAddress,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'staticIpAddress': ?staticIpAddress,
      'tags': ?tags,
    };
  }

  factory GetEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentResult(
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDomain: (() { final guardedValue = map['defaultDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerBridgeCidr: (() { final guardedValue = map['dockerBridgeCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      infrastructureSubnetId: (() { final guardedValue = map['infrastructureSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalLoadBalancerEnabled: (() { final guardedValue = map['internalLoadBalancerEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logAnalyticsWorkspaceName: (() { final guardedValue = map['logAnalyticsWorkspaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformReservedCidr: (() { final guardedValue = map['platformReservedCidr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformReservedDnsIpAddress: (() { final guardedValue = map['platformReservedDnsIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticIpAddress: (() { final guardedValue = map['staticIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
