// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
/// Arguments for getPeeredDnsDomain.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
class GetPeeredDnsDomainArgs {
  final pulumi.Input<String> name;
  final pulumi.Input<String> network;
  final pulumi.Input<String> project;
  final pulumi.Input<String> service;

  /// Creates a new [GetPeeredDnsDomainArgs].
  /// [name] Required.
  /// [network] Required.
  /// [project] Required.
  /// [service] Required.
  GetPeeredDnsDomainArgs({
    required this.name,
    required this.network,
    required this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'network': network,
      'project': project,
      'service': service,
    };
  }

  factory GetPeeredDnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeredDnsDomainArgs(
      name: (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      project: (map['project'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}

