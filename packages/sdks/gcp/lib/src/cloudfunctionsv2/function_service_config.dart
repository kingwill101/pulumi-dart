// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_service_config_direct_vpc_network_interface.dart';
import 'function_service_config_secret_environment_variable.dart';
import 'function_service_config_secret_volume.dart';

class FunctionServiceConfig {
  /// Whether 100% of traffic is routed to the latest revision. Defaults to true.
  final pulumi.Input<bool>? allTrafficOnLatestRevision;
  /// The number of CPUs used in a single container instance. Default value is calculated from available memory.
  final pulumi.Input<String>? availableCpu;
  /// The amount of memory available for a function.
  /// Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is
  /// supplied the value is interpreted as bytes.
  final pulumi.Input<String>? availableMemory;
  /// The binary authorization policy to be checked when deploying the Cloud Run service.
  final pulumi.Input<String>? binaryAuthorizationPolicy;
  /// Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY.
  /// Possible values are: `VPC_EGRESS_ALL_TRAFFIC`, `VPC_EGRESS_PRIVATE_RANGES_ONLY`.
  final pulumi.Input<String>? directVpcEgress;
  /// The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.
  /// Structure is documented below.
  final pulumi.Input<List<FunctionServiceConfigDirectVpcNetworkInterface>>? directVpcNetworkInterfaces;
  /// Environment variables that shall be available during function execution.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// (Output)
  /// URIs of the Service deployed
  final pulumi.Input<String>? gcfUri;
  /// Available ingress settings. Defaults to "ALLOW_ALL" if unspecified.
  /// Default value is `ALLOW_ALL`.
  /// Possible values are: `ALLOW_ALL`, `ALLOW_INTERNAL_ONLY`, `ALLOW_INTERNAL_AND_GCLB`.
  final pulumi.Input<String>? ingressSettings;
  /// The limit on the maximum number of function instances that may coexist at a
  /// given time.
  final pulumi.Input<int>? maxInstanceCount;
  /// Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final pulumi.Input<int>? maxInstanceRequestConcurrency;
  /// The limit on the minimum number of function instances that may coexist at a
  /// given time.
  final pulumi.Input<int>? minInstanceCount;
  /// Secret environment variables configuration.
  /// Structure is documented below.
  final pulumi.Input<List<FunctionServiceConfigSecretEnvironmentVariable>>? secretEnvironmentVariables;
  /// Secret volumes configuration.
  /// Structure is documented below.
  final pulumi.Input<List<FunctionServiceConfigSecretVolume>>? secretVolumes;
  /// (Output)
  /// Name of the service associated with a Function.
  final pulumi.Input<String>? service;
  /// The email of the service account for this function.
  final pulumi.Input<String>? serviceAccountEmail;
  /// The function execution timeout. Execution is considered failed and
  /// can be terminated if the function is not completed at the end of the
  /// timeout period. Defaults to 60 seconds.
  final pulumi.Input<int>? timeoutSeconds;
  /// (Output)
  /// URI of the Service deployed.
  final pulumi.Input<String>? uri;
  /// The Serverless VPC Access connector that this cloud function can connect to.
  final pulumi.Input<String>? vpcConnector;
  /// Available egress settings.
  /// Possible values are: `VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED`, `PRIVATE_RANGES_ONLY`, `ALL_TRAFFIC`.
  final pulumi.Input<String>? vpcConnectorEgressSettings;

  /// Creates a new [FunctionServiceConfig].
  /// [allTrafficOnLatestRevision] Whether 100% of traffic is routed to the latest revision. Defaults to true.
  /// [availableCpu] The number of CPUs used in a single container instance. Default value is calculated from available memory.
  /// [availableMemory] The amount of memory available for a function.
  /// [binaryAuthorizationPolicy] The binary authorization policy to be checked when deploying the Cloud Run service.
  /// [directVpcEgress] Egress settings for direct VPC. If not provided, it defaults to VPC_EGRESS_PRIVATE_RANGES_ONLY.
  /// [directVpcNetworkInterfaces] The Direct VPC network interface for the Cloud Function. Currently only a single Direct VPC is supported.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [gcfUri] (Output)
  /// [ingressSettings] Available ingress settings. Defaults to "ALLOW_ALL" if unspecified.
  /// [maxInstanceCount] The limit on the maximum number of function instances that may coexist at a
  /// [maxInstanceRequestConcurrency] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  /// [minInstanceCount] The limit on the minimum number of function instances that may coexist at a
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [service] (Output)
  /// [serviceAccountEmail] The email of the service account for this function.
  /// [timeoutSeconds] The function execution timeout. Execution is considered failed and
  /// [uri] (Output)
  /// [vpcConnector] The Serverless VPC Access connector that this cloud function can connect to.
  /// [vpcConnectorEgressSettings] Available egress settings.
  FunctionServiceConfig({
    this.allTrafficOnLatestRevision,
    this.availableCpu,
    this.availableMemory,
    this.binaryAuthorizationPolicy,
    this.directVpcEgress,
    this.directVpcNetworkInterfaces,
    this.environmentVariables,
    this.gcfUri,
    this.ingressSettings,
    this.maxInstanceCount,
    this.maxInstanceRequestConcurrency,
    this.minInstanceCount,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.service,
    this.serviceAccountEmail,
    this.timeoutSeconds,
    this.uri,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTrafficOnLatestRevision': ?allTrafficOnLatestRevision,
      'availableCpu': ?availableCpu,
      'availableMemory': ?availableMemory,
      'binaryAuthorizationPolicy': ?binaryAuthorizationPolicy,
      'directVpcEgress': ?directVpcEgress,
      'directVpcNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<FunctionServiceConfigDirectVpcNetworkInterface>, List<Map<String, dynamic>>>(directVpcNetworkInterfaces, (value) => pulumi.Input.encodeList<FunctionServiceConfigDirectVpcNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentVariables': ?environmentVariables,
      'gcfUri': ?gcfUri,
      'ingressSettings': ?ingressSettings,
      'maxInstanceCount': ?maxInstanceCount,
      'maxInstanceRequestConcurrency': ?maxInstanceRequestConcurrency,
      'minInstanceCount': ?minInstanceCount,
      'secretEnvironmentVariables': ?pulumi.Input.mapOptionalInputValue<List<FunctionServiceConfigSecretEnvironmentVariable>, List<Map<String, dynamic>>>(secretEnvironmentVariables, (value) => pulumi.Input.encodeList<FunctionServiceConfigSecretEnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretVolumes': ?pulumi.Input.mapOptionalInputValue<List<FunctionServiceConfigSecretVolume>, List<Map<String, dynamic>>>(secretVolumes, (value) => pulumi.Input.encodeList<FunctionServiceConfigSecretVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'service': ?service,
      'serviceAccountEmail': ?serviceAccountEmail,
      'timeoutSeconds': ?timeoutSeconds,
      'uri': ?uri,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings': ?vpcConnectorEgressSettings,
    };
  }

  factory FunctionServiceConfig.fromMap(Map<String, dynamic> map) {
    return FunctionServiceConfig(
      allTrafficOnLatestRevision: map['allTrafficOnLatestRevision'] == null ? null : (map['allTrafficOnLatestRevision'] as bool).input(),
      availableCpu: map['availableCpu'] == null ? null : (map['availableCpu'] as String).input(),
      availableMemory: map['availableMemory'] == null ? null : (map['availableMemory'] as String).input(),
      binaryAuthorizationPolicy: map['binaryAuthorizationPolicy'] == null ? null : (map['binaryAuthorizationPolicy'] as String).input(),
      directVpcEgress: map['directVpcEgress'] == null ? null : (map['directVpcEgress'] as String).input(),
      directVpcNetworkInterfaces: map['directVpcNetworkInterfaces'] == null ? null : (pulumi.Input.decodeList<FunctionServiceConfigDirectVpcNetworkInterface>(map['directVpcNetworkInterfaces'], (value) => FunctionServiceConfigDirectVpcNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      gcfUri: map['gcfUri'] == null ? null : (map['gcfUri'] as String).input(),
      ingressSettings: map['ingressSettings'] == null ? null : (map['ingressSettings'] as String).input(),
      maxInstanceCount: map['maxInstanceCount'] == null ? null : (map['maxInstanceCount'] as int).input(),
      maxInstanceRequestConcurrency: map['maxInstanceRequestConcurrency'] == null ? null : (map['maxInstanceRequestConcurrency'] as int).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount'] as int).input(),
      secretEnvironmentVariables: map['secretEnvironmentVariables'] == null ? null : (pulumi.Input.decodeList<FunctionServiceConfigSecretEnvironmentVariable>(map['secretEnvironmentVariables'], (value) => FunctionServiceConfigSecretEnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secretVolumes: map['secretVolumes'] == null ? null : (pulumi.Input.decodeList<FunctionServiceConfigSecretVolume>(map['secretVolumes'], (value) => FunctionServiceConfigSecretVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : (map['serviceAccountEmail'] as String).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds'] as int).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
      vpcConnector: map['vpcConnector'] == null ? null : (map['vpcConnector'] as String).input(),
      vpcConnectorEgressSettings: map['vpcConnectorEgressSettings'] == null ? null : (map['vpcConnectorEgressSettings'] as String).input(),
    );
  }
}

