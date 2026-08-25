// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_import_job_import_job_args_doc}
/// The set of arguments for ImportJob.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_import_job_import_job_args_doc}
class ImportJobArgs {
  /// Reference to a source.
  final pulumi.Input<String> assetSource;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-friendly display name. Maximum length is 256 characters.
  final pulumi.Input<String?>? displayName;
  /// ID of the import job.
  final pulumi.Input<String> importJobId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ImportJobArgs].
  /// [assetSource] Reference to a source.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User-friendly display name. Maximum length is 256 characters.
  /// [importJobId] ID of the import job.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const ImportJobArgs({
    required this.assetSource,
    this.deletionPolicy,
    this.displayName,
    required this.importJobId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetSource': assetSource,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'importJobId': importJobId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory ImportJobArgs.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs(
      assetSource: pulumi.Input.fromValue(map['assetSource'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importJobId: pulumi.Input.fromValue(map['importJobId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
