// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_advanced_options_config.dart';
import 'get_region_security_policy_ddos_protection_config.dart';
import 'get_region_security_policy_rule.dart';
import 'get_region_security_policy_user_defined_field.dart';

/// Result data returned by getRegionSecurityPolicy.
class GetRegionSecurityPolicyResult {
  final List<GetRegionSecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfigs;
  final List<GetRegionSecurityPolicyDdosProtectionConfig>? ddosProtectionConfigs;
  final String? deletionPolicy;
  final String? description;
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? policyId;
  final String? project;
  final String? region;
  final List<GetRegionSecurityPolicyRule>? rules;
  final String? selfLink;
  final String? selfLinkWithPolicyId;
  final String? type;
  final List<GetRegionSecurityPolicyUserDefinedField>? userDefinedFields;

  /// Creates a new [GetRegionSecurityPolicyResult].
  /// [advancedOptionsConfigs] Optional.
  /// [ddosProtectionConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [fingerprint] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [policyId] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [rules] Optional.
  /// [selfLink] Optional.
  /// [selfLinkWithPolicyId] Optional.
  /// [type] Optional.
  /// [userDefinedFields] Optional.
  const GetRegionSecurityPolicyResult({
    this.advancedOptionsConfigs,
    this.ddosProtectionConfigs,
    this.deletionPolicy,
    this.description,
    this.fingerprint,
    this.id,
    this.name,
    this.policyId,
    this.project,
    this.region,
    this.rules,
    this.selfLink,
    this.selfLinkWithPolicyId,
    this.type,
    this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedOptionsConfigs': ?(() { final guardedValue = advancedOptionsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ddosProtectionConfigs': ?(() { final guardedValue = ddosProtectionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionSecurityPolicyDdosProtectionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'name': ?name,
      'policyId': ?policyId,
      'project': ?project,
      'region': ?region,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionSecurityPolicyRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'selfLinkWithPolicyId': ?selfLinkWithPolicyId,
      'type': ?type,
      'userDefinedFields': ?(() { final guardedValue = userDefinedFields; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionSecurityPolicyUserDefinedField, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRegionSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyResult(
      advancedOptionsConfigs: (() { final guardedValue = map['advancedOptionsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionSecurityPolicyAdvancedOptionsConfig>(guardedValue, (value) => GetRegionSecurityPolicyAdvancedOptionsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      ddosProtectionConfigs: (() { final guardedValue = map['ddosProtectionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionSecurityPolicyDdosProtectionConfig>(guardedValue, (value) => GetRegionSecurityPolicyDdosProtectionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionSecurityPolicyRule>(guardedValue, (value) => GetRegionSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithPolicyId: (() { final guardedValue = map['selfLinkWithPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userDefinedFields: (() { final guardedValue = map['userDefinedFields']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionSecurityPolicyUserDefinedField>(guardedValue, (value) => GetRegionSecurityPolicyUserDefinedField.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
