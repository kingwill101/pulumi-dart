// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_configuration_service_repository.dart';

/// Input properties used for looking up and filtering SpringCloudConfigurationService resources.
class SpringCloudConfigurationServiceState {
  /// The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`.
  final pulumi.Input<String>? generation;
  /// The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created.
  final pulumi.Input<String>? name;
  /// Specifies how often to check repository updates. Minimum value is 0.
  final pulumi.Input<int>? refreshIntervalInSeconds;
  /// One or more `repository` blocks as defined below.
  final pulumi.Input<List<SpringCloudConfigurationServiceRepository>>? repositories;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created.
  final pulumi.Input<String>? springCloudServiceId;

  /// Creates a new [SpringCloudConfigurationServiceState].
  /// [generation] The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`.
  /// [name] The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created.
  /// [refreshIntervalInSeconds] Specifies how often to check repository updates. Minimum value is 0.
  /// [repositories] One or more `repository` blocks as defined below.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created.
  SpringCloudConfigurationServiceState({
    pulumi.Output<String>? generation,
    pulumi.Output<String>? name,
    pulumi.Output<int>? refreshIntervalInSeconds,
    pulumi.Output<List<SpringCloudConfigurationServiceRepository>>? repositories,
    pulumi.Output<String>? springCloudServiceId,
  }) :
      generation = pulumi.Input.asOptionalInput<String>(generation),
      name = pulumi.Input.asOptionalInput<String>(name),
      refreshIntervalInSeconds = pulumi.Input.asOptionalInput<int>(refreshIntervalInSeconds),
      repositories = pulumi.Input.asOptionalInput<List<SpringCloudConfigurationServiceRepository>>(repositories),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'name': ?name,
      'refreshIntervalInSeconds': ?refreshIntervalInSeconds,
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudConfigurationServiceRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<SpringCloudConfigurationServiceRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'springCloudServiceId': ?springCloudServiceId,
    };
  }

  factory SpringCloudConfigurationServiceState.fromMap(Map<String, dynamic> map) {
    return SpringCloudConfigurationServiceState(
      generation: map['generation'] == null ? null : pulumi.Output.create<String>(map['generation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      refreshIntervalInSeconds: map['refreshIntervalInSeconds'] == null ? null : pulumi.Output.create<int>(map['refreshIntervalInSeconds'] as int),
      repositories: map['repositories'] == null ? null : pulumi.Output.create<List<SpringCloudConfigurationServiceRepository>>(pulumi.Input.decodeList<SpringCloudConfigurationServiceRepository>(map['repositories'], (value) => SpringCloudConfigurationServiceRepository.fromMap((value as Map).cast<String, dynamic>()))),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
    );
  }
}

