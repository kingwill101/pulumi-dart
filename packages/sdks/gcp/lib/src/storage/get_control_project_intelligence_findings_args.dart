// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_intelligence_findings_get_control_project_intelligence_findings_args_doc}
/// Arguments for getControlProjectIntelligenceFindings.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_intelligence_findings_get_control_project_intelligence_findings_args_doc}
class GetControlProjectIntelligenceFindingsArgs {
  /// The filter expression to apply. Supports filtering by type and associated_resources.
  final pulumi.Input<String>? filter;
  /// The location of the intelligence findings. Currently default value is global and users cannot use for input for now.
  final pulumi.Input<String>? location;
  /// The maximum number of IntelligenceFinding resources to return. The maximum value is 100; values greater than 100 become 100. The default value is 100.
  final pulumi.Input<int>? pageSize;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetControlProjectIntelligenceFindingsArgs].
  /// [filter] The filter expression to apply. Supports filtering by type and associated_resources.
  /// [location] The location of the intelligence findings. Currently default value is global and users cannot use for input for now.
  /// [pageSize] The maximum number of IntelligenceFinding resources to return. The maximum value is 100; values greater than 100 become 100. The default value is 100.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetControlProjectIntelligenceFindingsArgs({
    this.filter,
    this.location,
    this.pageSize,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': ?location,
      'pageSize': ?pageSize,
      'project': ?project,
    };
  }

  factory GetControlProjectIntelligenceFindingsArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
