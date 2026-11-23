// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_data_transfer_data_source_enrollment_data_transfer_data_source_enrollment_args_doc}
/// The set of arguments for DataTransferDataSourceEnrollment.
/// {@endtemplate}
/// {@macro pulumi_bigquery_data_transfer_data_source_enrollment_data_transfer_data_source_enrollment_args_doc}
class DataTransferDataSourceEnrollmentArgs {
  /// The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
  /// `61cede5a-0000-2440-ad42-883d24f8f7b8`. Call `projects.dataSources.list` to see the data
  /// sources currently enrolled in a project.
  final pulumi.Input<String> dataSourceId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The location whose `unenrollDataSources` endpoint is called when this resource is destroyed.
  /// Enrollment itself is project-wide and unenrolling through any location removes it everywhere;
  /// this only exists because the API offers no project-level unenroll method. Override it only if
  /// `us` is not routable for the project, for example under a data-residency organization policy.
  final pulumi.Input<String?>? unenrollLocation;

  /// Creates a new [DataTransferDataSourceEnrollmentArgs].
  /// [dataSourceId] The ID of the data source to enroll. For Google Cloud Carbon Footprint exports this is
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [unenrollLocation] The location whose `unenrollDataSources` endpoint is called when this resource is destroyed.
  const DataTransferDataSourceEnrollmentArgs({
    required this.dataSourceId,
    this.deletionPolicy,
    this.project,
    this.unenrollLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceId': dataSourceId,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'unenrollLocation': ?unenrollLocation,
    };
  }

  factory DataTransferDataSourceEnrollmentArgs.fromMap(Map<String, dynamic> map) {
    return DataTransferDataSourceEnrollmentArgs(
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unenrollLocation: (() { final guardedValue = map['unenrollLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
