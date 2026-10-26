// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_data_source_enrollment_parameter.dart';

/// Input properties used for looking up and filtering DataTransferDataSourceEnrollment resources.
class DataTransferDataSourceEnrollmentState {
  /// Indicates the type of authorization.
  final pulumi.Input<String?>? authorizationType;
  /// Data source client id which should be used to receive refresh token.
  final pulumi.Input<String?>? clientId;
  /// Data refresh type.
  final pulumi.Input<String?>? dataRefreshType;
  /// The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
  /// `61cede5a-0000-2440-ad42-883d24f8f7b8`. Call `projects.dataSources.list` to see the data
  /// sources currently enrolled in a project.
  final pulumi.Input<String?>? dataSourceId;
  /// Default data refresh window on days.
  final pulumi.Input<int?>? defaultDataRefreshWindowDays;
  /// Default data transfer schedule.
  final pulumi.Input<String?>? defaultSchedule;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// (Output)
  /// Parameter description.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// User friendly parameter name.
  final pulumi.Input<String?>? displayName;
  /// Url to the documentation about the data source.
  final pulumi.Input<String?>? helpUrl;
  /// Disables support for manual transfer runs.
  final pulumi.Input<bool?>? manualRunsDisabled;
  /// The minimum interval between two scheduled runs.
  final pulumi.Input<String?>? minimumScheduleInterval;
  /// The resource name of the data source.
  final pulumi.Input<String?>? name;
  /// Data source parameters.
  /// Structure is documented below.
  final pulumi.Input<List<DataTransferDataSourceEnrollmentParameter>?>? parameters;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Api auth scopes for which refresh token needs to be obtained.
  final pulumi.Input<List<String>?>? scopes;
  /// Specifies whether the data source supports a user defined schedule.
  final pulumi.Input<bool?>? supportsCustomSchedule;
  /// The location whose `unenrollDataSources` endpoint is called when this resource is destroyed.
  /// Enrollment itself is project-wide and unenrolling through any location removes it everywhere;
  /// this only exists because the API offers no project-level unenroll method. Override it only if
  /// `us` is not routable for the project, for example under a data-residency organization policy.
  final pulumi.Input<String?>? unenrollLocation;
  /// The number of seconds to wait for a transfer to start before declaring the failure.
  final pulumi.Input<int?>? updateDeadlineSeconds;

  /// Creates a new [DataTransferDataSourceEnrollmentState].
  /// [authorizationType] Indicates the type of authorization.
  /// [clientId] Data source client id which should be used to receive refresh token.
  /// [dataRefreshType] Data refresh type.
  /// [dataSourceId] The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
  /// [defaultDataRefreshWindowDays] Default data refresh window on days.
  /// [defaultSchedule] Default data transfer schedule.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] (Output)
  /// [displayName] (Output)
  /// [helpUrl] Url to the documentation about the data source.
  /// [manualRunsDisabled] Disables support for manual transfer runs.
  /// [minimumScheduleInterval] The minimum interval between two scheduled runs.
  /// [name] The resource name of the data source.
  /// [parameters] Data source parameters.
  /// [project] The ID of the project in which the resource belongs.
  /// [scopes] Api auth scopes for which refresh token needs to be obtained.
  /// [supportsCustomSchedule] Specifies whether the data source supports a user defined schedule.
  /// [unenrollLocation] The location whose `unenrollDataSources` endpoint is called when this resource is destroyed.
  /// [updateDeadlineSeconds] The number of seconds to wait for a transfer to start before declaring the failure.
  const DataTransferDataSourceEnrollmentState({
    this.authorizationType,
    this.clientId,
    this.dataRefreshType,
    this.dataSourceId,
    this.defaultDataRefreshWindowDays,
    this.defaultSchedule,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.helpUrl,
    this.manualRunsDisabled,
    this.minimumScheduleInterval,
    this.name,
    this.parameters,
    this.project,
    this.scopes,
    this.supportsCustomSchedule,
    this.unenrollLocation,
    this.updateDeadlineSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': ?authorizationType,
      'clientId': ?clientId,
      'dataRefreshType': ?dataRefreshType,
      'dataSourceId': ?dataSourceId,
      'defaultDataRefreshWindowDays': ?defaultDataRefreshWindowDays,
      'defaultSchedule': ?defaultSchedule,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'helpUrl': ?helpUrl,
      'manualRunsDisabled': ?manualRunsDisabled,
      'minimumScheduleInterval': ?minimumScheduleInterval,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DataTransferDataSourceEnrollmentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DataTransferDataSourceEnrollmentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'scopes': ?scopes,
      'supportsCustomSchedule': ?supportsCustomSchedule,
      'unenrollLocation': ?unenrollLocation,
      'updateDeadlineSeconds': ?updateDeadlineSeconds,
    };
  }

  factory DataTransferDataSourceEnrollmentState.fromMap(Map<String, dynamic> map) {
    return DataTransferDataSourceEnrollmentState(
      authorizationType: (() { final guardedValue = map['authorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataRefreshType: (() { final guardedValue = map['dataRefreshType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultDataRefreshWindowDays: (() { final guardedValue = map['defaultDataRefreshWindowDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      defaultSchedule: (() { final guardedValue = map['defaultSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      helpUrl: (() { final guardedValue = map['helpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualRunsDisabled: (() { final guardedValue = map['manualRunsDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minimumScheduleInterval: (() { final guardedValue = map['minimumScheduleInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataTransferDataSourceEnrollmentParameter>(guardedValue, (value) => DataTransferDataSourceEnrollmentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportsCustomSchedule: (() { final guardedValue = map['supportsCustomSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unenrollLocation: (() { final guardedValue = map['unenrollLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateDeadlineSeconds: (() { final guardedValue = map['updateDeadlineSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
