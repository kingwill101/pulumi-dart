// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_execution_report.dart';
import 'import_job_validation_report.dart';

/// Input properties used for looking up and filtering ImportJob resources.
class ImportJobState {
  /// Reference to a source.
  final pulumi.Input<String>? assetSource;
  /// The timestamp when the import job was completed.
  final pulumi.Input<String>? completeTime;
  /// The timestamp when the import job was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-friendly display name. Maximum length is 256 characters.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A resource that reports result of the import job execution.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobExecutionReport>>? executionReports;
  /// ID of the import job.
  final pulumi.Input<String>? importJobId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The full name of the import job.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The state of the import job.
  /// Possible values:
  /// IMPORT_JOB_STATE_PENDING
  /// IMPORT_JOB_STATE_RUNNING
  /// IMPORT_JOB_STATE_COMPLETED
  /// IMPORT_JOB_STATE_FAILED
  /// IMPORT_JOB_STATE_VALIDATING
  /// IMPORT_JOB_STATE_FAILED_VALIDATION
  /// IMPORT_JOB_STATE_READY
  final pulumi.Input<String>? state;
  /// The timestamp when the import job was last updated.
  final pulumi.Input<String>? updateTime;
  /// A resource that aggregates errors across import job files.
  /// Structure is documented below.
  final pulumi.Input<List<ImportJobValidationReport>>? validationReports;

  /// Creates a new [ImportJobState].
  /// [assetSource] Reference to a source.
  /// [completeTime] The timestamp when the import job was completed.
  /// [createTime] The timestamp when the import job was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-friendly display name. Maximum length is 256 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [executionReports] A resource that reports result of the import job execution.
  /// [importJobId] ID of the import job.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The full name of the import job.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of the import job.
  /// [updateTime] The timestamp when the import job was last updated.
  /// [validationReports] A resource that aggregates errors across import job files.
  const ImportJobState({
    this.assetSource,
    this.completeTime,
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.executionReports,
    this.importJobId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.updateTime,
    this.validationReports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetSource': ?assetSource,
      'completeTime': ?completeTime,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'executionReports': ?pulumi.Input.mapOptionalInputValue<List<ImportJobExecutionReport>, List<Map<String, dynamic>>>(executionReports, (value) => pulumi.Input.encodeList<ImportJobExecutionReport, Map<String, dynamic>>(value, (value) => value.toMap())),
      'importJobId': ?importJobId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
      'validationReports': ?pulumi.Input.mapOptionalInputValue<List<ImportJobValidationReport>, List<Map<String, dynamic>>>(validationReports, (value) => pulumi.Input.encodeList<ImportJobValidationReport, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImportJobState.fromMap(Map<String, dynamic> map) {
    return ImportJobState(
      assetSource: (() { final guardedValue = map['assetSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      completeTime: (() { final guardedValue = map['completeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      executionReports: (() { final guardedValue = map['executionReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobExecutionReport>(guardedValue, (value) => ImportJobExecutionReport.fromMap((value as Map).cast<String, dynamic>()))); })(),
      importJobId: (() { final guardedValue = map['importJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationReports: (() { final guardedValue = map['validationReports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImportJobValidationReport>(guardedValue, (value) => ImportJobValidationReport.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
