// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providerhub_get_custom_rollout_args_doc}
/// Arguments for getCustomRollout.
/// {@endtemplate}
/// {@macro pulumi_providerhub_get_custom_rollout_args_doc}
class GetCustomRolloutArgs {
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;
  /// The rollout name.
  final pulumi.Input<String> rolloutName;

  /// Creates a new [GetCustomRolloutArgs].
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  /// [rolloutName] The rollout name.
  GetCustomRolloutArgs({
    required pulumi.Output<String> providerNamespace,
    required pulumi.Output<String> rolloutName,
  }) :
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace),
      rolloutName = pulumi.Input.asInput<String>(rolloutName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'providerNamespace': providerNamespace,
      'rolloutName': rolloutName,
    };
  }

  factory GetCustomRolloutArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRolloutArgs(
      providerNamespace: pulumi.Output.create<String>(map['providerNamespace'] as String),
      rolloutName: pulumi.Output.create<String>(map['rolloutName'] as String),
    );
  }
}

