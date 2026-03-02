// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_service_config_direct_vpc_network_interface.dart';
import 'get_function_service_config_secret_environment_variable.dart';
import 'get_function_service_config_secret_volume.dart';

class GetFunctionServiceConfig {
  /// Whether 100% of traffic is routed to the latest revision. Defaults to true.
  final pulumi.Input<bool> allTrafficOnLatestRevision;
  /// The number of CPUs used in a single container instance. Default value is calculated from available memory.
  final pulumi.Input<String> availableCpu;
  /// The amount of memory available for a function.
  /// Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
  /// supplied the value is interpreted as bytes.
  final pulumi.Input<String> availableMemory;
  /// The binary authorization policy to be checked when deploying the Cloud Run service.
  final pulumi.Input<String> binaryAuthorizationPolicy;
  /// Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY. Possible values: ["VPC_EGRESS_ALL_TRAFFIC", "VPC_EGRESS_PRIVATE_RANGES_ONLY"]
  final pulumi.Input<String> directVpcEgress;
  /// The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.
  final pulumi.Input<List<GetFunctionServiceConfigDirectVpcNetworkInterface>> directVpcNetworkInterfaces;
  /// Environment variables that shall be available during function execution.
  final pulumi.Input<Map<String, String>> environmentVariables;
  /// URIs of the Service deployed
  final pulumi.Input<String> gcfUri;
  /// Available ingress settings. Defaults to "ALLOW_ALL" if unspecified. Default value: "ALLOW_ALL" Possible values: ["ALLOW_ALL", "ALLOW_INTERNAL_ONLY", "ALLOW_INTERNAL_AND_GCLB"]
  final pulumi.Input<String> ingressSettings;
  /// The limit on the maximum number of function instances that may coexist at a
  /// given time.
  final pulumi.Input<int> maxInstanceCount;
  /// Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final pulumi.Input<int> maxInstanceRequestConcurrency;
  /// The limit on the minimum number of function instances that may coexist at a
  /// given time.
  final pulumi.Input<int> minInstanceCount;
  /// Secret environment variables configuration.
  final pulumi.Input<List<GetFunctionServiceConfigSecretEnvironmentVariable>> secretEnvironmentVariables;
  /// Secret volumes configuration.
  final pulumi.Input<List<GetFunctionServiceConfigSecretVolume>> secretVolumes;
  /// Name of the service associated with a Function.
  final pulumi.Input<String> service;
  /// The email of the service account for this function.
  final pulumi.Input<String> serviceAccountEmail;
  /// The function execution timeout. Execution is considered failed and
  /// can be terminated if the function is not completed at the end of the
  /// timeout period. Defaults to 60 seconds.
  final pulumi.Input<int> timeoutSeconds;
  /// URI of the Service deployed.
  final pulumi.Input<String> uri;
  /// The Serverless VPC Access connector that this cloud function can connect to.
  final pulumi.Input<String> vpcConnector;
  /// Available egress settings. Possible values: ["VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED", "PRIVATE_RANGES_ONLY", "ALL_TRAFFIC"]
  final pulumi.Input<String> vpcConnectorEgressSettings;

  /// Creates a new [GetFunctionServiceConfig].
  /// [allTrafficOnLatestRevision] Whether 100% of traffic is routed to the latest revision. Defaults to true.
  /// [availableCpu] The number of CPUs used in a single container instance. Default value is calculated from available memory.
  /// [availableMemory] The amount of memory available for a function.
  /// [binaryAuthorizationPolicy] The binary authorization policy to be checked when deploying the Cloud Run service.
  /// [directVpcEgress] Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY. Possible values: ["VPC_EGRESS_ALL_TRAFFIC", "VPC_EGRESS_PRIVATE_RANGES_ONLY"]
  /// [directVpcNetworkInterfaces] The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [gcfUri] URIs of the Service deployed
  /// [ingressSettings] Available ingress settings. Defaults to "ALLOW_ALL" if unspecified. Default value: "ALLOW_ALL" Possible values: ["ALLOW_ALL", "ALLOW_INTERNAL_ONLY", "ALLOW_INTERNAL_AND_GCLB"]
  /// [maxInstanceCount] The limit on the maximum number of function instances that may coexist at a
  /// [maxInstanceRequestConcurrency] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  /// [minInstanceCount] The limit on the minimum number of function instances that may coexist at a
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [service] Name of the service associated with a Function.
  /// [serviceAccountEmail] The email of the service account for this function.
  /// [timeoutSeconds] The function execution timeout. Execution is considered failed and
  /// [uri] URI of the Service deployed.
  /// [vpcConnector] The Serverless VPC Access connector that this cloud function can connect to.
  /// [vpcConnectorEgressSettings] Available egress settings. Possible values: ["VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED", "PRIVATE_RANGES_ONLY", "ALL_TRAFFIC"]
  GetFunctionServiceConfig({
    required this.allTrafficOnLatestRevision,
    required this.availableCpu,
    required this.availableMemory,
    required this.binaryAuthorizationPolicy,
    required this.directVpcEgress,
    required this.directVpcNetworkInterfaces,
    required this.environmentVariables,
    required this.gcfUri,
    required this.ingressSettings,
    required this.maxInstanceCount,
    required this.maxInstanceRequestConcurrency,
    required this.minInstanceCount,
    required this.secretEnvironmentVariables,
    required this.secretVolumes,
    required this.service,
    required this.serviceAccountEmail,
    required this.timeoutSeconds,
    required this.uri,
    required this.vpcConnector,
    required this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTrafficOnLatestRevision': allTrafficOnLatestRevision,
      'availableCpu': availableCpu,
      'availableMemory': availableMemory,
      'binaryAuthorizationPolicy': binaryAuthorizationPolicy,
      'directVpcEgress': directVpcEgress,
      'directVpcNetworkInterfaces': pulumi.Input.mapInputValue<List<GetFunctionServiceConfigDirectVpcNetworkInterface>, List<Map<String, dynamic>>>(directVpcNetworkInterfaces, (value) => pulumi.Input.encodeList<GetFunctionServiceConfigDirectVpcNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentVariables': environmentVariables,
      'gcfUri': gcfUri,
      'ingressSettings': ingressSettings,
      'maxInstanceCount': maxInstanceCount,
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency,
      'minInstanceCount': minInstanceCount,
      'secretEnvironmentVariables': pulumi.Input.mapInputValue<List<GetFunctionServiceConfigSecretEnvironmentVariable>, List<Map<String, dynamic>>>(secretEnvironmentVariables, (value) => pulumi.Input.encodeList<GetFunctionServiceConfigSecretEnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretVolumes': pulumi.Input.mapInputValue<List<GetFunctionServiceConfigSecretVolume>, List<Map<String, dynamic>>>(secretVolumes, (value) => pulumi.Input.encodeList<GetFunctionServiceConfigSecretVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'service': service,
      'serviceAccountEmail': serviceAccountEmail,
      'timeoutSeconds': timeoutSeconds,
      'uri': uri,
      'vpcConnector': vpcConnector,
      'vpcConnectorEgressSettings': vpcConnectorEgressSettings,
    };
  }

  factory GetFunctionServiceConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionServiceConfig(
      allTrafficOnLatestRevision: (map['allTrafficOnLatestRevision'] as bool).input(),
      availableCpu: (map['availableCpu'] as String).input(),
      availableMemory: (map['availableMemory'] as String).input(),
      binaryAuthorizationPolicy: (map['binaryAuthorizationPolicy'] as String).input(),
      directVpcEgress: (map['directVpcEgress'] as String).input(),
      directVpcNetworkInterfaces: (pulumi.Input.decodeList<GetFunctionServiceConfigDirectVpcNetworkInterface>(map['directVpcNetworkInterfaces'], (value) => GetFunctionServiceConfigDirectVpcNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environmentVariables: ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      gcfUri: (map['gcfUri'] as String).input(),
      ingressSettings: (map['ingressSettings'] as String).input(),
      maxInstanceCount: (map['maxInstanceCount'] as int).input(),
      maxInstanceRequestConcurrency: (map['maxInstanceRequestConcurrency'] as int).input(),
      minInstanceCount: (map['minInstanceCount'] as int).input(),
      secretEnvironmentVariables: (pulumi.Input.decodeList<GetFunctionServiceConfigSecretEnvironmentVariable>(map['secretEnvironmentVariables'], (value) => GetFunctionServiceConfigSecretEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretVolumes: (pulumi.Input.decodeList<GetFunctionServiceConfigSecretVolume>(map['secretVolumes'], (value) => GetFunctionServiceConfigSecretVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      service: (map['service'] as String).input(),
      serviceAccountEmail: (map['serviceAccountEmail'] as String).input(),
      timeoutSeconds: (map['timeoutSeconds'] as int).input(),
      uri: (map['uri'] as String).input(),
      vpcConnector: (map['vpcConnector'] as String).input(),
      vpcConnectorEgressSettings: (map['vpcConnectorEgressSettings'] as String).input(),
    );
  }
}

