// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_export_policy_rule.dart';

class VolumeExportPolicy {
  /// Export rules (up to 5) control NFS volume access.
  /// Structure is documented below.
  final List<VolumeExportPolicyRule> rules;

  /// Creates a new [VolumeExportPolicy].
  /// [rules] Export rules (up to 5) control NFS volume access.
  VolumeExportPolicy({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.encodeList<VolumeExportPolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory VolumeExportPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeExportPolicy(
      rules: pulumi.Input.decodeList<VolumeExportPolicyRule>(map['rules'], (value) => VolumeExportPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

