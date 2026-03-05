// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_report_config_object_metadata_report_options_storage_destination_options.dart';
import 'insights_report_config_object_metadata_report_options_storage_filters.dart';

class InsightsReportConfigObjectMetadataReportOptions {
  /// The metadata fields included in an inventory report.
  final pulumi.Input<List<String>> metadataFields;
  /// Options for where the inventory reports are stored.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions> storageDestinationOptions;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<InsightsReportConfigObjectMetadataReportOptionsStorageFilters>? storageFilters;

  /// Creates a new [InsightsReportConfigObjectMetadataReportOptions].
  /// [metadataFields] The metadata fields included in an inventory report.
  /// [storageDestinationOptions] Options for where the inventory reports are stored.
  /// [storageFilters] A nested object resource.
  InsightsReportConfigObjectMetadataReportOptions({
    required this.metadataFields,
    required this.storageDestinationOptions,
    this.storageFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataFields': metadataFields,
      'storageDestinationOptions': pulumi.Input.mapInputValue<InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions, Map<String, dynamic>>(storageDestinationOptions, (value) => value.toMap()),
      'storageFilters': ?pulumi.Input.mapOptionalInputValue<InsightsReportConfigObjectMetadataReportOptionsStorageFilters, Map<String, dynamic>>(storageFilters, (value) => value.toMap()),
    };
  }

  factory InsightsReportConfigObjectMetadataReportOptions.fromMap(Map<String, dynamic> map) {
    return InsightsReportConfigObjectMetadataReportOptions(
      metadataFields: pulumi.Input.fromValue((map['metadataFields'] as List).cast<String>()),
      storageDestinationOptions: pulumi.Input.fromValue(InsightsReportConfigObjectMetadataReportOptionsStorageDestinationOptions.fromMap((map['storageDestinationOptions']! as Map).cast<String, dynamic>())),
      storageFilters: (() { final guardedValue = map['storageFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsReportConfigObjectMetadataReportOptionsStorageFilters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

