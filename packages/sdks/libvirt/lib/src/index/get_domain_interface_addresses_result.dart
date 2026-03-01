// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_interface_addresses_interface.dart';

/// Result data returned by getDomainInterfaceAddresses.
class GetDomainInterfaceAddressesResult {
  /// Domain UUID or name to query. Use `libvirt_domain.example.id` or `libvirt_domain.example.name` to reference a managed domain.
  final String domain;
  final String id;
  final List<GetDomainInterfaceAddressesInterface> interfaces;
  /// Source to query for IP addresses:
  final String? source;

  /// Creates a new [GetDomainInterfaceAddressesResult].
  /// [domain] Domain UUID or name to query. Use `libvirt_domain.example.id` or `libvirt_domain.example.name` to reference a managed domain.
  /// [id] Required.
  /// [interfaces] Required.
  /// [source] Source to query for IP addresses:
  GetDomainInterfaceAddressesResult({
    required this.domain,
    required this.id,
    required this.interfaces,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'id': id,
      'interfaces': pulumi.Input.encodeList<GetDomainInterfaceAddressesInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'source': ?source,
    };
  }

  factory GetDomainInterfaceAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetDomainInterfaceAddressesResult(
      domain: map['domain'] as String,
      id: map['id'] as String,
      interfaces: pulumi.Input.decodeList<GetDomainInterfaceAddressesInterface>(map['interfaces'], (value) => GetDomainInterfaceAddressesInterface.fromMap((value as Map).cast<String, dynamic>())),
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

