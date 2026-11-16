// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_finding_types_result_category.dart';

class GetZeroTrustCasbFindingTypesResult {
  /// Whether this finding type applies to every current and future integration of the vendor.
  final pulumi.Input<bool> appliesToAllIntegrations;
  /// Asset class the finding type's policy evaluates.
  final pulumi.Input<String> assetClass;
  /// Canonical vendor enum value.
  /// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE", "DROPBOX", "GITHUB", "GOOGLE*CLOUD*PLATFORM", "GOOGLE_WORKSPACE", "JIRA", "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
  final pulumi.Input<String> assetVendor;
  /// Category information for a finding.
  final pulumi.Input<GetZeroTrustCasbFindingTypesResultCategory> category;
  /// Timestamp when the finding type was created.
  final pulumi.Input<String> createdAt;
  /// Detailed description of the finding.
  final pulumi.Input<String> description;
  /// Rego expression backing this finding type. For custom finding types, generated package and import declarations are omitted. System expressions are returned unchanged.
  final pulumi.Input<String> expression;
  /// The unique identifier of the finding.
  final pulumi.Input<String> id;
  /// Integrations this finding type applies to when applies*to*all_integrations is false.
  final pulumi.Input<List<String>> integrationIds;
  /// Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  final pulumi.Input<int> matchCount;
  /// The name of the finding.
  final pulumi.Input<String> name;
  /// Whether the finding type is system-managed or customer-created.
  /// Available values: "system", "custom".
  final pulumi.Input<String> origin;
  /// Whether evaluation of this finding type is suspended by an operator. Present only when true.
  final pulumi.Input<bool> quarantined;
  /// Default severity used when no integration-specific severity override exists.
  /// Available values: "Critical", "High", "Medium", "Low".
  final pulumi.Input<String> severity;
  /// Timestamp when the finding type was last updated.
  final pulumi.Input<String> updatedAt;
  /// The SaaS/Cloud vendor of the platform with which the finding is associated.
  final pulumi.Input<String> vendor;
  /// Current version of the finding type. Incremented on each update.
  final pulumi.Input<int> version;

  /// Creates a new [GetZeroTrustCasbFindingTypesResult].
  /// [appliesToAllIntegrations] Whether this finding type applies to every current and future integration of the vendor.
  /// [assetClass] Asset class the finding type's policy evaluates.
  /// [assetVendor] Canonical vendor enum value.
  /// [category] Category information for a finding.
  /// [createdAt] Timestamp when the finding type was created.
  /// [description] Detailed description of the finding.
  /// [expression] Rego expression backing this finding type. For custom finding types, generated package and import declarations are omitted. System expressions are returned unchanged.
  /// [id] The unique identifier of the finding.
  /// [integrationIds] Integrations this finding type applies to when applies*to*all_integrations is false.
  /// [matchCount] Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  /// [name] The name of the finding.
  /// [origin] Whether the finding type is system-managed or customer-created.
  /// [quarantined] Whether evaluation of this finding type is suspended by an operator. Present only when true.
  /// [severity] Default severity used when no integration-specific severity override exists.
  /// [updatedAt] Timestamp when the finding type was last updated.
  /// [vendor] The SaaS/Cloud vendor of the platform with which the finding is associated.
  /// [version] Current version of the finding type. Incremented on each update.
  const GetZeroTrustCasbFindingTypesResult({
    required this.appliesToAllIntegrations,
    required this.assetClass,
    required this.assetVendor,
    required this.category,
    required this.createdAt,
    required this.description,
    required this.expression,
    required this.id,
    required this.integrationIds,
    required this.matchCount,
    required this.name,
    required this.origin,
    required this.quarantined,
    required this.severity,
    required this.updatedAt,
    required this.vendor,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToAllIntegrations': appliesToAllIntegrations,
      'assetClass': assetClass,
      'assetVendor': assetVendor,
      'category': pulumi.Input.mapInputValue<GetZeroTrustCasbFindingTypesResultCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
      'createdAt': createdAt,
      'description': description,
      'expression': expression,
      'id': id,
      'integrationIds': integrationIds,
      'matchCount': matchCount,
      'name': name,
      'origin': origin,
      'quarantined': quarantined,
      'severity': severity,
      'updatedAt': updatedAt,
      'vendor': vendor,
      'version': version,
    };
  }

  factory GetZeroTrustCasbFindingTypesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbFindingTypesResult(
      appliesToAllIntegrations: pulumi.Input.fromValue(map['appliesToAllIntegrations'] as bool),
      assetClass: pulumi.Input.fromValue(map['assetClass'] as String),
      assetVendor: pulumi.Input.fromValue(map['assetVendor'] as String),
      category: pulumi.Input.fromValue(GetZeroTrustCasbFindingTypesResultCategory.fromMap((map['category']! as Map).cast<String, dynamic>())),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      integrationIds: pulumi.Input.fromValue((map['integrationIds'] as List).cast<String>()),
      matchCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['matchCount'])),
      name: pulumi.Input.fromValue(map['name'] as String),
      origin: pulumi.Input.fromValue(map['origin'] as String),
      quarantined: pulumi.Input.fromValue(map['quarantined'] as bool),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
      version: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['version'])),
    );
  }
}
