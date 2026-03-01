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
    pulumi.Output<String>? dnsSuffix,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? project,
    pulumi.Output<String>? service,
  }) :
      dnsSuffix = pulumi.Input.asOptionalInput<String>(dnsSuffix),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asOptionalInput<String>(service);

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
      dnsSuffix: map['dnsSuffix'] == null ? null : pulumi.Output.create<String>(map['dnsSuffix'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

