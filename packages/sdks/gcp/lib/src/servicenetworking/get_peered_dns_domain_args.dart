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
    required pulumi.Output<String> name,
    required pulumi.Output<String> network,
    required pulumi.Output<String> project,
    required pulumi.Output<String> service,
  }) :
      name = pulumi.Input.asInput<String>(name),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asInput<String>(project),
      service = pulumi.Input.asInput<String>(service);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
      service: pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

