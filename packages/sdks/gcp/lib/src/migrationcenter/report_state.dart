// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary.dart';

/// Input properties used for looking up and filtering Report resources.
class ReportState {
  /// Creation timestamp.
  final pulumi.Input<String?>? createTime;
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
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Name of resource.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? reportConfig;
  /// User specified id for the report. It will become the last component
  /// of the report name. The id must be unique within the project, must
  /// conform with RFC-1034, is restricted to lower-cased letters, and has a
  /// maximum length of 63 characters. The id must match the regular expression:
  /// a-z?.
  final pulumi.Input<String?>? reportId;
  /// Report creation state.
  /// Possible values:
  /// PENDING
  /// SUCCEEDED
  /// FAILED
  final pulumi.Input<String?>? state;
  /// Describes the Summary view of a Report, which contains aggregated values
  /// for all the groups and preference sets included in this Report.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummary>?>? summaries;
  /// Report type.
  /// Possible values:
  /// TOTAL_COST_OF_OWNERSHIP
  final pulumi.Input<String?>? type;
  /// Last update timestamp.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ReportState].
  /// [createTime] Creation timestamp.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Name of resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [reportConfig] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [reportId] User specified id for the report. It will become the last component
  /// [state] Report creation state.
  /// [summaries] Describes the Summary view of a Report, which contains aggregated values
  /// [type] Report type.
  /// [updateTime] Last update timestamp.
  const ReportState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.reportConfig,
    this.reportId,
    this.state,
    this.summaries,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'reportConfig': ?reportConfig,
      'reportId': ?reportId,
      'state': ?state,
      'summaries': ?pulumi.Input.mapOptionalInputValue<List<ReportSummary>, List<Map<String, dynamic>>>(summaries, (value) => pulumi.Input.encodeList<ReportSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory ReportState.fromMap(Map<String, dynamic> map) {
    return ReportState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportConfig: (() { final guardedValue = map['reportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportId: (() { final guardedValue = map['reportId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summaries: (() { final guardedValue = map['summaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummary>(guardedValue, (value) => ReportSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
