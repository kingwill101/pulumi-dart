// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options_access_rule.dart';

class InstanceAccessRulesOptions {
  /// The access rules for the instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceAccessRulesOptionsAccessRule>>? accessRules;
  /// The user squash GID for the default access rule.
  /// This user squash GID applies to all root users connecting from clients
  /// that are not matched by any of the access rules. If not set, the default
  /// is 0 (no GID squash).
  final pulumi.Input<int>? defaultSquashGid;
  /// The squash mode for the default access rule.
  /// Possible values:
  /// NO_SQUASH
  /// ROOT_SQUASH
  final pulumi.Input<String> defaultSquashMode;
  /// The user squash UID for the default access rule.
  /// This user squash UID applies to all root users connecting from clients
  /// that are not matched by any of the access rules. If not set, the default
  /// is 0 (no UID squash).
  final pulumi.Input<int>? defaultSquashUid;

  /// Creates a new [InstanceAccessRulesOptions].
  /// [accessRules] The access rules for the instance.
  /// [defaultSquashGid] The user squash GID for the default access rule.
  /// [defaultSquashMode] The squash mode for the default access rule.
  /// [defaultSquashUid] The user squash UID for the default access rule.
  const InstanceAccessRulesOptions({
    this.accessRules,
    this.defaultSquashGid,
    required this.defaultSquashMode,
    this.defaultSquashUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRules': ?pulumi.Input.mapOptionalInputValue<List<InstanceAccessRulesOptionsAccessRule>, List<Map<String, dynamic>>>(accessRules, (value) => pulumi.Input.encodeList<InstanceAccessRulesOptionsAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSquashGid': ?defaultSquashGid,
      'defaultSquashMode': defaultSquashMode,
      'defaultSquashUid': ?defaultSquashUid,
    };
  }

  factory InstanceAccessRulesOptions.fromMap(Map<String, dynamic> map) {
    return InstanceAccessRulesOptions(
      accessRules: (() { final guardedValue = map['accessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceAccessRulesOptionsAccessRule>(guardedValue, (value) => InstanceAccessRulesOptionsAccessRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultSquashGid: (() { final guardedValue = map['defaultSquashGid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultSquashMode: pulumi.Input.fromValue(map['defaultSquashMode'] as String),
      defaultSquashUid: (() { final guardedValue = map['defaultSquashUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
