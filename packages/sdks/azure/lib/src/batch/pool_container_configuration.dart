// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_container_configuration_container_registry.dart';

class PoolContainerConfiguration {
  /// A list of container image names to use, as would be specified by `docker pull`. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? containerImageNames;

  /// One or more `container_registries` blocks as defined below. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created.
  final pulumi.Input<List<PoolContainerConfigurationContainerRegistry>>?
  containerRegistries;

  /// The type of container configuration. Possible value is `DockerCompatible`.
  final pulumi.Input<String>? type;

  /// Creates a new [PoolContainerConfiguration].
  /// [containerImageNames] A list of container image names to use, as would be specified by `docker pull`. Changing this forces a new resource to be created.
  /// [containerRegistries] One or more `container_registries` blocks as defined below. Additional container registries from which container images can be pulled by the pool's VMs. Changing this forces a new resource to be created.
  /// [type] The type of container configuration. Possible value is `DockerCompatible`.
  PoolContainerConfiguration({
    this.containerImageNames,
    this.containerRegistries,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageNames': ?containerImageNames,
      'containerRegistries':
          ?pulumi.Input.mapOptionalInputValue<
            List<PoolContainerConfigurationContainerRegistry>,
            List<Map<String, dynamic>>
          >(
            containerRegistries,
            (value) =>
                pulumi.Input.encodeList<
                  PoolContainerConfigurationContainerRegistry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': ?type,
    };
  }

  factory PoolContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolContainerConfiguration(
      containerImageNames: (() {
        final guardedValue = map['containerImageNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      containerRegistries: (() {
        final guardedValue = map['containerRegistries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PoolContainerConfigurationContainerRegistry>(
            guardedValue,
            (value) => PoolContainerConfigurationContainerRegistry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
