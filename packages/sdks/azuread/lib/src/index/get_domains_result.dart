// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain.dart';

/// Result data returned by getDomains.
class GetDomainsResult {
  /// Whether the DNS for the domain is managed by Microsoft 365.
  final bool? adminManaged;
  /// A list of tenant domains. Each `domain` object provides the attributes documented below.
  final List<GetDomainsDomain> domains;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeUnverified;
  final bool? onlyDefault;
  final bool? onlyInitial;
  final bool? onlyRoot;
  final List<String>? supportsServices;

  /// Creates a new [GetDomainsResult].
  /// [adminManaged] Whether the DNS for the domain is managed by Microsoft 365.
  /// [domains] A list of tenant domains. Each `domain` object provides the attributes documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeUnverified] Optional.
  /// [onlyDefault] Optional.
  /// [onlyInitial] Optional.
  /// [onlyRoot] Optional.
  /// [supportsServices] Optional.
  GetDomainsResult({
    this.adminManaged,
    required this.domains,
    required this.id,
    this.includeUnverified,
    this.onlyDefault,
    this.onlyInitial,
    this.onlyRoot,
    this.supportsServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminManaged': ?adminManaged,
      'domains': pulumi.Input.encodeList<GetDomainsDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'id': id,
      'includeUnverified': ?includeUnverified,
      'onlyDefault': ?onlyDefault,
      'onlyInitial': ?onlyInitial,
      'onlyRoot': ?onlyRoot,
      'supportsServices': ?supportsServices,
    };
  }

  factory GetDomainsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainsResult(
      adminManaged: (() { final guardedValue = map['adminManaged']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      domains: pulumi.Input.decodeList<GetDomainsDomain>(map['domains']!, (value) => GetDomainsDomain.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      includeUnverified: (() { final guardedValue = map['includeUnverified']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      onlyDefault: (() { final guardedValue = map['onlyDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      onlyInitial: (() { final guardedValue = map['onlyInitial']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      onlyRoot: (() { final guardedValue = map['onlyRoot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      supportsServices: (() { final guardedValue = map['supportsServices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

