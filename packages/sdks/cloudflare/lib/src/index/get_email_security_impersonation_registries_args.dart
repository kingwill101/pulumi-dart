// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_security_impersonation_registries_get_email_security_impersonation_registries_args_doc}
/// Arguments for getEmailSecurityImpersonationRegistries.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_impersonation_registries_get_email_security_impersonation_registries_args_doc}
class GetEmailSecurityImpersonationRegistriesArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to sort by.
  /// Available values: "name", "email", "createdAt".
  final pulumi.Input<String?>? order;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final pulumi.Input<String?>? provenance;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetEmailSecurityImpersonationRegistriesArgs].
  /// [accountId] Identifier.
  /// [direction] The sorting direction.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to sort by.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityImpersonationRegistriesArgs({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.provenance,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'provenance': ?provenance,
      'search': ?search,
    };
  }

  factory GetEmailSecurityImpersonationRegistriesArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityImpersonationRegistriesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
