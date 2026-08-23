// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_peered_dns_domain_peered_dns_domain_args_doc}
/// The set of arguments for PeeredDnsDomain.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_peered_dns_domain_peered_dns_domain_args_doc}
class PeeredDnsDomainArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [dnsSuffix] The DNS domain suffix of the peered DNS domain. Make sure to suffix with a `.` (dot).
  /// [name] Internal name used for the peered DNS domain.
  /// [network] The network in the consumer project.
  /// [project] The producer project number. If not provided, the provider project is used.
  /// [service] Private service connection between service and consumer network, defaults to `servicenetworking.googleapis.com`
  const PeeredDnsDomainArgs({
    this.deletionPolicy,
    required this.dnsSuffix,
    this.name,
    required this.network,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'dnsSuffix': dnsSuffix,
      'name': ?name,
      'network': network,
      'project': ?project,
      'service': ?service,
    };
  }

  factory PeeredDnsDomainArgs.fromMap(Map<String, dynamic> map) {
    return PeeredDnsDomainArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSuffix: pulumi.Input.fromValue(map['dnsSuffix'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
