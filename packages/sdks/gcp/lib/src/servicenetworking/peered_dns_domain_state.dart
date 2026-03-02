// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PeeredDnsDomain resources.
class PeeredDnsDomainState {
  /// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  final pulumi.Input<String>? dnsSuffix;
  /// Internal name used for the peered DNS domain.
  final pulumi.Input<String>? name;
  /// The network in the consumer project.
  final pulumi.Input<String>? network;
  /// an identifier for the resource with format `services/{{service}}/projects/{{project}}/global/networks/{{network}}`
  final pulumi.Input<String>? parent;
  /// The producer project number. If not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  final pulumi.Input<String>? service;

  /// Creates a new [PeeredDnsDomainState].
  /// [dnsSuffix] The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  /// [name] Internal name used for the peered DNS domain.
  /// [network] The network in the consumer project.
  /// [parent] an identifier for the resource with format `services/{{service}}/projects/{{project}}/global/networks/{{network}}`
  /// [project] The producer project number. If not provided, the provider project is used.
  /// [service] Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  PeeredDnsDomainState({
    this.dnsSuffix,
    this.name,
    this.network,
    this.parent,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSuffix': ?dnsSuffix,
      'name': ?name,
      'network': ?network,
      'parent': ?parent,
      'project': ?project,
      'service': ?service,
    };
  }

  factory PeeredDnsDomainState.fromMap(Map<String, dynamic> map) {
    return PeeredDnsDomainState(
      dnsSuffix: map['dnsSuffix'] == null ? null : (map['dnsSuffix']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

