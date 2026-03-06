// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule_action_base_blob.dart';
import 'get_policy_rule_action_snapshot.dart';
import 'get_policy_rule_action_version.dart';

class GetPolicyRuleAction {
  /// A `base_blob` block as documented below.
  final pulumi.Input<List<GetPolicyRuleActionBaseBlob>> baseBlobs;
  /// A `snapshot` block as documented below.
  final pulumi.Input<List<GetPolicyRuleActionSnapshot>> snapshots;
  /// A `version` block as documented below.
  final pulumi.Input<List<GetPolicyRuleActionVersion>> versions;

  /// Creates a new [GetPolicyRuleAction].
  /// [baseBlobs] A `base_blob` block as documented below.
  /// [snapshots] A `snapshot` block as documented below.
  /// [versions] A `version` block as documented below.
  const GetPolicyRuleAction({
    required this.baseBlobs,
    required this.snapshots,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseBlobs': pulumi.Input.mapInputValue<List<GetPolicyRuleActionBaseBlob>, List<Map<String, dynamic>>>(baseBlobs, (value) => pulumi.Input.encodeList<GetPolicyRuleActionBaseBlob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'snapshots': pulumi.Input.mapInputValue<List<GetPolicyRuleActionSnapshot>, List<Map<String, dynamic>>>(snapshots, (value) => pulumi.Input.encodeList<GetPolicyRuleActionSnapshot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versions': pulumi.Input.mapInputValue<List<GetPolicyRuleActionVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GetPolicyRuleActionVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPolicyRuleAction.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleAction(
      baseBlobs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRuleActionBaseBlob>(map['baseBlobs']!, (value) => GetPolicyRuleActionBaseBlob.fromMap((value as Map).cast<String, dynamic>()))),
      snapshots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRuleActionSnapshot>(map['snapshots']!, (value) => GetPolicyRuleActionSnapshot.fromMap((value as Map).cast<String, dynamic>()))),
      versions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRuleActionVersion>(map['versions']!, (value) => GetPolicyRuleActionVersion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

