// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_group_exclude.dart';
import 'get_zero_trust_access_group_filter.dart';
import 'get_zero_trust_access_group_include.dart';
import 'get_zero_trust_access_group_is_default.dart';
import 'get_zero_trust_access_group_require.dart';

/// Result data returned by getZeroTrustAccessGroup.
class GetZeroTrustAccessGroupResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  final List<GetZeroTrustAccessGroupExclude>? excludes;
  final GetZeroTrustAccessGroupFilter? filter;
  /// UUID.
  final String? groupId;
  /// UUID.
  final String? id;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final List<GetZeroTrustAccessGroupInclude>? includes;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  final List<GetZeroTrustAccessGroupIsDefault>? isDefaults;
  /// The name of the Access group.
  final String? name;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  final List<GetZeroTrustAccessGroupRequire>? requires;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessGroupResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [excludes] Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  /// [filter] Optional.
  /// [groupId] UUID.
  /// [id] UUID.
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isDefaults] Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  /// [name] The name of the Access group.
  /// [requires] Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessGroupResult({
    this.accountId,
    this.excludes,
    this.filter,
    this.groupId,
    this.id,
    this.includes,
    this.isDefaults,
    this.name,
    this.requires,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'excludes': ?(() { final guardedValue = excludes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessGroupExclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter?.toMap(),
      'groupId': ?groupId,
      'id': ?id,
      'includes': ?(() { final guardedValue = includes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessGroupInclude, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isDefaults': ?(() { final guardedValue = isDefaults; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessGroupIsDefault, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'requires': ?(() { final guardedValue = requires; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessGroupRequire, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessGroupResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessGroupExclude>(guardedValue, (value) => GetZeroTrustAccessGroupExclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessGroupInclude>(guardedValue, (value) => GetZeroTrustAccessGroupInclude.fromMap((value as Map).cast<String, dynamic>())); })(),
      isDefaults: (() { final guardedValue = map['isDefaults']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessGroupIsDefault>(guardedValue, (value) => GetZeroTrustAccessGroupIsDefault.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessGroupRequire>(guardedValue, (value) => GetZeroTrustAccessGroupRequire.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
