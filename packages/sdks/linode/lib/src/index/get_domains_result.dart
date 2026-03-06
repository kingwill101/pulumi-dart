// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';
import 'get_domains_filter.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  final List<GetDomainsDomain> domains;
  final List<GetDomainsFilter>? filters;
  /// The unique ID of this Domain.
  final String id;
  final String? order;
  final String? orderBy;

  /// Creates a new [GetDomainsResult].
  /// [domains] Required.
  /// [filters] Optional.
  /// [id] The unique ID of this Domain.
  /// [order] Optional.
  /// [orderBy] Optional.
  const GetDomainsResult({
    required this.domains,
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDomainsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains']!, (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDomainsFilter>(guardedValue, (value) => GetDomainsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

