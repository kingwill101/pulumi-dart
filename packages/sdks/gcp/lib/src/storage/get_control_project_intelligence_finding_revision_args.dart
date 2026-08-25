// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_control_project_intelligence_finding_revision_get_control_project_intelligence_finding_revision_args_doc}
/// Arguments for getControlProjectIntelligenceFindingRevision.
/// {@endtemplate}
/// {@macro pulumi_storage_get_control_project_intelligence_finding_revision_get_control_project_intelligence_finding_revision_args_doc}
class GetControlProjectIntelligenceFindingRevisionArgs {
  /// The ID of the intelligence finding.
  final pulumi.Input<String> findingId;
  /// The location of the intelligence finding. Currently default value is global and users cannot use for input for now.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID of the finding revision.
  final pulumi.Input<String> revisionId;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionArgs].
  /// [findingId] The ID of the intelligence finding.
  /// [location] The location of the intelligence finding. Currently default value is global and users cannot use for input for now.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [revisionId] The ID of the finding revision.
  const GetControlProjectIntelligenceFindingRevisionArgs({
    required this.findingId,
    this.location,
    this.project,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'findingId': findingId,
      'location': ?location,
      'project': ?project,
      'revisionId': revisionId,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionArgs.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionArgs(
      findingId: pulumi.Input.fromValue(map['findingId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: pulumi.Input.fromValue(map['revisionId'] as String),
    );
  }
}
