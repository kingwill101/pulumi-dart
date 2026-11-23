// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_report_config_csv_options.dart';
import 'insights_report_config_frequency_options.dart';
import 'insights_report_config_object_metadata_report_options.dart';

/// Input properties used for looking up and filtering InsightsReportConfig resources.
class InsightsReportConfigState {
  /// Options for configuring the format of the inventory report CSV file.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigCsvOptions?>? csvOptions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// If set, all the inventory report details associated with this report configuration are deleted.
  final pulumi.Input<bool?>? forceDestroy;
  /// Options for configuring how inventory reports are generated.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigFrequencyOptions?>? frequencyOptions;
  /// Labels as key value pairs. Have a character limit of 64 per key and value.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// must be in the same location.
  final pulumi.Input<String?>? location;
  /// The UUID of the inventory report configuration.
  final pulumi.Input<String?>? name;
  /// Options for including metadata in an inventory report.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigObjectMetadataReportOptions?>? objectMetadataReportOptions;
  /// An option for outputting inventory reports as parquet files.
  final pulumi.Input<Map<String, dynamic>?>? parquetOptions;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;

  /// Creates a new [InsightsReportConfigState].
  /// [csvOptions] Options for configuring the format of the inventory report CSV file.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The editable display name of the inventory report configuration. Has a limit of 256 characters. Can be empty.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] If set, all the inventory report details associated with this report configuration are deleted.
  /// [frequencyOptions] Options for configuring how inventory reports are generated.
  /// [labels] Labels as key value pairs. Have a character limit of 64 per key and value.
  /// [location] The location of the ReportConfig. The source and destination buckets specified in the ReportConfig
  /// [name] The UUID of the inventory report configuration.
  /// [objectMetadataReportOptions] Options for including metadata in an inventory report.
  /// [parquetOptions] An option for outputting inventory reports as parquet files.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  const InsightsReportConfigState({
    this.csvOptions,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.forceDestroy,
    this.frequencyOptions,
    this.labels,
    this.location,
    this.name,
    this.objectMetadataReportOptions,
    this.parquetOptions,
    this.project,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOptions': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigCsvOptions, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'frequencyOptions': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigFrequencyOptions, Map<String, dynamic>>(frequencyOptions, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'objectMetadataReportOptions': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigObjectMetadataReportOptions, Map<String, dynamic>>(objectMetadataReportOptions, (value) => value.toMap()),
      'parquetOptions': ?parquetOptions,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory InsightsReportConfigState.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigState(
      csvOptions: (() { final guardedValue = map['csvOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigCsvOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequencyOptions: (() { final guardedValue = map['frequencyOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigFrequencyOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectMetadataReportOptions: (() { final guardedValue = map['objectMetadataReportOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigObjectMetadataReportOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parquetOptions: (() { final guardedValue = map['parquetOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
