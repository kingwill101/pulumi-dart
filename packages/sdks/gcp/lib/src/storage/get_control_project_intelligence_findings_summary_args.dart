// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_intelligence_findings_summary_get_control_project_intelligence_findings_summary_args_doc}
/// Arguments for getControlProjectIntelligenceFindingsSummary.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_intelligence_findings_summary_get_control_project_intelligence_findings_summary_args_doc}
class GetControlProjectIntelligenceFindingsSummaryArgs {
  /// The filter expression to apply.
  final pulumi.Input<String>? filter;
  /// The location of the intelligence findings summary. Currently default value is global and users cannot use for input for now.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Determines the granularity of the findings when the parent is an organization or folder. Only supported when parent is an organization or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
  final pulumi.Input<String>? resourceScope;

  /// Creates a new [GetControlProjectIntelligenceFindingsSummaryArgs].
  /// [filter] The filter expression to apply.
  /// [location] The location of the intelligence findings summary. Currently default value is global and users cannot use for input for now.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [resourceScope] Determines the granularity of the findings when the parent is an organization or folder. Only supported when parent is an organization or folder. Possible values are PARENT and PROJECT. Default value is PARENT.
  const GetControlProjectIntelligenceFindingsSummaryArgs({
    this.filter,
    this.location,
    this.project,
    this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': ?location,
      'project': ?project,
      'resourceScope': ?resourceScope,
    };
  }

  factory GetControlProjectIntelligenceFindingsSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsSummaryArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceScope: (() { final guardedValue = map['resourceScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
