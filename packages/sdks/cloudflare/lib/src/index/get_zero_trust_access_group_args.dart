// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_group_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_group_get_zero_trust_access_group_args_doc}
/// Arguments for getZeroTrustAccessGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_group_get_zero_trust_access_group_args_doc}
class GetZeroTrustAccessGroupArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustAccessGroupFilter?>? filter;
  /// UUID.
  final pulumi.Input<String?>? groupId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessGroupArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [filter] Optional.
  /// [groupId] UUID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessGroupArgs({
    this.accountId,
    this.filter,
    this.groupId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessGroupFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'groupId': ?groupId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
