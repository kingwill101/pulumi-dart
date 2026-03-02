// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_peered_dns_domain_peered_dns_domain_args_doc}
/// The set of arguments for PeeredDnsDomain.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_peered_dns_domain_peered_dns_domain_args_doc}
class PeeredDnsDomainArgs {
  /// The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  final pulumi.Input<String> dnsSuffix;
  /// Internal name used for the peered DNS domain.
  final pulumi.Input<String>? name;
  /// The network in the consumer project.
  final pulumi.Input<String> network;
  /// The producer project number. If not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  final pulumi.Input<String>? service;

  /// Creates a new [PeeredDnsDomainArgs].
  /// [dnsSuffix] The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  /// [name] Internal name used for the peered DNS domain.
  /// [network] The network in the consumer project.
  /// [project] The producer project number. If not provided, the provider project is used.
  /// [service] Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  PeeredDnsDomainArgs({
    required this.dnsSuffix,
    this.name,
    required this.network,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSuffix': dnsSuffix,
      'name': ?name,
      'network': network,
      'project': ?project,
      'service': ?service,
    };
  }

  factory PeeredDnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return PeeredDnsDomainArgs(
      dnsSuffix: (map['dnsSuffix'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

