// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_interface_addresses_interface.dart';

/// Result data returned by getDomainInterfaceAddresses.
class GetDomainInterfaceAddressesResult {
  /// Domain UUID or name to query. Use `libvirt_domain.example.id` or `libvirt_domain.example.name` to reference a managed domain.
  final String? domain;
  final String? id;
  final List<GetDomainInterfaceAddressesInterface>? interfaces;
  /// Source to query for IP addresses:
  final String? source;

  /// Creates a new [GetDomainInterfaceAddressesResult].
  /// [domain] Domain UUID or name to query. Use `libvirt_domain.example.id` or `libvirt_domain.example.name` to reference a managed domain.
  /// [id] Optional.
  /// [interfaces] Optional.
  /// [source] Source to query for IP addresses:
  const GetDomainInterfaceAddressesResult({
    this.domain,
    this.id,
    this.interfaces,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'id': ?id,
      'interfaces': ?(() { final guardedValue = interfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainInterfaceAddressesInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'source': ?source,
    };
  }

  factory GetDomainInterfaceAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetDomainInterfaceAddressesResult(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainInterfaceAddressesInterface>(guardedValue, (value) => GetDomainInterfaceAddressesInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
