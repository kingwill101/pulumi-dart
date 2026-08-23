// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_advanced_options_config.dart';
import 'get_region_security_policy_ddos_protection_config.dart';
import 'get_region_security_policy_rule.dart';
import 'get_region_security_policy_user_defined_field.dart';

/// Result data returned by getRegionSecurityPolicy.
class GetRegionSecurityPolicyResult {
  final List<GetRegionSecurityPolicyAdvancedOptionsConfig> advancedOptionsConfigs;
  final List<GetRegionSecurityPolicyDdosProtectionConfig> ddosProtectionConfigs;
  final String deletionPolicy;
  final String description;
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String policyId;
  final String? project;
  final String? region;
  final List<GetRegionSecurityPolicyRule> rules;
  final String selfLink;
  final String selfLinkWithPolicyId;
  final String type;
  final List<GetRegionSecurityPolicyUserDefinedField> userDefinedFields;

  /// Creates a new [GetRegionSecurityPolicyResult].
  /// [advancedOptionsConfigs] Required.
  /// [ddosProtectionConfigs] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [fingerprint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [policyId] Required.
  /// [project] Optional.
  /// [region] Optional.
  /// [rules] Required.
  /// [selfLink] Required.
  /// [selfLinkWithPolicyId] Required.
  /// [type] Required.
  /// [userDefinedFields] Required.
  const GetRegionSecurityPolicyResult({
    required this.advancedOptionsConfigs,
    required this.ddosProtectionConfigs,
    required this.deletionPolicy,
    required this.description,
    required this.fingerprint,
    required this.id,
    required this.name,
    required this.policyId,
    this.project,
    this.region,
    required this.rules,
    required this.selfLink,
    required this.selfLinkWithPolicyId,
    required this.type,
    required this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedOptionsConfigs': pulumi.Input.encodeList<GetRegionSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(advancedOptionsConfigs, (value) => value.toMap()),
      'ddosProtectionConfigs': pulumi.Input.encodeList<GetRegionSecurityPolicyDdosProtectionConfig, Map<String, dynamic>>(ddosProtectionConfigs, (value) => value.toMap()),
      'deletionPolicy': deletionPolicy,
      'description': description,
      'fingerprint': fingerprint,
      'id': id,
      'name': name,
      'policyId': policyId,
      'project': ?project,
      'region': ?region,
      'rules': pulumi.Input.encodeList<GetRegionSecurityPolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'selfLink': selfLink,
      'selfLinkWithPolicyId': selfLinkWithPolicyId,
      'type': type,
      'userDefinedFields': pulumi.Input.encodeList<GetRegionSecurityPolicyUserDefinedField, Map<String, dynamic>>(userDefinedFields, (value) => value.toMap()),
    };
  }

  factory GetRegionSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyResult(
      advancedOptionsConfigs: pulumi.Input.decodeList<GetRegionSecurityPolicyAdvancedOptionsConfig>(map['advancedOptionsConfigs']!, (value) => GetRegionSecurityPolicyAdvancedOptionsConfig.fromMap((value as Map).cast<String, dynamic>())),
      ddosProtectionConfigs: pulumi.Input.decodeList<GetRegionSecurityPolicyDdosProtectionConfig>(map['ddosProtectionConfigs']!, (value) => GetRegionSecurityPolicyDdosProtectionConfig.fromMap((value as Map).cast<String, dynamic>())),
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      policyId: map['policyId'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: pulumi.Input.decodeList<GetRegionSecurityPolicyRule>(map['rules']!, (value) => GetRegionSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      selfLinkWithPolicyId: map['selfLinkWithPolicyId'] as String,
      type: map['type'] as String,
      userDefinedFields: pulumi.Input.decodeList<GetRegionSecurityPolicyUserDefinedField>(map['userDefinedFields']!, (value) => GetRegionSecurityPolicyUserDefinedField.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
