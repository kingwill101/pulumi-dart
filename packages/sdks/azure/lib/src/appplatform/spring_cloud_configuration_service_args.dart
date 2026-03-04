// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_configuration_service_repository.dart';

/// {@template pulumi_appplatform_spring_cloud_configuration_service_spring_cloud_configuration_service_args_doc}
/// The set of arguments for SpringCloudConfigurationService.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_configuration_service_spring_cloud_configuration_service_args_doc}
class SpringCloudConfigurationServiceArgs {
  /// The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`.
  final pulumi.Input<String>? generation;

  /// The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created.
  final pulumi.Input<String>? name;

  /// Specifies how often to check repository updates. Minimum value is 0.
  final pulumi.Input<int>? refreshIntervalInSeconds;

  /// One or more `repository` blocks as defined below.
  final pulumi.Input<List<SpringCloudConfigurationServiceRepository>>?
  repositories;

  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudConfigurationServiceArgs].
  /// [generation] The generation of the Spring Cloud Configuration Service. Possible values are `Gen1` and `Gen2`.
  /// [name] The name which should be used for this Spring Cloud Configuration Service. The only possible value is `default`. Changing this forces a new Spring Cloud Configuration Service to be created.
  /// [refreshIntervalInSeconds] Specifies how often to check repository updates. Minimum value is 0.
  /// [repositories] One or more `repository` blocks as defined below.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Configuration Service to be created.
  SpringCloudConfigurationServiceArgs({
    this.generation,
    this.name,
    this.refreshIntervalInSeconds,
    this.repositories,
    required this.springCloudServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'name': ?name,
      'refreshIntervalInSeconds': ?refreshIntervalInSeconds,
      'repositories':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpringCloudConfigurationServiceRepository>,
            List<Map<String, dynamic>>
          >(
            repositories,
            (value) =>
                pulumi.Input.encodeList<
                  SpringCloudConfigurationServiceRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudConfigurationServiceArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpringCloudConfigurationServiceArgs(
      generation: (() {
        final guardedValue = map['generation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshIntervalInSeconds: (() {
        final guardedValue = map['refreshIntervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      repositories: (() {
        final guardedValue = map['repositories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SpringCloudConfigurationServiceRepository>(
            guardedValue,
            (value) => SpringCloudConfigurationServiceRepository.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      springCloudServiceId: pulumi.Input.fromValue(
        map['springCloudServiceId'] as String,
      ),
    );
  }
}
