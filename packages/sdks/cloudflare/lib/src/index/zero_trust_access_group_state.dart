// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_group_exclude.dart';
import 'zero_trust_access_group_include.dart';
import 'zero_trust_access_group_require.dart';

/// Input properties used for looking up and filtering ZeroTrustAccessGroup resources.
class ZeroTrustAccessGroupState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<ZeroTrustAccessGroupExclude>?>? excludes;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<ZeroTrustAccessGroupInclude>?>? includes;
  /// Whether this is the default group
  final pulumi.Input<bool?>? isDefault;
  /// The name of the Access group.
  final pulumi.Input<String?>? name;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  final pulumi.Input<List<ZeroTrustAccessGroupRequire>?>? requires;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustAccessGroupState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [excludes] Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isDefault] Whether this is the default group
  /// [name] The name of the Access group.
  /// [requires] Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustAccessGroupState({
    this.accountId,
    this.excludes,
    this.includes,
    this.isDefault,
    this.name,
    this.requires,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessGroupExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<ZeroTrustAccessGroupExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includes': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessGroupInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<ZeroTrustAccessGroupInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isDefault': ?isDefault,
      'name': ?name,
      'requires': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessGroupRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<ZeroTrustAccessGroupRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustAccessGroupState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessGroupExclude>(guardedValue, (value) => ZeroTrustAccessGroupExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessGroupInclude>(guardedValue, (value) => ZeroTrustAccessGroupInclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessGroupRequire>(guardedValue, (value) => ZeroTrustAccessGroupRequire.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
