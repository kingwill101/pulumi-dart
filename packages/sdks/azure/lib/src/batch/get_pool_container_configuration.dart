// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_container_configuration_container_registry.dart';

class GetPoolContainerConfiguration {
  /// A list of container image names to use, as would be specified by `docker pull`.
  final pulumi.Input<List<String>> containerImageNames;
  /// Additional container registries from which container images can be pulled by the pool's VMs.
  final pulumi.Input<List<GetPoolContainerConfigurationContainerRegistry>> containerRegistries;
  /// The type of container configuration.
  final pulumi.Input<String> type;

  /// Creates a new [GetPoolContainerConfiguration].
  /// [containerImageNames] A list of container image names to use, as would be specified by `docker pull`.
  /// [containerRegistries] Additional container registries from which container images can be pulled by the pool's VMs.
  /// [type] The type of container configuration.
  const GetPoolContainerConfiguration({
    required this.containerImageNames,
    required this.containerRegistries,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageNames': containerImageNames,
      'containerRegistries': pulumi.Input.mapInputValue<List<GetPoolContainerConfigurationContainerRegistry>, List<Map<String, dynamic>>>(containerRegistries, (value) => pulumi.Input.encodeList<GetPoolContainerConfigurationContainerRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetPoolContainerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetPoolContainerConfiguration(
      containerImageNames: pulumi.Input.fromValue((map['containerImageNames'] as List).cast<String>()),
      containerRegistries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPoolContainerConfigurationContainerRegistry>(map['containerRegistries']!, (value) => GetPoolContainerConfigurationContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

