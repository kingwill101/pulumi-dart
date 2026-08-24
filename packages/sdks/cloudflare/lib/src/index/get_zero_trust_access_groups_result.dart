// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_groups_result_exclude.dart';
import 'get_zero_trust_access_groups_result_include.dart';
import 'get_zero_trust_access_groups_result_is_default.dart';
import 'get_zero_trust_access_groups_result_require.dart';

class GetZeroTrustAccessGroupsResult {
  /// Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  final pulumi.Input<List<GetZeroTrustAccessGroupsResultExclude>> excludes;
  /// UUID.
  final pulumi.Input<String> id;
  /// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  final pulumi.Input<List<GetZeroTrustAccessGroupsResultInclude>> includes;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  final pulumi.Input<List<GetZeroTrustAccessGroupsResultIsDefault>> isDefaults;
  /// The name of the Access group.
  final pulumi.Input<String> name;
  /// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  final pulumi.Input<List<GetZeroTrustAccessGroupsResultRequire>> requires;

  /// Creates a new [GetZeroTrustAccessGroupsResult].
  /// [excludes] Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
  /// [id] UUID.
  /// [includes] Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
  /// [isDefaults] Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  /// [name] The name of the Access group.
  /// [requires] Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
  const GetZeroTrustAccessGroupsResult({
    required this.excludes,
    required this.id,
    required this.includes,
    required this.isDefaults,
    required this.name,
    required this.requires,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': pulumi.Input.mapInputValue<List<GetZeroTrustAccessGroupsResultExclude>, List<Map<String, dynamic>>>(excludes, (value) => pulumi.Input.encodeList<GetZeroTrustAccessGroupsResultExclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'includes': pulumi.Input.mapInputValue<List<GetZeroTrustAccessGroupsResultInclude>, List<Map<String, dynamic>>>(includes, (value) => pulumi.Input.encodeList<GetZeroTrustAccessGroupsResultInclude, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isDefaults': pulumi.Input.mapInputValue<List<GetZeroTrustAccessGroupsResultIsDefault>, List<Map<String, dynamic>>>(isDefaults, (value) => pulumi.Input.encodeList<GetZeroTrustAccessGroupsResultIsDefault, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'requires': pulumi.Input.mapInputValue<List<GetZeroTrustAccessGroupsResultRequire>, List<Map<String, dynamic>>>(requires, (value) => pulumi.Input.encodeList<GetZeroTrustAccessGroupsResultRequire, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResult(
      excludes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessGroupsResultExclude>(map['excludes']!, (value) => GetZeroTrustAccessGroupsResultExclude.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      includes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessGroupsResultInclude>(map['includes']!, (value) => GetZeroTrustAccessGroupsResultInclude.fromMap((value as Map).cast<String, dynamic>()))),
      isDefaults: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessGroupsResultIsDefault>(map['isDefaults']!, (value) => GetZeroTrustAccessGroupsResultIsDefault.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      requires: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessGroupsResultRequire>(map['requires']!, (value) => GetZeroTrustAccessGroupsResultRequire.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
