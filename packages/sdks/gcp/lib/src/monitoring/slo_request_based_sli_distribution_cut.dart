// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_request_based_sli_distribution_cut_range.dart';

class SloRequestBasedSliDistributionCut {
  /// A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// aggregating values to quantify the good service provided.
  /// Must have ValueType = DISTRIBUTION and
  /// MetricKind = DELTA or MetricKind = CUMULATIVE.
  final pulumi.Input<String> distributionFilter;
  /// Range of numerical values. The computed good_service
  /// will be the count of values x in the Distribution such
  /// that range.min <= x <= range.max. inclusive of min and
  /// max. Open ranges can be defined by setting
  /// just one of min or max.
  /// Structure is documented below.
  final pulumi.Input<SloRequestBasedSliDistributionCutRange> range;

  /// Creates a new [SloRequestBasedSliDistributionCut].
  /// [distributionFilter] A TimeSeries [monitoring filter](https://cloud.google.com/monitoring/api/v3/filters)
  /// [range] Range of numerical values. The computed good_service
  SloRequestBasedSliDistributionCut({
    required this.distributionFilter,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributionFilter': distributionFilter,
      'range': pulumi.Input.mapInputValue<SloRequestBasedSliDistributionCutRange, Map<String, dynamic>>(range, (value) => value.toMap()),
    };
  }

  factory SloRequestBasedSliDistributionCut.fromMap(Map<String, dynamic> map) {
    return SloRequestBasedSliDistributionCut(
      distributionFilter: (map['distributionFilter'] as String).input(),
      range: (SloRequestBasedSliDistributionCutRange.fromMap((map['range'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

