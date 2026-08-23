// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
/// Arguments for getPeeredDnsDomain.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_peered_dns_domain_get_peered_dns_domain_args_doc}
class GetPeeredDnsDomainArgs {
  final pulumi.Input<String>? deletionPolicy;
  final pulumi.Input<String> name;
  final pulumi.Input<String> network;
  final pulumi.Input<String> project;
  final pulumi.Input<String> service;

  /// Creates a new [GetPeeredDnsDomainArgs].
  /// [deletionPolicy] Optional.
  /// [name] Required.
  /// [network] Required.
  /// [project] Required.
  /// [service] Required.
  const GetPeeredDnsDomainArgs({
    this.deletionPolicy,
    required this.name,
    required this.network,
    required this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'name': name,
      'network': network,
      'project': project,
      'service': service,
    };
  }

  factory GetPeeredDnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetPeeredDnsDomainArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
