// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_entry_response_jobs_v4.dart';
import 'compensation_range_response_jobs_v4.dart';

/// Job compensation details.
class CompensationInfoResponseJobsV4 {
  /// Annualized base compensation range. Computed as base compensation entry's CompensationEntry.amount times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final pulumi.Input<CompensationRangeResponseJobsV4> annualizedBaseCompensationRange;
  /// Annualized total compensation range. Computed as all compensation entries' CompensationEntry.amount times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final pulumi.Input<CompensationRangeResponseJobsV4> annualizedTotalCompensationRange;
  /// Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as **base compensation entry** for the job.
  final pulumi.Input<List<CompensationEntryResponseJobsV4>> entries;

  /// Creates a new [CompensationInfoResponseJobsV4].
  /// [annualizedBaseCompensationRange] Annualized base compensation range. Computed as base compensation entry's CompensationEntry.amount times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  /// [annualizedTotalCompensationRange] Annualized total compensation range. Computed as all compensation entries' CompensationEntry.amount times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  /// [entries] Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as **base compensation entry** for the job.
  const CompensationInfoResponseJobsV4({
    required this.annualizedBaseCompensationRange,
    required this.annualizedTotalCompensationRange,
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annualizedBaseCompensationRange': pulumi.Input.mapInputValue<CompensationRangeResponseJobsV4, Map<String, dynamic>>(annualizedBaseCompensationRange, (value) => value.toMap()),
      'annualizedTotalCompensationRange': pulumi.Input.mapInputValue<CompensationRangeResponseJobsV4, Map<String, dynamic>>(annualizedTotalCompensationRange, (value) => value.toMap()),
      'entries': pulumi.Input.mapInputValue<List<CompensationEntryResponseJobsV4>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<CompensationEntryResponseJobsV4, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CompensationInfoResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return CompensationInfoResponseJobsV4(
      annualizedBaseCompensationRange: pulumi.Input.fromValue(CompensationRangeResponseJobsV4.fromMap((map['annualizedBaseCompensationRange']! as Map).cast<String, dynamic>())),
      annualizedTotalCompensationRange: pulumi.Input.fromValue(CompensationRangeResponseJobsV4.fromMap((map['annualizedTotalCompensationRange']! as Map).cast<String, dynamic>())),
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<CompensationEntryResponseJobsV4>(map['entries']!, (value) => CompensationEntryResponseJobsV4.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

