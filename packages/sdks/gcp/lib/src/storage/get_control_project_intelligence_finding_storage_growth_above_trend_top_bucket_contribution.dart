// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_finding_storage_growth_above_trend_top_bucket_contribution_top_prefix.dart';

class GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContribution {
  /// A list of top prefixes contributing to the finding. Structure is documented below.
  final pulumi.Input<List<GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix>> topPrefixes;

  /// Creates a new [GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContribution].
  /// [topPrefixes] A list of top prefixes contributing to the finding. Structure is documented below.
  const GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContribution({
    required this.topPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topPrefixes': pulumi.Input.mapInputValue<List<GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix>, List<Map<String, dynamic>>>(topPrefixes, (value) => pulumi.Input.encodeList<GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContribution.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContribution(
      topPrefixes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix>(map['topPrefixes']!, (value) => GetControlProjectIntelligenceFindingStorageGrowthAboveTrendTopBucketContributionTopPrefix.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
