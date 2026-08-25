// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionEndpointsApiService {
  /// Endpoints service configuration ID as specified by the Service Management API. For example "2016-09-19r1".
  /// By default, the rollout strategy for Endpoints is "FIXED". This means that Endpoints starts up with a particular configuration ID.
  /// When a new configuration is rolled out, Endpoints must be given the new configuration ID. The configId field is used to give the configuration ID
  /// and is required in this case.
  /// Endpoints also has a rollout strategy called "MANAGED". When using this, Endpoints fetches the latest configuration and does not need
  /// the configuration ID. In this case, configId must be omitted.
  final pulumi.Input<String?>? configId;
  /// Enable or disable trace sampling. By default, this is set to false for enabled.
  final pulumi.Input<bool?>? disableTraceSampling;
  /// Endpoints service name which is the name of the "service" resource in the Service Management API.
  /// For example "myapi.endpoints.myproject.cloud.goog"
  final pulumi.Input<String> name;
  /// Endpoints rollout strategy. If FIXED, configId must be specified. If MANAGED, configId must be omitted.
  /// Default value is `FIXED`.
  /// Possible values are: `FIXED`, `MANAGED`.
  final pulumi.Input<String?>? rolloutStrategy;

  /// Creates a new [FlexibleAppVersionEndpointsApiService].
  /// [configId] Endpoints service configuration ID as specified by the Service Management API. For example "2016-09-19r1".
  /// [disableTraceSampling] Enable or disable trace sampling. By default, this is set to false for enabled.
  /// [name] Endpoints service name which is the name of the "service" resource in the Service Management API.
  /// [rolloutStrategy] Endpoints rollout strategy. If FIXED, configId must be specified. If MANAGED, configId must be omitted.
  const FlexibleAppVersionEndpointsApiService({
    this.configId,
    this.disableTraceSampling,
    required this.name,
    this.rolloutStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'disableTraceSampling': ?disableTraceSampling,
      'name': name,
      'rolloutStrategy': ?rolloutStrategy,
    };
  }

  factory FlexibleAppVersionEndpointsApiService.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionEndpointsApiService(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTraceSampling: (() { final guardedValue = map['disableTraceSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rolloutStrategy: (() { final guardedValue = map['rolloutStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
