// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_organization_intelligence_findings_summary_finding_summary.dart';

/// Result data returned by getControlOrganizationIntelligenceFindingsSummary.
class GetControlOrganizationIntelligenceFindingsSummaryResult {
  final String? filter;
  /// The list of FindingSummary summaries. Structure is documented below.
  final List<GetControlOrganizationIntelligenceFindingsSummaryFindingSummary>? findingSummaries;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? organization;
  final String? resourceScope;

  /// Creates a new [GetControlOrganizationIntelligenceFindingsSummaryResult].
  /// [filter] Optional.
  /// [findingSummaries] The list of FindingSummary summaries. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [organization] Optional.
  /// [resourceScope] Optional.
  const GetControlOrganizationIntelligenceFindingsSummaryResult({
    this.filter,
    this.findingSummaries,
    this.id,
    this.location,
    this.organization,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'findingSummaries': ?(() { final guardedValue = findingSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlOrganizationIntelligenceFindingsSummaryFindingSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'organization': ?organization,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlOrganizationIntelligenceFindingsSummaryResult.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceFindingsSummaryResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingSummaries: (() { final guardedValue = map['findingSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlOrganizationIntelligenceFindingsSummaryFindingSummary>(guardedValue, (value) => GetControlOrganizationIntelligenceFindingsSummaryFindingSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
