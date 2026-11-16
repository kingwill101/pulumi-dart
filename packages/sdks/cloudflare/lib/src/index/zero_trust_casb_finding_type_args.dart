// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_casb_finding_type_zero_trust_casb_finding_type_args_doc}
/// The set of arguments for ZeroTrustCasbFindingType.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_casb_finding_type_zero_trust_casb_finding_type_args_doc}
class ZeroTrustCasbFindingTypeArgs {
  final pulumi.Input<String> accountId;
  /// When true, this finding type applies to every current and future integration of the vendor.
  final pulumi.Input<bool> appliesToAllIntegrations;
  /// Asset class this finding type applies to (PascalCase, e.g. GoogleWorkspaceFile)
  final pulumi.Input<String> assetClass;
  /// Canonical vendor enum for the platform whose assets this finding type evaluates.
  /// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE", "DROPBOX", "GITHUB", "GOOGLE*CLOUD*PLATFORM", "GOOGLE_WORKSPACE", "JIRA", "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
  final pulumi.Input<String> assetVendor;
  /// Human-readable description of the finding type. Cannot be empty. Maximum 4096 characters.
  final pulumi.Input<String> description;
  /// Rego expression body for the policy. `package cloudflare.casb.custom` and `import rego.v1` are added automatically. Do not include package or import declarations. This field cannot be changed after creation. Maximum 4096 characters.
  final pulumi.Input<String> expression;
  /// Required and non-empty when applies*to*all_integrations is false; omit when it is true.
  final pulumi.Input<List<String>?>? integrationIds;
  /// Human-readable name for the finding type. Maximum 256 characters.
  final pulumi.Input<String> name;
  /// Default severity used when no integration-specific severity override exists.
  /// Available values: "Critical", "High", "Medium", "Low".
  final pulumi.Input<String> severity;

  /// Creates a new [ZeroTrustCasbFindingTypeArgs].
  /// [accountId] Required.
  /// [appliesToAllIntegrations] When true, this finding type applies to every current and future integration of the vendor.
  /// [assetClass] Asset class this finding type applies to (PascalCase, e.g. GoogleWorkspaceFile)
  /// [assetVendor] Canonical vendor enum for the platform whose assets this finding type evaluates.
  /// [description] Human-readable description of the finding type. Cannot be empty. Maximum 4096 characters.
  /// [expression] Rego expression body for the policy. `package cloudflare.casb.custom` and `import rego.v1` are added automatically. Do not include package or import declarations. This field cannot be changed after creation. Maximum 4096 characters.
  /// [integrationIds] Required and non-empty when applies*to*all_integrations is false; omit when it is true.
  /// [name] Human-readable name for the finding type. Maximum 256 characters.
  /// [severity] Default severity used when no integration-specific severity override exists.
  const ZeroTrustCasbFindingTypeArgs({
    required this.accountId,
    required this.appliesToAllIntegrations,
    required this.assetClass,
    required this.assetVendor,
    required this.description,
    required this.expression,
    this.integrationIds,
    required this.name,
    required this.severity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'appliesToAllIntegrations': appliesToAllIntegrations,
      'assetClass': assetClass,
      'assetVendor': assetVendor,
      'description': description,
      'expression': expression,
      'integrationIds': ?integrationIds,
      'name': name,
      'severity': severity,
    };
  }

  factory ZeroTrustCasbFindingTypeArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbFindingTypeArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      appliesToAllIntegrations: pulumi.Input.fromValue(map['appliesToAllIntegrations'] as bool),
      assetClass: pulumi.Input.fromValue(map['assetClass'] as String),
      assetVendor: pulumi.Input.fromValue(map['assetVendor'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      integrationIds: (() { final guardedValue = map['integrationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
    );
  }
}
