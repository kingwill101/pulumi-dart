// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_integration_filter.dart';

/// {@template pulumi_index_get_zero_trust_casb_integration_get_zero_trust_casb_integration_args_doc}
/// Arguments for getZeroTrustCasbIntegration.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_casb_integration_get_zero_trust_casb_integration_args_doc}
class GetZeroTrustCasbIntegrationArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCasbIntegrationFilter?>? filter;
  /// Integration ID to look up. Exactly one of `id` or `filter` must be configured.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetZeroTrustCasbIntegrationArgs].
  /// [accountId] Required.
  /// [filter] Optional.
  /// [id] Integration ID to look up. Exactly one of `id` or `filter` must be configured.
  const GetZeroTrustCasbIntegrationArgs({
    required this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCasbIntegrationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetZeroTrustCasbIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbIntegrationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCasbIntegrationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
