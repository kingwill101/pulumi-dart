// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_application_get_zero_trust_access_application_args_doc}
/// Arguments for getZeroTrustAccessApplication.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_application_get_zero_trust_access_application_args_doc}
class GetZeroTrustAccessApplicationArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Identifier.
  final pulumi.Input<String?>? appId;
  final pulumi.Input<GetZeroTrustAccessApplicationFilter?>? filter;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessApplicationArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [appId] Identifier.
  /// [filter] Optional.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessApplicationArgs({
    this.accountId,
    this.appId,
    this.filter,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessApplicationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessApplicationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
