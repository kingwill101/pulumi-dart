// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_cut.dart';
import 'time_series_ratio.dart';

/// Service Level Indicators for which atomic units of service are counted directly.
class RequestBasedSli {
  /// distribution_cut is used when good_service is a count of values aggregated in a Distribution that fall into a good range. The total_service is the total count of all values aggregated in the Distribution.
  final pulumi.Input<DistributionCut>? distributionCut;
  /// good_total_ratio is used when the ratio of good_service to total_service is computed from two TimeSeries.
  final pulumi.Input<TimeSeriesRatio>? goodTotalRatio;

  /// Creates a new [RequestBasedSli].
  /// [distributionCut] distribution_cut is used when good_service is a count of values aggregated in a Distribution that fall into a good range. The total_service is the total count of all values aggregated in the Distribution.
  /// [goodTotalRatio] good_total_ratio is used when the ratio of good_service to total_service is computed from two TimeSeries.
  RequestBasedSli({
    this.distributionCut,
    this.goodTotalRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionCut': ?pulumi.Input.mapOptionalInputValue<DistributionCut, Map<String, dynamic>>(distributionCut, (value) => value.toMap()),
      'goodTotalRatio': ?pulumi.Input.mapOptionalInputValue<TimeSeriesRatio, Map<String, dynamic>>(goodTotalRatio, (value) => value.toMap()),
    };
  }

  factory RequestBasedSli.fromMap(Map<String, dynamic> map) {
    return RequestBasedSli(
      distributionCut: map['distributionCut'] == null ? null : (DistributionCut.fromMap((map['distributionCut']! as Map).cast<String, dynamic>())).input(),
      goodTotalRatio: map['goodTotalRatio'] == null ? null : (TimeSeriesRatio.fromMap((map['goodTotalRatio']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

