// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_default_rollout_args_doc}
/// Arguments for getDefaultRollout.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_default_rollout_args_doc}
class GetDefaultRolloutArgs {
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The rollout name.
  final pulumi.Input<String> rolloutName;

  /// Creates a new [GetDefaultRolloutArgs].
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [rolloutName] The rollout name.
  const GetDefaultRolloutArgs({
    required this.providerNamespace,
    required this.rolloutName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerNamespace': providerNamespace,
      'rolloutName': rolloutName,
    };
  }

  factory GetDefaultRolloutArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultRolloutArgs(
      providerNamespace: pulumi.Input.fromValue(map['providerNamespace'] as String),
      rolloutName: pulumi.Input.fromValue(map['rolloutName'] as String),
    );
  }
}

