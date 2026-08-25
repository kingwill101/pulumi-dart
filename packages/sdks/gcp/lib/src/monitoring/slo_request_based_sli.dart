// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_request_based_sli_distribution_cut.dart';
import 'slo_request_based_sli_good_total_ratio.dart';

class SloRequestBasedSli {
  /// Used when goodService is defined by a count of values aggregated in a
  /// Distribution that fall into a good range. The totalService is the
  /// total count of all values aggregated in the Distribution.
  /// Defines a distribution TimeSeries filter and thresholds used for
  /// measuring good service and total service.
  /// Exactly one of `distributionCut` or `goodTotalRatio` can be set.
  /// Structure is documented below.
  final pulumi.Input<SloRequestBasedSliDistributionCut?>? distributionCut;
  /// A means to compute a ratio of `goodService` to `totalService`.
  /// Defines computing this ratio with two TimeSeries [monitoring filters](https://cloud.google.com/monitoring/api/v3/filters)
  /// Must specify exactly two of good, bad, and total service filters.
  /// The relationship goodService + badService = totalService
  /// will be assumed.
  /// Exactly one of `distributionCut` or `goodTotalRatio` can be set.
  /// Structure is documented below.
  final pulumi.Input<SloRequestBasedSliGoodTotalRatio?>? goodTotalRatio;

  /// Creates a new [SloRequestBasedSli].
  /// [distributionCut] Used when goodService is defined by a count of values aggregated in a
  /// [goodTotalRatio] A means to compute a ratio of `goodService` to `totalService`.
  const SloRequestBasedSli({
    this.distributionCut,
    this.goodTotalRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionCut': ?pulumi.Input.mapOptionalInputValue<SloRequestBasedSliDistributionCut, Map<String, dynamic>>(distributionCut, (value) => value.toMap()),
      'goodTotalRatio': ?pulumi.Input.mapOptionalInputValue<SloRequestBasedSliGoodTotalRatio, Map<String, dynamic>>(goodTotalRatio, (value) => value.toMap()),
    };
  }

  factory SloRequestBasedSli.fromMap(Map<String, dynamic> map) {
    return SloRequestBasedSli(
      distributionCut: (() { final guardedValue = map['distributionCut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloRequestBasedSliDistributionCut.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goodTotalRatio: (() { final guardedValue = map['goodTotalRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SloRequestBasedSliGoodTotalRatio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
