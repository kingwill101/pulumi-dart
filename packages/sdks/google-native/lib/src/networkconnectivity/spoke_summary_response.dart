// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_state_count_response.dart';
import 'spoke_state_reason_count_response.dart';
import 'spoke_type_count_response.dart';

/// Summarizes information about the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.
class SpokeSummaryResponse {
  /// Counts the number of spokes that are in each state and associated with a given hub.
  final List<SpokeStateCountResponse> spokeStateCounts;
  /// Counts the number of spokes that are inactive for each possible reason and associated with a given hub.
  final List<SpokeStateReasonCountResponse> spokeStateReasonCounts;
  /// Counts the number of spokes of each type that are associated with a specific hub.
  final List<SpokeTypeCountResponse> spokeTypeCounts;

  /// Creates a new [SpokeSummaryResponse].
  /// [spokeStateCounts] Counts the number of spokes that are in each state and associated with a given hub.
  /// [spokeStateReasonCounts] Counts the number of spokes that are inactive for each possible reason and associated with a given hub.
  /// [spokeTypeCounts] Counts the number of spokes of each type that are associated with a specific hub.
  SpokeSummaryResponse({
    required this.spokeStateCounts,
    required this.spokeStateReasonCounts,
    required this.spokeTypeCounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spokeStateCounts': pulumi.Input.encodeList<SpokeStateCountResponse, Map<String, dynamic>>(spokeStateCounts, (value) => value.toMap()),
      'spokeStateReasonCounts': pulumi.Input.encodeList<SpokeStateReasonCountResponse, Map<String, dynamic>>(spokeStateReasonCounts, (value) => value.toMap()),
      'spokeTypeCounts': pulumi.Input.encodeList<SpokeTypeCountResponse, Map<String, dynamic>>(spokeTypeCounts, (value) => value.toMap()),
    };
  }

  factory SpokeSummaryResponse.fromMap(Map<String, dynamic> map) {
    return SpokeSummaryResponse(
      spokeStateCounts: pulumi.Input.decodeList<SpokeStateCountResponse>(map['spokeStateCounts'], (value) => SpokeStateCountResponse.fromMap((value as Map).cast<String, dynamic>())),
      spokeStateReasonCounts: pulumi.Input.decodeList<SpokeStateReasonCountResponse>(map['spokeStateReasonCounts'], (value) => SpokeStateReasonCountResponse.fromMap((value as Map).cast<String, dynamic>())),
      spokeTypeCounts: pulumi.Input.decodeList<SpokeTypeCountResponse>(map['spokeTypeCounts'], (value) => SpokeTypeCountResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

