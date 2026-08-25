// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_condition.dart';
import 'assets_export_job_performance_data.dart';
import 'assets_export_job_signed_uri_destination.dart';

/// {@template pulumi_migrationcenter_assets_export_job_assets_export_job_args_doc}
/// The set of arguments for AssetsExportJob.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_assets_export_job_assets_export_job_args_doc}
class AssetsExportJobArgs {
  /// The ID to use for the asset export job.
  final pulumi.Input<String> assetsExportJobId;
  /// Conditions for selecting assets to export.
  /// Structure is documented below.
  final pulumi.Input<AssetsExportJobCondition?>? condition;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Labels as key value pairs.
  /// Labels must meet the following constraints:
  /// * Keys and values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes.
  /// * All characters must use UTF-8 encoding, and international characters are
  /// allowed.
  /// * Keys must start with a lowercase letter or international character.
  /// * Each resource is limited to a maximum of 64 labels.
  /// Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Configuration for performance data exports.
  /// Structure is documented below.
  final pulumi.Input<AssetsExportJobPerformanceData?>? performanceData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// When this value is set to 'true' the response will include all assets,
  /// including those that are hidden.
  final pulumi.Input<bool?>? showHidden;
  /// Signed URI destination configuration.
  /// Structure is documented below.
  final pulumi.Input<AssetsExportJobSignedUriDestination?>? signedUriDestination;

  /// Creates a new [AssetsExportJobArgs].
  /// [assetsExportJobId] The ID to use for the asset export job.
  /// [condition] Conditions for selecting assets to export.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [performanceData] Configuration for performance data exports.
  /// [project] The ID of the project in which the resource belongs.
  /// [showHidden] When this value is set to 'true' the response will include all assets,
  /// [signedUriDestination] Signed URI destination configuration.
  const AssetsExportJobArgs({
    required this.assetsExportJobId,
    this.condition,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.performanceData,
    this.project,
    this.showHidden,
    this.signedUriDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetsExportJobId': assetsExportJobId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AssetsExportJobCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<AssetsExportJobPerformanceData, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'project': ?project,
      'showHidden': ?showHidden,
      'signedUriDestination': ?pulumi.Input.mapOptionalInputValue<AssetsExportJobSignedUriDestination, Map<String, dynamic>>(signedUriDestination, (value) => value.toMap()),
    };
  }

  factory AssetsExportJobArgs.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobArgs(
      assetsExportJobId: pulumi.Input.fromValue(map['assetsExportJobId'] as String),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetsExportJobCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetsExportJobPerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showHidden: (() { final guardedValue = map['showHidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      signedUriDestination: (() { final guardedValue = map['signedUriDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetsExportJobSignedUriDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
