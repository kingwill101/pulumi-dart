// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_env_var_cloudfunctions_v2alpha.dart';
import 'secret_volume_cloudfunctions_v2alpha.dart';
import 'service_config_ingress_settings_cloudfunctions_v2alpha.dart';
import 'service_config_security_level_cloudfunctions_v2alpha.dart';
import 'service_config_vpc_connector_egress_settings_cloudfunctions_v2alpha.dart';

/// Describes the Service being deployed. Currently Supported : Cloud Run (fully managed).
class ServiceConfigCloudfunctionsV2alpha {
  /// Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  final pulumi.Input<bool>? allTrafficOnLatestRevision;
  /// [Preview] The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  final pulumi.Input<String>? availableCpu;
  /// The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  final pulumi.Input<String>? availableMemory;
  /// Environment variables that shall be available during function execution.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The ingress settings for the function, controlling what traffic can reach it.
  final pulumi.Input<ServiceConfigIngressSettingsCloudfunctionsV2alpha>? ingressSettings;
  /// The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  final pulumi.Input<int>? maxInstanceCount;
  /// [Preview] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  final pulumi.Input<int>? maxInstanceRequestConcurrency;
  /// The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  final pulumi.Input<int>? minInstanceCount;
  /// Secret environment variables configuration.
  final pulumi.Input<List<SecretEnvVarCloudfunctionsV2alpha>>? secretEnvironmentVariables;
  /// Secret volumes configuration.
  final pulumi.Input<List<SecretVolumeCloudfunctionsV2alpha>>? secretVolumes;
  /// Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  final pulumi.Input<ServiceConfigSecurityLevelCloudfunctionsV2alpha>? securityLevel;
  /// The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  final pulumi.Input<String>? serviceAccountEmail;
  /// The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  final pulumi.Input<int>? timeoutSeconds;
  /// The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  final pulumi.Input<String>? vpcConnector;
  /// The egress settings for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha>? vpcConnectorEgressSettings;

  /// Creates a new [ServiceConfigCloudfunctionsV2alpha].
  /// [allTrafficOnLatestRevision] Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  /// [availableCpu] [Preview] The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  /// [availableMemory] The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  /// [environmentVariables] Environment variables that shall be available during function execution.
  /// [ingressSettings] The ingress settings for the function, controlling what traffic can reach it.
  /// [maxInstanceCount] The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  /// [maxInstanceRequestConcurrency] [Preview] Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  /// [minInstanceCount] The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  /// [secretEnvironmentVariables] Secret environment variables configuration.
  /// [secretVolumes] Secret volumes configuration.
  /// [securityLevel] Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  /// [serviceAccountEmail] The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  /// [timeoutSeconds] The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  /// [vpcConnector] The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  /// [vpcConnectorEgressSettings] The egress settings for the connector, controlling what traffic is diverted through it.
  const ServiceConfigCloudfunctionsV2alpha({
    this.allTrafficOnLatestRevision,
    this.availableCpu,
    this.availableMemory,
    this.environmentVariables,
    this.ingressSettings,
    this.maxInstanceCount,
    this.maxInstanceRequestConcurrency,
    this.minInstanceCount,
    this.secretEnvironmentVariables,
    this.secretVolumes,
    this.securityLevel,
    this.serviceAccountEmail,
    this.timeoutSeconds,
    this.vpcConnector,
    this.vpcConnectorEgressSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTrafficOnLatestRevision': ?allTrafficOnLatestRevision,
      'availableCpu': ?availableCpu,
      'availableMemory': ?availableMemory,
      'environmentVariables': ?environmentVariables,
      'ingressSettings': ?pulumi.Input.mapOptionalInputValue<ServiceConfigIngressSettingsCloudfunctionsV2alpha, String>(ingressSettings, (value) => value.wireValue),
      'maxInstanceCount': ?maxInstanceCount,
      'maxInstanceRequestConcurrency': ?maxInstanceRequestConcurrency,
      'minInstanceCount': ?minInstanceCount,
      'secretEnvironmentVariables': ?pulumi.Input.mapOptionalInputValue<List<SecretEnvVarCloudfunctionsV2alpha>, List<Map<String, dynamic>>>(secretEnvironmentVariables, (value) => pulumi.Input.encodeList<SecretEnvVarCloudfunctionsV2alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretVolumes': ?pulumi.Input.mapOptionalInputValue<List<SecretVolumeCloudfunctionsV2alpha>, List<Map<String, dynamic>>>(secretVolumes, (value) => pulumi.Input.encodeList<SecretVolumeCloudfunctionsV2alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityLevel': ?pulumi.Input.mapOptionalInputValue<ServiceConfigSecurityLevelCloudfunctionsV2alpha, String>(securityLevel, (value) => value.wireValue),
      'serviceAccountEmail': ?serviceAccountEmail,
      'timeoutSeconds': ?timeoutSeconds,
      'vpcConnector': ?vpcConnector,
      'vpcConnectorEgressSettings': ?pulumi.Input.mapOptionalInputValue<ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha, String>(vpcConnectorEgressSettings, (value) => value.wireValue),
    };
  }

  factory ServiceConfigCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return ServiceConfigCloudfunctionsV2alpha(
      allTrafficOnLatestRevision: (() { final guardedValue = map['allTrafficOnLatestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availableCpu: (() { final guardedValue = map['availableCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availableMemory: (() { final guardedValue = map['availableMemory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ingressSettings: (() { final guardedValue = map['ingressSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConfigIngressSettingsCloudfunctionsV2alpha.fromValue(guardedValue as String)); })(),
      maxInstanceCount: (() { final guardedValue = map['maxInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxInstanceRequestConcurrency: (() { final guardedValue = map['maxInstanceRequestConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minInstanceCount: (() { final guardedValue = map['minInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      secretEnvironmentVariables: (() { final guardedValue = map['secretEnvironmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretEnvVarCloudfunctionsV2alpha>(guardedValue, (value) => SecretEnvVarCloudfunctionsV2alpha.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretVolumes: (() { final guardedValue = map['secretVolumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretVolumeCloudfunctionsV2alpha>(guardedValue, (value) => SecretVolumeCloudfunctionsV2alpha.fromMap((value as Map).cast<String, dynamic>()))); })(),
      securityLevel: (() { final guardedValue = map['securityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConfigSecurityLevelCloudfunctionsV2alpha.fromValue(guardedValue as String)); })(),
      serviceAccountEmail: (() { final guardedValue = map['serviceAccountEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcConnector: (() { final guardedValue = map['vpcConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConnectorEgressSettings: (() { final guardedValue = map['vpcConnectorEgressSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha.fromValue(guardedValue as String)); })(),
    );
  }
}
