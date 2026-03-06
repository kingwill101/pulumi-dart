// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_access_rules_option_access_rule.dart';

class GetInstanceAccessRulesOption {
  /// An array of access rule exceptions. Each rule defines IP address ranges
  /// that should have different squash behavior than the default.
  final pulumi.Input<List<GetInstanceAccessRulesOptionAccessRule>> accessRules;
  /// The GID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final pulumi.Input<int> defaultSquashGid;
  /// Set to "ROOT_SQUASH" to enable root squashing by default.
  /// Other values include "NO_SQUASH". Possible values: ["ROOT_SQUASH", "NO_SQUASH"]
  final pulumi.Input<String> defaultSquashMode;
  /// The UID to map the root user to when root squashing is enabled
  /// (e.g., 65534 for nobody).
  final pulumi.Input<int> defaultSquashUid;

  /// Creates a new [GetInstanceAccessRulesOption].
  /// [accessRules] An array of access rule exceptions. Each rule defines IP address ranges
  /// [defaultSquashGid] The GID to map the root user to when root squashing is enabled
  /// [defaultSquashMode] Set to "ROOT_SQUASH" to enable root squashing by default.
  /// [defaultSquashUid] The UID to map the root user to when root squashing is enabled
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

