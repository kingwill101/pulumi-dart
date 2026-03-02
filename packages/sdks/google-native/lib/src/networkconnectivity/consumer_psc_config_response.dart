// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allow the producer to specify which consumers can connect to it.
class ConsumerPscConfigResponse {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final pulumi.Input<bool> disableGlobalAccess;
  /// The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  final pulumi.Input<String> network;
  /// The consumer project where PSC connections are allowed to be created in.
  final pulumi.Input<String> project;
  /// Overall state of PSC Connections management for this consumer psc config.
  final pulumi.Input<String> state;

  /// Creates a new [ConsumerPscConfigResponse].
  /// [disableGlobalAccess] This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  /// [network] The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  /// [project] The consumer project where PSC connections are allowed to be created in.
  /// [state] Overall state of PSC Connections management for this consumer psc config.
  ConsumerPscConfigResponse({
    required this.disableGlobalAccess,
    required this.network,
    required this.project,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableGlobalAccess': disableGlobalAccess,
      'network': network,
      'project': project,
      'state': state,
    };
  }

  factory ConsumerPscConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConsumerPscConfigResponse(
      disableGlobalAccess: (map['disableGlobalAccess'] as bool).input(),
      network: (map['network'] as String).input(),
      project: (map['project'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

