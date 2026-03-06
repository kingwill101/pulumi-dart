// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a serverless network endpoint group (NEG). The platform must be provided. Note: The target backend service must be in the same project and located in the same region as the Serverless NEG.
class NetworkEndpointGroupServerlessDeploymentComputeBeta {
  /// The platform of the backend target(s) of this NEG. The only supported value is API Gateway: apigateway.googleapis.com.
  final pulumi.Input<String>? platform;
  /// The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask. The resource identified by this value is platform-specific and is as follows: 1. API Gateway: The gateway ID 2. App Engine: The service name 3. Cloud Functions: The function name 4. Cloud Run: The service name
  final pulumi.Input<String>? resource;
  /// A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources on the same serverless platform without having to create multiple Network Endpoint Groups and backend resources. The fields parsed by this template are platform-specific and are as follows: 1. API Gateway: The gateway ID 2. App Engine: The service and version 3. Cloud Functions: The function name 4. Cloud Run: The service and tag
  final pulumi.Input<String>? urlMask;
  /// The optional resource version. The version identified by this value is platform-specific and is follows: 1. API Gateway: Unused 2. App Engine: The service version 3. Cloud Functions: Unused 4. Cloud Run: The service tag
  final pulumi.Input<String>? version;

  /// Creates a new [NetworkEndpointGroupServerlessDeploymentComputeBeta].
  /// [platform] The platform of the backend target(s) of this NEG. The only supported value is API Gateway: apigateway.googleapis.com.
  /// [resource] The user-defined name of the workload/instance. This value must be provided explicitly or in the urlMask. The resource identified by this value is platform-specific and is as follows: 1. API Gateway: The gateway ID 2. App Engine: The service name 3. Cloud Functions: The function name 4. Cloud Run: The service name
  /// [urlMask] A template to parse platform-specific fields from a request URL. URL mask allows for routing to multiple resources on the same serverless platform without having to create multiple Network Endpoint Groups and backend resources. The fields parsed by this template are platform-specific and are as follows: 1. API Gateway: The gateway ID 2. App Engine: The service and version 3. Cloud Functions: The function name 4. Cloud Run: The service and tag
  /// [version] The optional resource version. The version identified by this value is platform-specific and is follows: 1. API Gateway: Unused 2. App Engine: The service version 3. Cloud Functions: Unused 4. Cloud Run: The service tag
  const NetworkEndpointGroupServerlessDeploymentComputeBeta({
    this.platform,
    this.resource,
    this.urlMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': ?platform,
      'resource': ?resource,
      'urlMask': ?urlMask,
      'version': ?version,
    };
  }

  factory NetworkEndpointGroupServerlessDeploymentComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupServerlessDeploymentComputeBeta(
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlMask: (() { final guardedValue = map['urlMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

