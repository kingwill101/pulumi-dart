// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_group_preferenceset_assignment.dart';

/// {@template pulumi_migrationcenter_report_config_report_config_args_doc}
/// The set of arguments for ReportConfig.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_report_config_report_config_args_doc}
class ReportConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Free-text description.
  final pulumi.Input<String?>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String?>? displayName;
  /// Collection of combinations of groups and preference sets.
  /// Structure is documented below.
  final pulumi.Input<List<ReportConfigGroupPreferencesetAssignment>> groupPreferencesetAssignments;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// User specified ID for the report config. It will become the last component
  /// of the report config name. The ID must be unique within the project, must
  /// conform with RFC-1034, is restricted to lower-cased letters, and has a
  /// maximum length of 63 characters. The ID must match the regular expression:
  /// a-z?.
  final pulumi.Input<String> reportConfigId;

  /// Creates a new [ReportConfigArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [groupPreferencesetAssignments] Collection of combinations of groups and preference sets.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [reportConfigId] User specified ID for the report config. It will become the last component
  const ReportConfigArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.groupPreferencesetAssignments,
    required this.location,
    this.project,
    required this.reportConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'groupPreferencesetAssignments': pulumi.Input.mapInputValue<List<ReportConfigGroupPreferencesetAssignment>, List<Map<String, dynamic>>>(groupPreferencesetAssignments, (value) => pulumi.Input.encodeList<ReportConfigGroupPreferencesetAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'project': ?project,
      'reportConfigId': reportConfigId,
    };
  }

  factory ReportConfigArgs.fromMap(Map<String, dynamic> map) {
    return ReportConfigArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupPreferencesetAssignments: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportConfigGroupPreferencesetAssignment>(map['groupPreferencesetAssignments']!, (value) => ReportConfigGroupPreferencesetAssignment.fromMap((value as Map).cast<String, dynamic>()))),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportConfigId: pulumi.Input.fromValue(map['reportConfigId'] as String),
    );
  }
}
