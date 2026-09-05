// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_domain_interface_addresses_get_domain_interface_addresses_args_doc}
/// Arguments for getDomainInterfaceAddresses.
/// {@endtemplate}
/// {@macro pulumi_index_get_domain_interface_addresses_get_domain_interface_addresses_args_doc}
class GetDomainInterfaceAddressesArgs {
  /// Domain UUID or name to query. Use `libvirt_domain.example.id` or `libvirt_domain.example.name` to reference a managed domain.
  final pulumi.Input<String> domain;
  /// Source to query for IP addresses:
  final pulumi.Input<String?>? source;

  /// Creates a new [GetDomainInterfaceAddressesArgs].
  /// [domain] Domain UUID or name to query. Use `libvirt_domain.example.id` or `libvirt_domain.example.name` to reference a managed domain.
  /// [source] Source to query for IP addresses:
  const GetDomainInterfaceAddressesArgs({
    required this.domain,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'source': ?source,
    };
  }

  factory GetDomainInterfaceAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainInterfaceAddressesArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
