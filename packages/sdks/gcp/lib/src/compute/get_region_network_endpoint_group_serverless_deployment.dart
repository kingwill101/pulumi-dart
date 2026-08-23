// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionNetworkEndpointGroupServerlessDeployment {
  /// The platform of the NEG backend target(s). Possible values:
  /// API Gateway: apigateway.googleapis.com
  final pulumi.Input<String> platform;
  /// The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask.
  /// The resource identified by this value is platform-specific and is as follows: API Gateway: The gateway ID, App Engine: The service name,
  /// Cloud Functions: The function name, Cloud Run: The service name
  final pulumi.Input<String> resource;
  /// A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources
  /// on the same serverless platform without having to create multiple Network Endpoint Groups and backend resources.
  /// The fields parsed by this template are platform-specific and are as follows: API Gateway: The gateway ID,
  /// App Engine: The service and version, Cloud Functions: The function name, Cloud Run: The service and tag
  final pulumi.Input<String> urlMask;
  /// The optional resource version. The version identified by this value is platform-specific and is follows:
  /// API Gateway: Unused, App Engine: The service version, Cloud Functions: Unused, Cloud Run: The service tag
  final pulumi.Input<String> version;

  /// Creates a new [GetRegionNetworkEndpointGroupServerlessDeployment].
  /// [platform] The platform of the NEG backend target(s). Possible values:
  /// [resource] The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask.
  /// [urlMask] A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources
  /// [version] The optional resource version. The version identified by this value is platform-specific and is follows:
  const GetRegionNetworkEndpointGroupServerlessDeployment({
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
      platform: pulumi.Input.fromValue(map['platform'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      urlMask: pulumi.Input.fromValue(map['urlMask'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
