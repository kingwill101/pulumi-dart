// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';
import 'get_domains_filter.dart';
import 'get_domains_sort.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  /// A list of domains satisfying any `filter` and `sort` criteria. Each domain has the following attributes:
  final List<GetDomainsDomain> domains;
  final List<GetDomainsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetDomainsSort>? sorts;

  /// Creates a new [GetDomainsResult].
  /// [domains] A list of domains satisfying any `filter` and `sort` criteria. Each domain has the following attributes:
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sorts] Optional.
  const GetDomainsResult({
    required this.domains,
    this.filters,
    required this.id,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'sorts': ?(() { final guardedValue = sorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainsSort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains']!, (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainsFilter>(guardedValue, (value) => GetDomainsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      sorts: (() { final guardedValue = map['sorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainsSort>(guardedValue, (value) => GetDomainsSort.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
