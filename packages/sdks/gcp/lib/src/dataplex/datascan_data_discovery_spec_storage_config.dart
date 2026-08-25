// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data_discovery_spec_storage_config_csv_options.dart';
import 'datascan_data_discovery_spec_storage_config_json_options.dart';

class DatascanDataDiscoverySpecStorageConfig {
  /// Configuration for CSV data.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpecStorageConfigCsvOptions?>? csvOptions;
  /// Defines the data to exclude during discovery. Provide a list of patterns that identify the data to exclude. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  final pulumi.Input<List<String>?>? excludePatterns;
  /// Defines the data to include during discovery when only a subset of the data should be considered. Provide a list of patterns that identify the data to include. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  final pulumi.Input<List<String>?>? includePatterns;
  /// Configuration for JSON data.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpecStorageConfigJsonOptions?>? jsonOptions;

  /// Creates a new [DatascanDataDiscoverySpecStorageConfig].
  /// [csvOptions] Configuration for CSV data.
  /// [excludePatterns] Defines the data to exclude during discovery. Provide a list of patterns that identify the data to exclude. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  /// [includePatterns] Defines the data to include during discovery when only a subset of the data should be considered. Provide a list of patterns that identify the data to include. For Cloud Storage bucket assets, these patterns are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these patterns are interpreted as patterns to match table names.
  /// [jsonOptions] Configuration for JSON data.
  const DatascanDataDiscoverySpecStorageConfig({
    this.csvOptions,
    this.excludePatterns,
    this.includePatterns,
    this.jsonOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOptions': ?pulumi.Input.mapOptionalInputValue<DatascanDataDiscoverySpecStorageConfigCsvOptions, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'excludePatterns': ?excludePatterns,
      'includePatterns': ?includePatterns,
      'jsonOptions': ?pulumi.Input.mapOptionalInputValue<DatascanDataDiscoverySpecStorageConfigJsonOptions, Map<String, dynamic>>(jsonOptions, (value) => value.toMap()),
    };
  }

  factory DatascanDataDiscoverySpecStorageConfig.fromMap(Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecStorageConfig(
      csvOptions: (() { final guardedValue = map['csvOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataDiscoverySpecStorageConfigCsvOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludePatterns: (() { final guardedValue = map['excludePatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includePatterns: (() { final guardedValue = map['includePatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jsonOptions: (() { final guardedValue = map['jsonOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataDiscoverySpecStorageConfigJsonOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
