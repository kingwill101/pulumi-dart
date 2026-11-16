// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_casb_finding_type_category.dart';
import 'get_zero_trust_casb_finding_type_filter.dart';

/// Result data returned by getZeroTrustCasbFindingType.
class GetZeroTrustCasbFindingTypeResult {
  final String? accountId;
  /// Whether this finding type applies to every current and future integration of the vendor.
  final bool? appliesToAllIntegrations;
  /// Asset class the finding type's policy evaluates.
  final String? assetClass;
  /// Canonical vendor enum value.
  /// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE", "DROPBOX", "GITHUB", "GOOGLE*CLOUD*PLATFORM", "GOOGLE_WORKSPACE", "JIRA", "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
  final String? assetVendor;
  /// Category information for a finding.
  final GetZeroTrustCasbFindingTypeCategory? category;
  /// Timestamp when the finding type was created.
  final String? createdAt;
  /// Detailed description of the finding.
  final String? description;
  /// Rego expression backing this finding type. For custom finding types, generated package and import declarations are omitted. System expressions are returned unchanged.
  final String? expression;
  final GetZeroTrustCasbFindingTypeFilter? filter;
  final String? findingTypeId;
  /// The ID of this resource.
  final String? id;
  /// Integrations this finding type applies to when applies*to*all_integrations is false.
  final List<String>? integrationIds;
  /// Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  final int? matchCount;
  /// The name of the finding.
  final String? name;
  /// Whether the finding type is system-managed or customer-created.
  /// Available values: "system", "custom".
  final String? origin;
  /// Whether evaluation of this finding type is suspended by an operator. Present only when true.
  final bool? quarantined;
  /// Default severity used when no integration-specific severity override exists.
  /// Available values: "Critical", "High", "Medium", "Low".
  final String? severity;
  /// Timestamp when the finding type was last updated.
  final String? updatedAt;
  /// The SaaS/Cloud vendor of the platform with which the finding is associated.
  final String? vendor;
  /// Current version of the finding type. Incremented on each update.
  final int? version;

  /// Creates a new [GetZeroTrustCasbFindingTypeResult].
  /// [accountId] Optional.
  /// [appliesToAllIntegrations] Whether this finding type applies to every current and future integration of the vendor.
  /// [assetClass] Asset class the finding type's policy evaluates.
  /// [assetVendor] Canonical vendor enum value.
  /// [category] Category information for a finding.
  /// [createdAt] Timestamp when the finding type was created.
  /// [description] Detailed description of the finding.
  /// [expression] Rego expression backing this finding type. For custom finding types, generated package and import declarations are omitted. System expressions are returned unchanged.
  /// [filter] Optional.
  /// [findingTypeId] Optional.
  /// [id] The ID of this resource.
  /// [integrationIds] Integrations this finding type applies to when applies*to*all_integrations is false.
  /// [matchCount] Number of currently active finding instances across the account's integrations. Zero when none have been detected.
  /// [name] The name of the finding.
  /// [origin] Whether the finding type is system-managed or customer-created.
  /// [quarantined] Whether evaluation of this finding type is suspended by an operator. Present only when true.
  /// [severity] Default severity used when no integration-specific severity override exists.
  /// [updatedAt] Timestamp when the finding type was last updated.
  /// [vendor] The SaaS/Cloud vendor of the platform with which the finding is associated.
  /// [version] Current version of the finding type. Incremented on each update.
  const GetZeroTrustCasbFindingTypeResult({
    this.accountId,
    this.appliesToAllIntegrations,
    this.assetClass,
    this.assetVendor,
    this.category,
    this.createdAt,
    this.description,
    this.expression,
    this.filter,
    this.findingTypeId,
    this.id,
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
      'category': ?category?.toMap(),
      'createdAt': ?createdAt,
      'description': ?description,
      'expression': ?expression,
      'filter': ?filter?.toMap(),
      'findingTypeId': ?findingTypeId,
      'id': ?id,
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

  factory GetZeroTrustCasbFindingTypeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbFindingTypeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appliesToAllIntegrations: (() { final guardedValue = map['appliesToAllIntegrations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      assetClass: (() { final guardedValue = map['assetClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assetVendor: (() { final guardedValue = map['assetVendor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return GetZeroTrustCasbFindingTypeCategory.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustCasbFindingTypeFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      findingTypeId: (() { final guardedValue = map['findingTypeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationIds: (() { final guardedValue = map['integrationIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      matchCount: (() { final guardedValue = map['matchCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      quarantined: (() { final guardedValue = map['quarantined']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vendor: (() { final guardedValue = map['vendor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
