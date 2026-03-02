// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_trigger_response.dart';

/// DataScan execution settings.
class GoogleCloudDataplexV1DataScanExecutionSpecResponse {
  /// Immutable. The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time.If not specified, a data scan will run for all data in the table.
  final pulumi.Input<String> field;
  /// Optional. Spec related to how often and when a scan should be triggered.If not specified, the default is OnDemand, which means the scan will not run until the user calls RunDataScan API.
  final pulumi.Input<GoogleCloudDataplexV1TriggerResponse> trigger;

  /// Creates a new [GoogleCloudDataplexV1DataScanExecutionSpecResponse].
  /// [field] Immutable. The unnested field (of type Date or Timestamp) that contains values which monotonically increase over time.If not specified, a data scan will run for all data in the table.
  /// [trigger] Optional. Spec related to how often and when a scan should be triggered.If not specified, the default is OnDemand, which means the scan will not run until the user calls RunDataScan API.
  GoogleCloudDataplexV1DataScanExecutionSpecResponse({
    required this.field,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field,
      'trigger': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TriggerResponse, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDataplexV1DataScanExecutionSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataScanExecutionSpecResponse(
      field: (map['field'] as String).input(),
      trigger: (GoogleCloudDataplexV1TriggerResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

