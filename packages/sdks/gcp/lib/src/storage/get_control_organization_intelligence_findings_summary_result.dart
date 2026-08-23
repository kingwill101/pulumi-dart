// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_organization_intelligence_findings_summary_finding_summary.dart';

/// Result data returned by getControlOrganizationIntelligenceFindingsSummary.
class GetControlOrganizationIntelligenceFindingsSummaryResult {
  final String? filter;
  /// The list of FindingSummary summaries. Structure is documented below.
  final List<GetControlOrganizationIntelligenceFindingsSummaryFindingSummary> findingSummaries;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String organization;
  final String? resourceScope;

  /// Creates a new [GetControlOrganizationIntelligenceFindingsSummaryResult].
  /// [filter] Optional.
  /// [findingSummaries] The list of FindingSummary summaries. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [organization] Required.
  /// [resourceScope] Optional.
  const GetControlOrganizationIntelligenceFindingsSummaryResult({
    this.filter,
    required this.findingSummaries,
    required this.id,
    this.location,
    required this.organization,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'findingSummaries': pulumi.Input.encodeList<GetControlOrganizationIntelligenceFindingsSummaryFindingSummary, Map<String, dynamic>>(findingSummaries, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'organization': organization,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlOrganizationIntelligenceFindingsSummaryResult.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceFindingsSummaryResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      findingSummaries: pulumi.Input.decodeList<GetControlOrganizationIntelligenceFindingsSummaryFindingSummary>(map['findingSummaries']!, (value) => GetControlOrganizationIntelligenceFindingsSummaryFindingSummary.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: map['organization'] as String,
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
