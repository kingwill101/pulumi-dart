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
  /// [displayName] The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  /// [forceDestroy] If set, all the inventory report details associated with this report configuration are deleted.
  /// [frequencyOptions] Options for configuring how inventory reports are generated.
  /// [location] The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// [objectMetadataReportOptions] Options for including metadata in an inventory report.
  /// [parquetOptions] An option for outputting inventory reports as parquet files.
  /// [project] The ID of the project in which the resource belongs.
  InsightsReportConfigArgs({
    this.csvOptions,
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
      csvOptions: map['csvOptions'] == null ? null : (InsightsReportConfigCsvOptions.fromMap((map['csvOptions']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      frequencyOptions: map['frequencyOptions'] == null ? null : (InsightsReportConfigFrequencyOptions.fromMap((map['frequencyOptions']! as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      objectMetadataReportOptions: map['objectMetadataReportOptions'] == null ? null : (InsightsReportConfigObjectMetadataReportOptions.fromMap((map['objectMetadataReportOptions']! as Map).cast<String, dynamic>())).input(),
      parquetOptions: map['parquetOptions'] == null ? null : ((map['parquetOptions']! as Map).cast<String, dynamic>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

