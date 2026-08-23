// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_access_rules_option_access_rule.dart';

class GetInstanceAccessRulesOption {
  /// The access rules for the instance.
  final pulumi.Input<List<GetInstanceAccessRulesOptionAccessRule>> accessRules;
  /// The user squash GID for the default access rule.
  /// This user squash GID applies to all root users connecting from clients
  /// that are not matched by any of the access rules. If not set, the default
  /// is 0 (no GID squash).
  final pulumi.Input<int> defaultSquashGid;
  /// The squash mode for the default access rule.
  /// Possible values:
  /// NO_SQUASH
  /// ROOT_SQUASH
  final pulumi.Input<String> defaultSquashMode;
  /// The user squash UID for the default access rule.
  /// This user squash UID applies to all root users connecting from clients
  /// that are not matched by any of the access rules. If not set, the default
  /// is 0 (no UID squash).
  final pulumi.Input<int> defaultSquashUid;

  /// Creates a new [GetInstanceAccessRulesOption].
  /// [accessRules] The access rules for the instance.
  /// [defaultSquashGid] The user squash GID for the default access rule.
  /// [defaultSquashMode] The squash mode for the default access rule.
  /// [defaultSquashUid] The user squash UID for the default access rule.
  const GetInstanceAccessRulesOption({
    required this.accessRules,
    required this.defaultSquashGid,
    required this.defaultSquashMode,
    required this.defaultSquashUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': pulumi.Input.mapInputValue<List<GetInstanceAccessRulesOptionAccessRule>, List<Map<String, dynamic>>>(accessRules, (value) => pulumi.Input.encodeList<GetInstanceAccessRulesOptionAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSquashGid': defaultSquashGid,
      'defaultSquashMode': defaultSquashMode,
      'defaultSquashUid': defaultSquashUid,
    };
  }

  factory GetInstanceAccessRulesOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceAccessRulesOption(
      accessRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceAccessRulesOptionAccessRule>(map['accessRules']!, (value) => GetInstanceAccessRulesOptionAccessRule.fromMap((value as Map).cast<String, dynamic>()))),
      defaultSquashGid: pulumi.Input.fromValue(map['defaultSquashGid'] as int),
      defaultSquashMode: pulumi.Input.fromValue(map['defaultSquashMode'] as String),
      defaultSquashUid: pulumi.Input.fromValue(map['defaultSquashUid'] as int),
    );
  }
}
