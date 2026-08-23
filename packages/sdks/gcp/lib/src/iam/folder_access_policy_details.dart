// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_access_policy_details_rule.dart';

class FolderAccessPolicyDetails {
  /// A list of access policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<FolderAccessPolicyDetailsRule>> rules;

  /// Creates a new [FolderAccessPolicyDetails].
  /// [rules] A list of access policy rules.
  const FolderAccessPolicyDetails({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<FolderAccessPolicyDetailsRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FolderAccessPolicyDetailsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FolderAccessPolicyDetails.fromMap(Map<String, dynamic> map) {
    return FolderAccessPolicyDetails(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<FolderAccessPolicyDetailsRule>(map['rules']!, (value) => FolderAccessPolicyDetailsRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
