// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_properties.dart';

/// {@template pulumi_providerhub_default_rollout_args_doc}
/// The set of arguments for DefaultRollout.
/// {@endtemplate}
/// {@macro pulumi_providerhub_default_rollout_args_doc}
class DefaultRolloutArgs {
  /// Properties of the rollout.
  final pulumi.Input<DefaultRolloutProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The rollout name.
  final pulumi.Input<String>? rolloutName;

  /// Creates a new [DefaultRolloutArgs].
  /// [properties] Properties of the rollout.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [rolloutName] The rollout name.
  const DefaultRolloutArgs({
    this.properties,
    required this.providerNamespace,
    this.rolloutName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<DefaultRolloutProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
      'rolloutName': ?rolloutName,
    };
  }

  factory DefaultRolloutArgs.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultRolloutProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
      rolloutName: (() { final guardedValue = map['rolloutName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
