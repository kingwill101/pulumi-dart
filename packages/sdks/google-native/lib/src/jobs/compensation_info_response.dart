// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compensation_entry_response.dart';
import 'compensation_range_response.dart';

/// Job compensation details.
class CompensationInfoResponse {
  /// Annualized base compensation range. Computed as base compensation entry's CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final pulumi.Input<CompensationRangeResponse> annualizedBaseCompensationRange;
  /// Annualized total compensation range. Computed as all compensation entries' CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  final pulumi.Input<CompensationRangeResponse> annualizedTotalCompensationRange;
  /// Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.
  final pulumi.Input<List<CompensationEntryResponse>> entries;

  /// Creates a new [CompensationInfoResponse].
  /// [annualizedBaseCompensationRange] Annualized base compensation range. Computed as base compensation entry's CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  /// [annualizedTotalCompensationRange] Annualized total compensation range. Computed as all compensation entries' CompensationEntry.compensation times CompensationEntry.expected_units_per_year. See CompensationEntry for explanation on compensation annualization.
  /// [entries] Optional. Job compensation information. At most one entry can be of type CompensationInfo.CompensationType.BASE, which is referred as ** base compensation entry ** for the job.
  CompensationInfoResponse({
    required this.annualizedBaseCompensationRange,
    required this.annualizedTotalCompensationRange,
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annualizedBaseCompensationRange': pulumi.Input.mapInputValue<CompensationRangeResponse, Map<String, dynamic>>(annualizedBaseCompensationRange, (value) => value.toMap()),
      'annualizedTotalCompensationRange': pulumi.Input.mapInputValue<CompensationRangeResponse, Map<String, dynamic>>(annualizedTotalCompensationRange, (value) => value.toMap()),
      'entries': pulumi.Input.mapInputValue<List<CompensationEntryResponse>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<CompensationEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CompensationInfoResponse.fromMap(Map<String, dynamic> map) {
    return CompensationInfoResponse(
      annualizedBaseCompensationRange: pulumi.Input.fromValue(CompensationRangeResponse.fromMap((map['annualizedBaseCompensationRange']! as Map).cast<String, dynamic>())),
      annualizedTotalCompensationRange: pulumi.Input.fromValue(CompensationRangeResponse.fromMap((map['annualizedTotalCompensationRange']! as Map).cast<String, dynamic>())),
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<CompensationEntryResponse>(map['entries']!, (value) => CompensationEntryResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

