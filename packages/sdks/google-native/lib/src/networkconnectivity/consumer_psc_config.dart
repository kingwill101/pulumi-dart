// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allow the producer to specify which consumers can connect to it.
class ConsumerPscConfig {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final pulumi.Input<bool>? disableGlobalAccess;
  /// The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  final pulumi.Input<String>? network;
  /// The consumer project where PSC connections are allowed to be created in.
  final pulumi.Input<String>? project;

  /// Creates a new [ConsumerPscConfig].
  /// [disableGlobalAccess] This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  /// [network] The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  /// [project] The consumer project where PSC connections are allowed to be created in.
  ConsumerPscConfig({
    this.disableGlobalAccess,
    this.network,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGlobalAccess': ?disableGlobalAccess,
      'network': ?network,
      'project': ?project,
    };
  }

  factory ConsumerPscConfig.fromMap(Map<String, dynamic> map) {
    return ConsumerPscConfig(
      disableGlobalAccess: (() { final guardedValue = map['disableGlobalAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

