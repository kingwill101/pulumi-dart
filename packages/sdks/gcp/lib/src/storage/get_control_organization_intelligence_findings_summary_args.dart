// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_organization_intelligence_findings_summary_get_control_organization_intelligence_findings_summary_args_doc}
/// Arguments for getControlOrganizationIntelligenceFindingsSummary.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_organization_intelligence_findings_summary_get_control_organization_intelligence_findings_summary_args_doc}
class GetControlOrganizationIntelligenceFindingsSummaryArgs {
  /// The filter expression. Supports filtering by FindingType.
  final pulumi.Input<String?>? filter;
  /// The location of the intelligence findings summary. Currently default value is global and users cannot use for input for now.
  final pulumi.Input<String?>? location;
  /// The ID of the Google Cloud Organization.
  final pulumi.Input<String> organization;
  /// Determines the granularity of the findings when the parent is an organization or folder. Only supported when parent is an organization or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
  final pulumi.Input<String?>? resourceScope;

  /// Creates a new [GetControlOrganizationIntelligenceFindingsSummaryArgs].
  /// [filter] The filter expression. Supports filtering by FindingType.
  /// [location] The location of the intelligence findings summary. Currently default value is global and users cannot use for input for now.
  /// [organization] The ID of the Google Cloud Organization.
  /// [resourceScope] Determines the granularity of the findings when the parent is an organization or folder. Only supported when parent is an organization or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
  const GetControlOrganizationIntelligenceFindingsSummaryArgs({
    this.filter,
    this.location,
    required this.organization,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': ?location,
      'organization': organization,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlOrganizationIntelligenceFindingsSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceFindingsSummaryArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
