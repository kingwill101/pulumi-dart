// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoints_api_service_rollout_strategy.dart';

/// Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration. The Endpoints API Service provides tooling for serving Open API and gRPC endpoints via an NGINX proxy. Only valid for App Engine Flexible environment deployments.The fields here refer to the name and configuration ID of a "service" resource in the Service Management API (https://cloud.google.com/service-management/overview).
class EndpointsApiService {
  /// Endpoints service configuration ID as specified by the Service Management API. For example "2016-09-19r1".By default, the rollout strategy for Endpoints is RolloutStrategy.FIXED. This means that Endpoints starts up with a particular configuration ID. When a new configuration is rolled out, Endpoints must be given the new configuration ID. The config_id field is used to give the configuration ID and is required in this case.Endpoints also has a rollout strategy called RolloutStrategy.MANAGED. When using this, Endpoints fetches the latest configuration and does not need the configuration ID. In this case, config_id must be omitted.
  final pulumi.Input<String>? configId;
  /// Enable or disable trace sampling. By default, this is set to false for enabled.
  final pulumi.Input<bool>? disableTraceSampling;
  /// Endpoints service name which is the name of the "service" resource in the Service Management API. For example "myapi.endpoints.myproject.cloud.goog"
  final pulumi.Input<String>? name;
  /// Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.
  final pulumi.Input<EndpointsApiServiceRolloutStrategy>? rolloutStrategy;

  /// Creates a new [EndpointsApiService].
  /// [configId] Endpoints service configuration ID as specified by the Service Management API. For example "2016-09-19r1".By default, the rollout strategy for Endpoints is RolloutStrategy.FIXED. This means that Endpoints starts up with a particular configuration ID. When a new configuration is rolled out, Endpoints must be given the new configuration ID. The config_id field is used to give the configuration ID and is required in this case.Endpoints also has a rollout strategy called RolloutStrategy.MANAGED. When using this, Endpoints fetches the latest configuration and does not need the configuration ID. In this case, config_id must be omitted.
  /// [disableTraceSampling] Enable or disable trace sampling. By default, this is set to false for enabled.
  /// [name] Endpoints service name which is the name of the "service" resource in the Service Management API. For example "myapi.endpoints.myproject.cloud.goog"
  /// [rolloutStrategy] Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.
  const EndpointsApiService({
    this.configId,
    this.disableTraceSampling,
    this.name,
    this.rolloutStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'disableTraceSampling': ?disableTraceSampling,
      'name': ?name,
      'rolloutStrategy': ?pulumi.Input.mapOptionalInputValue<EndpointsApiServiceRolloutStrategy, String>(rolloutStrategy, (value) => value.wireValue),
    };
  }

  factory EndpointsApiService.fromMap(Map<String, dynamic> map) {
    return EndpointsApiService(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTraceSampling: (() { final guardedValue = map['disableTraceSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutStrategy: (() { final guardedValue = map['rolloutStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointsApiServiceRolloutStrategy.fromValue(guardedValue as String)); })(),
    );
  }
}

