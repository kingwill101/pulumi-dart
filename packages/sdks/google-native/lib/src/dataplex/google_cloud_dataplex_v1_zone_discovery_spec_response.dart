// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_zone_discovery_spec_csv_options_response.dart';
import 'google_cloud_dataplex_v1_zone_discovery_spec_json_options_response.dart';

/// Settings to manage the metadata discovery and publishing in a zone.
class GoogleCloudDataplexV1ZoneDiscoverySpecResponse {
  /// Optional. Configuration for CSV data.
  final pulumi.Input<GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse> csvOptions;
  /// Whether discovery is enabled.
  final pulumi.Input<bool> enabled;
  /// Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  final pulumi.Input<List<String>> excludePatterns;
  /// Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  final pulumi.Input<List<String>> includePatterns;
  /// Optional. Configuration for Json data.
  final pulumi.Input<GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptionsResponse> jsonOptions;
  /// Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
  final pulumi.Input<String> schedule;

  /// Creates a new [GoogleCloudDataplexV1ZoneDiscoverySpecResponse].
  /// [csvOptions] Optional. Configuration for CSV data.
  /// [enabled] Whether discovery is enabled.
  /// [excludePatterns] Optional. The list of patterns to apply for selecting data to exclude during discovery. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  /// [includePatterns] Optional. The list of patterns to apply for selecting data to include during discovery if only a subset of the data should considered. For Cloud Storage bucket assets, these are interpreted as glob patterns used to match object names. For BigQuery dataset assets, these are interpreted as patterns to match table names.
  /// [jsonOptions] Optional. Configuration for Json data.
  /// [schedule] Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery periodically. Successive discovery runs must be scheduled at least 60 minutes apart. The default value is to run discovery every 60 minutes. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
  GoogleCloudDataplexV1ZoneDiscoverySpecResponse({
    required this.csvOptions,
    required this.enabled,
    required this.excludePatterns,
    required this.includePatterns,
    required this.jsonOptions,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOptions': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse, Map<String, dynamic>>(csvOptions, (value) => value.toMap()),
      'enabled': enabled,
      'excludePatterns': excludePatterns,
      'includePatterns': includePatterns,
      'jsonOptions': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptionsResponse, Map<String, dynamic>>(jsonOptions, (value) => value.toMap()),
      'schedule': schedule,
    };
  }

  factory GoogleCloudDataplexV1ZoneDiscoverySpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ZoneDiscoverySpecResponse(
      csvOptions: pulumi.Input.fromValue(GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptionsResponse.fromMap((map['csvOptions']! as Map).cast<String, dynamic>())),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      excludePatterns: pulumi.Input.fromValue((map['excludePatterns'] as List).cast<String>()),
      includePatterns: pulumi.Input.fromValue((map['includePatterns'] as List).cast<String>()),
      jsonOptions: pulumi.Input.fromValue(GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptionsResponse.fromMap((map['jsonOptions']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}

