// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_rego_module_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_rego_module_get_zero_trust_cws_rego_module_args_doc}
/// Arguments for getZeroTrustCwsRegoModule.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_rego_module_get_zero_trust_cws_rego_module_args_doc}
class GetZeroTrustCwsRegoModuleArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsRegoModuleFilter?>? filter;
  /// ID of the Rego module to retrieve
  final pulumi.Input<String?>? regoModuleId;

  /// Creates a new [GetZeroTrustCwsRegoModuleArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [filter] Optional.
  /// [regoModuleId] ID of the Rego module to retrieve
  const GetZeroTrustCwsRegoModuleArgs({
    required this.accountId,
    this.filter,
    this.regoModuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsRegoModuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'regoModuleId': ?regoModuleId,
    };
  }

  factory GetZeroTrustCwsRegoModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoModuleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsRegoModuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regoModuleId: (() { final guardedValue = map['regoModuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
