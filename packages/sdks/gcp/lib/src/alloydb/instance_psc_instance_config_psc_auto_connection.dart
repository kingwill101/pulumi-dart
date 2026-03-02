// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstancePscInstanceConfigPscAutoConnection {
  /// The consumer network for the PSC service automation, example:
  /// "projects/vpc-host-project/global/networks/default".
  /// The consumer network might be hosted a different project than the
  /// consumer project. The API expects the consumer project specified to be
  /// the project ID (and not the project number)
  final pulumi.Input<String>? consumerNetwork;
  /// (Output)
  /// The status of the service connection policy.
  final pulumi.Input<String>? consumerNetworkStatus;
  /// The consumer project to which the PSC service automation endpoint will
  /// be created. The API expects the consumer project to be the project ID(
  /// and not the project number).
  final pulumi.Input<String>? consumerProject;
  /// (Output)
  /// The IP address of the PSC service automation endpoint.
  final pulumi.Input<String>? ipAddress;
  /// (Output)
  /// The status of the PSC service automation connection.
  final pulumi.Input<String>? status;

  /// Creates a new [InstancePscInstanceConfigPscAutoConnection].
  /// [consumerNetwork] The consumer network for the PSC service automation, example:
  /// [consumerNetworkStatus] (Output)
  /// [consumerProject] The consumer project to which the PSC service automation endpoint will
  /// [ipAddress] (Output)
  /// [status] (Output)
  InstancePscInstanceConfigPscAutoConnection({
    this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerProject,
    this.ipAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': ?consumerNetwork,
      'consumerNetworkStatus': ?consumerNetworkStatus,
      'consumerProject': ?consumerProject,
      'ipAddress': ?ipAddress,
      'status': ?status,
    };
  }

  factory InstancePscInstanceConfigPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return InstancePscInstanceConfigPscAutoConnection(
      consumerNetwork: map['consumerNetwork'] == null ? null : (map['consumerNetwork'] as String).input(),
      consumerNetworkStatus: map['consumerNetworkStatus'] == null ? null : (map['consumerNetworkStatus'] as String).input(),
      consumerProject: map['consumerProject'] == null ? null : (map['consumerProject'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

