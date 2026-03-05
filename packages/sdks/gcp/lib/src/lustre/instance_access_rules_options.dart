// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options_access_rule.dart';

class InstanceAccessRulesOptions {
  /// An array of access rule exceptions. Each rule defines IP address ranges
  /// that should have different squash behavior than the default.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceAccessRulesOptionsAccessRule>>? accessRules;
  /// The GID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final pulumi.Input<int>? defaultSquashGid;
  /// Set to "ROOT_SQUASH" to enable root squashing by default.
  /// Other values include "NO_SQUASH".
  /// Possible values are: `ROOT_SQUASH`, `NO_SQUASH`.
  final pulumi.Input<String> defaultSquashMode;
  /// The UID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final pulumi.Input<int>? defaultSquashUid;

  /// Creates a new [InstanceAccessRulesOptions].
  /// [accessRules] An array of access rule exceptions. Each rule defines IP address ranges
  /// [defaultSquashGid] The GID to map the root user to when root squashing is enabled
  /// [defaultSquashMode] Set to "ROOT_SQUASH" to enable root squashing by default.
  /// [defaultSquashUid] The UID to map the root user to when root squashing is enabled
  InstanceAccessRulesOptions({
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

