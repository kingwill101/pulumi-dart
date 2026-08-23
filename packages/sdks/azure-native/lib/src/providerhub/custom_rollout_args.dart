// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_rollout_properties.dart';

/// {@template pulumi_providerhub_custom_rollout_args_doc}
/// The set of arguments for CustomRollout.
/// {@endtemplate}
/// {@macro pulumi_providerhub_custom_rollout_args_doc}
class CustomRolloutArgs {
  /// Properties of the rollout.
  final pulumi.Input<CustomRolloutProperties> properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The rollout name.
  final pulumi.Input<String>? rolloutName;

  /// Creates a new [CustomRolloutArgs].
  /// [properties] Properties of the rollout.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [rolloutName] The rollout name.
  const CustomRolloutArgs({
    required this.properties,
    required this.providerNamespace,
    this.rolloutName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<CustomRolloutProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'rolloutName': ?rolloutName,
    };
  }

  factory CustomRolloutArgs.fromMap(Map<String, dynamic> map) {
    return CustomRolloutArgs(
      properties: pulumi.Input.fromValue(CustomRolloutProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
      rolloutName: (() { final guardedValue = map['rolloutName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
