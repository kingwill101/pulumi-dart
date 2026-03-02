// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_asset_discovery_spec_csv_options_response.dart';
import 'google_cloud_dataplex_v1_asset_discovery_spec_json_options_response.dart';

/// Settings to manage the metadata discovery and publishing for an asset.
class GoogleCloudDataplexV1AssetDiscoverySpecResponse {
  /// Optional. Configuration for CSV data.
  final pulumi.Input<GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse> csvOptions;
  /// Optional. Whether discovery is enabled.
  final pulumi.Input<bool> enabled;
  /// Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  final pulumi.Input<List<String>> excludePatterns;
  /// Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  final pulumi.Input<List<String>> includePatterns;
  /// Optional. Configuration for Json data.
  final pulumi.Input<GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse> jsonOptions;
  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
  final pulumi.Input<String> schedule;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoverySpecResponse].
  /// [csvOptions] Optional. Configuration for CSV data.
  /// [enabled] Optional. Whether discovery is enabled.
  /// [excludePatterns] Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  /// [includePatterns] Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  /// [jsonOptions] Optional. Configuration for Json data.
  /// [schedule] Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
  GoogleCloudDataplexV1AssetDiscoverySpecResponse({
    required this.csvOptions,
    required this.enabled,
    required this.excludePatterns,
    required this.includePatterns,
    required this.jsonOptions,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOptions': pulumi.Input.mapInputValue<GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'enabled': enabled,
      'excludePatterns': excludePatterns,
      'includePatterns': includePatterns,
      'jsonOptions': pulumi.Input.mapInputValue<GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse, Map<String, dynamic>>(jsonOptions, (value) => value.toMap()),
      'schedule': schedule,
    };
  }

  factory GoogleCloudDataplexV1AssetDiscoverySpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoverySpecResponse(
      csvOptions: (GoogleCloudDataplexV1AssetDiscoverySpecCsvOptionsResponse.fromMap((map['csvOptions'] as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
      excludePatterns: ((map['excludePatterns'] as List).cast<String>()).input(),
      includePatterns: ((map['includePatterns'] as List).cast<String>()).input(),
      jsonOptions: (GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse.fromMap((map['jsonOptions'] as Map).cast<String, dynamic>())).input(),
      schedule: (map['schedule'] as String).input(),
    );
  }
}

