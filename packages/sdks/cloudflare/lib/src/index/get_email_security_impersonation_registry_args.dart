// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_impersonation_registry_filter.dart';

/// {@template pulumi_index_get_email_security_impersonation_registry_get_email_security_impersonation_registry_args_doc}
/// Arguments for getEmailSecurityImpersonationRegistry.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_security_impersonation_registry_get_email_security_impersonation_registry_args_doc}
class GetEmailSecurityImpersonationRegistryArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetEmailSecurityImpersonationRegistryFilter?>? filter;
  /// Impersonation registry entry identifier
  final pulumi.Input<String?>? impersonationRegistryId;

  /// Creates a new [GetEmailSecurityImpersonationRegistryArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [impersonationRegistryId] Impersonation registry entry identifier
  const GetEmailSecurityImpersonationRegistryArgs({
    this.accountId,
    this.filter,
    this.impersonationRegistryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailSecurityImpersonationRegistryFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'impersonationRegistryId': ?impersonationRegistryId,
    };
  }

  factory GetEmailSecurityImpersonationRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityImpersonationRegistryArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailSecurityImpersonationRegistryFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      impersonationRegistryId: (() { final guardedValue = map['impersonationRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
