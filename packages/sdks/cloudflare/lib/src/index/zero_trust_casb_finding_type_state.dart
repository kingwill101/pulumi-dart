// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_finding_type_category.dart';

/// Input properties used for looking up and filtering ZeroTrustCasbFindingType resources.
class ZeroTrustCasbFindingTypeState {
  final pulumi.Input<String?>? accountId;
  /// When true, this finding type applies to every current and future integration of the vendor.
  final pulumi.Input<bool?>? appliesToAllIntegrations;
  /// Asset class this finding type applies to (PascalCase, e.g. GoogleWorkspaceFile)
  final pulumi.Input<String?>? assetClass;
  /// Canonical vendor enum for the platform whose assets this finding type evaluates.
  /// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE", "DROPBOX", "GITHUB", "GOOGLE*CLOUD*PLATFORM", "GOOGLE_WORKSPACE", "JIRA", "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
  final pulumi.Input<String?>? assetVendor;
  /// Category information for a finding.
  final pulumi.Input<ZeroTrustCasbFindingTypeCategory?>? category;
  /// Timestamp when the finding type was created.
  final pulumi.Input<String?>? createdAt;
  /// Human-readable description of the finding type. Cannot be empty. Maximum 4096 characters.
  final pulumi.Input<String?>? description;
  /// Rego expression body for the policy. `package cloudflare.casb.custom` and `import rego.v1` are added automatically. Do not include package or import declarations. This field cannot be changed after creation. Maximum 4096 characters.
  final pulumi.Input<String?>? expression;
  /// Required and non-empty when applies*to*all_integrations is false; omit when it is true.
  final pulumi.Input<List<String>?>? integrationIds;
  /// Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  final pulumi.Input<int?>? matchCount;
  /// Human-readable name for the finding type. Maximum 256 characters.
  final pulumi.Input<String?>? name;
  /// Whether the finding type is system-managed or customer-created.
  /// Available values: "system", "custom".
  final pulumi.Input<String?>? origin;
  /// Whether evaluation of this finding type is suspended by an operator. Present only when true.
  final pulumi.Input<bool?>? quarantined;
  /// Default severity used when no integration-specific severity override exists.
  /// Available values: "Critical", "High", "Medium", "Low".
  final pulumi.Input<String?>? severity;
  /// Timestamp when the finding type was last updated.
  final pulumi.Input<String?>? updatedAt;
  /// The SaaS/Cloud vendor of the platform with which the finding is associated.
  final pulumi.Input<String?>? vendor;
  /// Current version of the finding type. Incremented on each update.
  final pulumi.Input<int?>? version;

  /// Creates a new [ZeroTrustCasbFindingTypeState].
  /// [accountId] Optional.
  /// [appliesToAllIntegrations] When true, this finding type applies to every current and future integration of the vendor.
  /// [assetClass] Asset class this finding type applies to (PascalCase, e.g. GoogleWorkspaceFile)
  /// [assetVendor] Canonical vendor enum for the platform whose assets this finding type evaluates.
  /// [category] Category information for a finding.
  /// [createdAt] Timestamp when the finding type was created.
  /// [description] Human-readable description of the finding type. Cannot be empty. Maximum 4096 characters.
  /// [expression] Rego expression body for the policy. `package cloudflare.casb.custom` and `import rego.v1` are added automatically. Do not include package or import declarations. This field cannot be changed after creation. Maximum 4096 characters.
  /// [integrationIds] Required and non-empty when applies*to*all_integrations is false; omit when it is true.
  /// [matchCount] Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  /// [name] Human-readable name for the finding type. Maximum 256 characters.
  /// [origin] Whether the finding type is system-managed or customer-created.
  /// [quarantined] Whether evaluation of this finding type is suspended by an operator. Present only when true.
  /// [severity] Default severity used when no integration-specific severity override exists.
  /// [updatedAt] Timestamp when the finding type was last updated.
  /// [vendor] The SaaS/Cloud vendor of the platform with which the finding is associated.
  /// [version] Current version of the finding type. Incremented on each update.
  const ZeroTrustCasbFindingTypeState({
    this.accountId,
    this.appliesToAllIntegrations,
    this.assetClass,
    this.assetVendor,
    this.category,
    this.createdAt,
    this.description,
    this.expression,
    this.integrationIds,
    this.matchCount,
    this.name,
    this.origin,
    this.quarantined,
    this.severity,
    this.updatedAt,
    this.vendor,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appliesToAllIntegrations': ?appliesToAllIntegrations,
      'assetClass': ?assetClass,
      'assetVendor': ?assetVendor,
      'category': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbFindingTypeCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'description': ?description,
      'expression': ?expression,
      'integrationIds': ?integrationIds,
      'matchCount': ?matchCount,
      'name': ?name,
      'origin': ?origin,
      'quarantined': ?quarantined,
      'severity': ?severity,
      'updatedAt': ?updatedAt,
      'vendor': ?vendor,
      'version': ?version,
    };
  }

  factory ZeroTrustCasbFindingTypeState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbFindingTypeState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appliesToAllIntegrations: (() { final guardedValue = map['appliesToAllIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      assetClass: (() { final guardedValue = map['assetClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      assetVendor: (() { final guardedValue = map['assetVendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbFindingTypeCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationIds: (() { final guardedValue = map['integrationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchCount: (() { final guardedValue = map['matchCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quarantined: (() { final guardedValue = map['quarantined']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
