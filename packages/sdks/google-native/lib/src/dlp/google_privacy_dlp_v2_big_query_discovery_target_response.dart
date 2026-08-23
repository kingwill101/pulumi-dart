// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_big_query_conditions_response.dart';
import 'google_privacy_dlp_v2_discovery_big_query_filter_response.dart';
import 'google_privacy_dlp_v2_discovery_generation_cadence_response.dart';

/// Target used to match against for discovery with BigQuery tables
class GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse {
  /// How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse> cadence;
  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse> conditions;
  /// Tables that match this filter will not have profiles created.
  final pulumi.Input<Map<String, dynamic>> disabled;
  /// The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse> filter;

  /// Creates a new [GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse].
  /// [cadence] How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated.
  /// [disabled] Tables that match this filter will not have profiles created.
  /// [filter] The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  const GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse({
    required this.cadence,
    required this.conditions,
    required this.disabled,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cadence': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse, Map<String, dynamic>>(cadence, (value) => value.toMap()),
      'conditions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'disabled': disabled,
      'filter': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryDiscoveryTargetResponse(
      cadence: pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoveryGenerationCadenceResponse.fromMap((map['cadence']! as Map).cast<String, dynamic>())),
      conditions: pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoveryBigQueryConditionsResponse.fromMap((map['conditions']! as Map).cast<String, dynamic>())),
      disabled: pulumi.Input.fromValue((map['disabled']! as Map).cast<String, dynamic>()),
      filter: pulumi.Input.fromValue(GooglePrivacyDlpV2DiscoveryBigQueryFilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>())),
    );
  }
}
