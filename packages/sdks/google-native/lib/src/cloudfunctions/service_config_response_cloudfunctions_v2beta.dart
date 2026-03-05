// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_env_var_response_cloudfunctions_v2beta.dart';
import 'secret_volume_response_cloudfunctions_v2beta.dart';

/// Describes the Service being deployed. Currently Supported : Cloud Run (fully managed).
class ServiceConfigResponseCloudfunctionsV2beta {
  /// Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  final pulumi.Input<bool> allTrafficOnLatestRevision;
  /// [Preview] The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  final pulumi.Input<String> availableCpu;
  /// The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  final pulumi.Input<String> availableMemory;
  /// Environment variables that shall be available during function execution.
  final pulumi.Input<Map<String, String>> environmentVariables;
  /// The ingress settings for the function, controlling what traffic can reach it.
  final pulumi.Input<String> ingressSettings;
  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final pulumi.Input<int> maxInstanceCount;
  /// [Preview] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final pulumi.Input<int> maxInstanceRequestConcurrency;
  /// The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  final pulumi.Input<int> minInstanceCount;
  /// The name of service revision.
  final pulumi.Input<String> revision;
  /// Secret environment variables configuration.
  final pulumi.Input<List<SecretEnvVarResponseCloudfunctionsV2beta>> secretEnvironmentVariables;
  /// Secret volumes configuration.
  final pulumi.Input<List<SecretVolumeResponseCloudfunctionsV2beta>> secretVolumes;
  /// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  final pulumi.Input<String> securityLevel;
  /// Name of the service associated with a Function. The format of this field is `projects/{project}/locations/{region}/services/{service}`
  final pulumi.Input<String> service;
  /// The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  final pulumi.Input<String> serviceAccountEmail;
  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final pulumi.Input<int> timeoutSeconds;
  /// URI of the Service deployed.
  final pulumi.Input<String> uri;
  /// The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  final pulumi.Input<String> vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<String> vpcConnectorEgressSettings;

  /// Creates a new [ServiceConfigResponseCloudfunctionsV2beta].
  /// [allTrafficOnLatestRevision] Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  /// [availableCpu] [Preview] The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  /// [availableMemory] The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [ingressSettings] The ingress settings for the function, controlling what traffic can reach it.
  /// [maxInstanceCount] The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  /// [maxInstanceRequestConcurrency] [Preview] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  /// [minInstanceCount] The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  /// [revision] The name of service revision.
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [securityLevel] Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  /// [service] Name of the service associated with a Function. The format of this field is `projects/{project}/locations/{region}/services/{service}`
  /// [serviceAccountEmail] The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  /// [timeoutSeconds] The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  /// [uri] URI of the Service deployed.
  /// [vpcConnector] The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  ServiceConfigResponseCloudfunctionsV2beta({
    required this.allTrafficOnLatestRevision,
    required this.availableCpu,
    required this.availableMemory,
    required this.environmentVariables,
    required this.ingressSettings,
    required this.maxInstanceCount,
    required this.maxInstanceRequestConcurrency,
    required this.minInstanceCount,
    required this.revision,
    required this.secretEnvironmentVariables,
    required this.secretVolumes,
    required this.securityLevel,
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
      'environmentVariables': environmentVariables,
      'ingressSettings': ingressSettings,
      'maxInstanceCount': maxInstanceCount,
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency,
      'minInstanceCount': minInstanceCount,
      'revision': revision,
      'secretEnvironmentVariables': pulumi.Input.mapInputValue<List<SecretEnvVarResponseCloudfunctionsV2beta>, List<Map<String, dynamic>>>(secretEnvironmentVariables, (value) => pulumi.Input.encodeList<SecretEnvVarResponseCloudfunctionsV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretVolumes': pulumi.Input.mapInputValue<List<SecretVolumeResponseCloudfunctionsV2beta>, List<Map<String, dynamic>>>(secretVolumes, (value) => pulumi.Input.encodeList<SecretVolumeResponseCloudfunctionsV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLevel': securityLevel,
      'service': service,
      'serviceAccountEmail': serviceAccountEmail,
      'timeoutSeconds': timeoutSeconds,
      'uri': uri,
      'vpcConnector': vpcConnector,
      'vpcConnectorEgressSettings': vpcConnectorEgressSettings,
    };
  }

  factory ServiceConfigResponseCloudfunctionsV2beta.fromMap(Map<String, dynamic> map) {
    return ServiceConfigResponseCloudfunctionsV2beta(
      allTrafficOnLatestRevision: pulumi.Input.fromValue(map['allTrafficOnLatestRevision'] as bool),
      availableCpu: pulumi.Input.fromValue(map['availableCpu'] as String),
      availableMemory: pulumi.Input.fromValue(map['availableMemory'] as String),
      environmentVariables: pulumi.Input.fromValue((map['environmentVariables'] as Map).cast<String, String>()),
      ingressSettings: pulumi.Input.fromValue(map['ingressSettings'] as String),
      maxInstanceCount: pulumi.Input.fromValue(map['maxInstanceCount'] as int),
      maxInstanceRequestConcurrency: pulumi.Input.fromValue(map['maxInstanceRequestConcurrency'] as int),
      minInstanceCount: pulumi.Input.fromValue(map['minInstanceCount'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      secretEnvironmentVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<SecretEnvVarResponseCloudfunctionsV2beta>(map['secretEnvironmentVariables']!, (value) => SecretEnvVarResponseCloudfunctionsV2beta.fromMap((value as Map).cast<String, dynamic>()))),
      secretVolumes: pulumi.Input.fromValue(pulumi.Input.decodeList<SecretVolumeResponseCloudfunctionsV2beta>(map['secretVolumes']!, (value) => SecretVolumeResponseCloudfunctionsV2beta.fromMap((value as Map).cast<String, dynamic>()))),
      securityLevel: pulumi.Input.fromValue(map['securityLevel'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      vpcConnector: pulumi.Input.fromValue(map['vpcConnector'] as String),
      vpcConnectorEgressSettings: pulumi.Input.fromValue(map['vpcConnectorEgressSettings'] as String),
    );
  }
}

