// ignore_for_file: unused_element, unnecessary_cast


class GetRegionNetworkEndpointGroupServerlessDeployment {
  /// The platform of the NEG backend target(s). Possible values:
  /// API Gateway: apigateway.googleapis.com
  final String platform;
  /// The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask.
  /// The resource identified by this value is platform-specific and is as follows: API Gateway: The gateway ID, App Engine: The service name,
  /// Cloud Functions: The function name, Cloud Run: The service name
  final String resource;
  /// A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources
  /// on the same serverless platform without having to create multiple Network Endpoint Groups and backend resources.
  /// The fields parsed by this template are platform-specific and are as follows: API Gateway: The gateway ID,
  /// App Engine: The service and version, Cloud Functions: The function name, Cloud Run: The service and tag
  final String urlMask;
  /// The optional resource version. The version identified by this value is platform-specific and is follows:
  /// API Gateway: Unused, App Engine: The service version, Cloud Functions: Unused, Cloud Run: The service tag
  final String version;

  /// Creates a new [GetRegionNetworkEndpointGroupServerlessDeployment].
  /// [platform] The platform of the NEG backend target(s). Possible values:
  /// [resource] The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask.
  /// [urlMask] A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources
  /// [version] The optional resource version. The version identified by this value is platform-specific and is follows:
  GetRegionNetworkEndpointGroupServerlessDeployment({
    required this.platform,
    required this.resource,
    required this.urlMask,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
      'resource': resource,
      'urlMask': urlMask,
      'version': version,
    };
  }

  factory GetRegionNetworkEndpointGroupServerlessDeployment.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupServerlessDeployment(
      platform: map['platform'] as String,
      resource: map['resource'] as String,
      urlMask: map['urlMask'] as String,
      version: map['version'] as String,
    );
  }
}

