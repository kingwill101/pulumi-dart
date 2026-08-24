// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_group_exclude.dart';
import 'access_group_include.dart';
import 'access_group_require.dart';

/// {@template pulumi_index_access_group_access_group_args_doc}
/// The set of arguments for AccessGroup.
/// {@endtemplate}
/// {@macro pulumi_index_access_group_access_group_args_doc}
class AccessGroupArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<AccessGroupExclude>?>? excludes;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<AccessGroupInclude>> includes;
  /// Whether this is the default group
  final pulumi.Input<bool?>? isDefault;
  /// The name of the Access group.
  final pulumi.Input<String> name;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  final pulumi.Input<List<AccessGroupRequire>?>? requires;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessGroupArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [excludes] Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isDefault] Whether this is the default group
  /// [name] The name of the Access group.
  /// [requires] Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessGroupArgs({
    this.accountId,
    this.excludes,
    required this.includes,
    this.isDefault,
    required this.name,
    this.requires,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'excludes': ?pulumi.Input.mapOptionalInputValue<List<AccessGroupExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<AccessGroupExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includes': pulumi.Input.mapInputValue<List<AccessGroupInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<AccessGroupInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isDefault': ?isDefault,
      'name': name,
      'requires': ?pulumi.Input.mapOptionalInputValue<List<AccessGroupRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<AccessGroupRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': ?zoneId,
    };
  }

  factory AccessGroupArgs.fromMap(Map<String, dynamic> map) {
    return AccessGroupArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGroupExclude>(guardedValue, (value) => AccessGroupExclude.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includes: pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGroupInclude>(map['includes']!, (value) => AccessGroupInclude.fromMap((value as Map).cast<String, dynamic>()))),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessGroupRequire>(guardedValue, (value) => AccessGroupRequire.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
