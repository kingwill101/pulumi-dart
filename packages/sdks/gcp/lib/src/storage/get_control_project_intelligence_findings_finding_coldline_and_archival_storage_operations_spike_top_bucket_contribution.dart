// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_findings_finding_coldline_and_archival_storage_operations_spike_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingsFindingColdlineAndArchivalStorageOperationsSpikeTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
