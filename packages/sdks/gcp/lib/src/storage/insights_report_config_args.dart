// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_report_config_csv_options.dart';
import 'insights_report_config_frequency_options.dart';
import 'insights_report_config_object_metadata_report_options.dart';

/// {@template pulumi_storage_insights_report_config_insights_report_config_args_doc}
/// The set of arguments for InsightsReportConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_insights_report_config_insights_report_config_args_doc}
class InsightsReportConfigArgs {
  /// Options for configuring the format of the inventory report CSV file.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigCsvOptions>? csvOptions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  final pulumi.Input<String>? displayName;
  /// If set, all the inventory report details associated with this report configuration are deleted.
  final pulumi.Input<bool>? forceDestroy;
  /// Options for configuring how inventory reports are generated.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigFrequencyOptions>? frequencyOptions;
  /// The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// must be in the same location.
  final pulumi.Input<String> location;
  /// Options for including metadata in an inventory report.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigObjectMetadataReportOptions>? objectMetadataReportOptions;
  /// An option for outputting inventory reports as parquet files.
  final pulumi.Input<Map<String, dynamic>>? parquetOptions;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InsightsReportConfigArgs].
  /// [csvOptions] Options for configuring the format of the inventory report CSV file.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  /// [forceDestroy] If set, all the inventory report details associated with this report configuration are deleted.
  /// [frequencyOptions] Options for configuring how inventory reports are generated.
  /// [location] The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// [objectMetadataReportOptions] Options for including metadata in an inventory report.
  /// [parquetOptions] An option for outputting inventory reports as parquet files.
  /// [project] The ID of the project in which the resource belongs.
  const InsightsReportConfigArgs({
    this.csvOptions,
    this.deletionPolicy,
    this.displayName,
    this.forceDestroy,
    this.frequencyOptions,
    required this.location,
    this.objectMetadataReportOptions,
    this.parquetOptions,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOptions': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigCsvOptions, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'forceDestroy': ?forceDestroy,
      'frequencyOptions': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigFrequencyOptions, Map<String, dynamic>>(frequencyOptions, (value) => value.toMap()),
      'location': location,
      'objectMetadataReportOptions': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigObjectMetadataReportOptions, Map<String, dynamic>>(objectMetadataReportOptions, (value) => value.toMap()),
      'parquetOptions': ?parquetOptions,
      'project': ?project,
    };
  }

  factory InsightsReportConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigArgs(
      csvOptions: (() { final guardedValue = map['csvOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigCsvOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequencyOptions: (() { final guardedValue = map['frequencyOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigFrequencyOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      objectMetadataReportOptions: (() { final guardedValue = map['objectMetadataReportOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigObjectMetadataReportOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parquetOptions: (() { final guardedValue = map['parquetOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
