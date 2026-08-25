// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_intelligence_finding_revisions_get_control_project_intelligence_finding_revisions_args_doc}
/// Arguments for getControlProjectIntelligenceFindingRevisions.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_intelligence_finding_revisions_get_control_project_intelligence_finding_revisions_args_doc}
class GetControlProjectIntelligenceFindingRevisionsArgs {
  /// The ID of the intelligence finding.
  final pulumi.Input<String> findingId;
  /// The location of the intelligence finding. Currently default value is global and users cannot use for input for now.
  final pulumi.Input<String?>? location;
  /// The maximum number of IntelligenceFindingRevision resources to return.
  final pulumi.Input<int?>? pageSize;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsArgs].
  /// [findingId] The ID of the intelligence finding.
  /// [location] The location of the intelligence finding. Currently default value is global and users cannot use for input for now.
  /// [pageSize] The maximum number of IntelligenceFindingRevision resources to return.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  const GetControlProjectIntelligenceFindingRevisionsArgs({
    required this.findingId,
    this.location,
    this.pageSize,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingId': findingId,
      'location': ?location,
      'pageSize': ?pageSize,
      'project': ?project,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsArgs(
      findingId: pulumi.Input.fromValue(map['findingId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
