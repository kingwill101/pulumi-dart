// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_custom_domain_filter.dart';

/// {@template pulumi_index_get_workers_custom_domain_get_workers_custom_domain_args_doc}
/// Arguments for getWorkersCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_custom_domain_get_workers_custom_domain_args_doc}
class GetWorkersCustomDomainArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// ID of the domain.
  final pulumi.Input<String?>? domainId;
  final pulumi.Input<GetWorkersCustomDomainFilter?>? filter;

  /// Creates a new [GetWorkersCustomDomainArgs].
  /// [accountId] Identifier.
  /// [domainId] ID of the domain.
  /// [filter] Optional.
  const GetWorkersCustomDomainArgs({
    this.accountId,
    this.domainId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'domainId': ?domainId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetWorkersCustomDomainFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetWorkersCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersCustomDomainArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWorkersCustomDomainFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
