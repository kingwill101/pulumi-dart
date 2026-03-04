// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_big_query_conditions.dart';
import 'google_privacy_dlp_v2_discovery_big_query_filter.dart';
import 'google_privacy_dlp_v2_discovery_generation_cadence.dart';

/// Target used to match against for discovery with BigQuery tables
class GooglePrivacyDlpV2BigQueryDiscoveryTarget {
  /// How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryGenerationCadence>? cadence;

  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryBigQueryConditions>? conditions;

  /// Tables that match this filter will not have profiles created.
  final pulumi.Input<Map<String, dynamic>>? disabled;

  /// The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  final pulumi.Input<GooglePrivacyDlpV2DiscoveryBigQueryFilter> filter;

  /// Creates a new [GooglePrivacyDlpV2BigQueryDiscoveryTarget].
  /// [cadence] How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated.
  /// [disabled] Tables that match this filter will not have profiles created.
  /// [filter] The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  GooglePrivacyDlpV2BigQueryDiscoveryTarget({
    this.cadence,
    this.conditions,
    this.disabled,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cadence':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2DiscoveryGenerationCadence,
            Map<String, dynamic>
          >(cadence, (value) => value.toMap()),
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2DiscoveryBigQueryConditions,
            Map<String, dynamic>
          >(conditions, (value) => value.toMap()),
      'disabled': ?disabled,
      'filter':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2DiscoveryBigQueryFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryDiscoveryTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2BigQueryDiscoveryTarget(
      cadence: (() {
        final guardedValue = map['cadence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2DiscoveryGenerationCadence.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2DiscoveryBigQueryConditions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      filter: pulumi.Input.fromValue(
        GooglePrivacyDlpV2DiscoveryBigQueryFilter.fromMap(
          (map['filter']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
