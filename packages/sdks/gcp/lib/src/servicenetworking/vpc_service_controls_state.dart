// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcServiceControls resources.
class VpcServiceControlsState {
  /// Desired VPC Service Controls state service producer VPC network, as
  /// described at the top of this page.
  final pulumi.Input<bool>? enabled;
  /// The network that the consumer is using to connect with services.
  final pulumi.Input<String>? network;
  /// The id of the Google Cloud project containing the consumer network.
  final pulumi.Input<String>? project;
  /// The service that is managing peering connectivity for a service
  /// producer's organization. For Google services that support this
  /// functionality, this value is `servicenetworking.googleapis.com`.
  final pulumi.Input<String>? service;

  /// Creates a new [VpcServiceControlsState].
  /// [enabled] Desired VPC Service Controls state service producer VPC network, as
  /// [network] The network that the consumer is using to connect with services.
  /// [project] The id of the Google Cloud project containing the consumer network.
  /// [service] The service that is managing peering connectivity for a service
  VpcServiceControlsState({
    this.enabled,
    this.network,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'network': ?network,
      'project': ?project,
      'service': ?service,
    };
  }

  factory VpcServiceControlsState.fromMap(Map<String, dynamic> map) {
    return VpcServiceControlsState(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

