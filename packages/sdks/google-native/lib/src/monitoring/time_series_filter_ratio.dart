// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation.dart';
import 'pick_time_series_filter.dart';
import 'ratio_part.dart';
import 'statistical_time_series_filter.dart';

/// A pair of time series filters that define a ratio computation. The output time series is the pair-wise division of each aligned element from the numerator and denominator time series.
class TimeSeriesFilterRatio {
  /// The denominator of the ratio.
  final pulumi.Input<RatioPart>? denominator;
  /// The numerator of the ratio.
  final pulumi.Input<RatioPart>? numerator;
  /// Ranking based time series filter.
  final pulumi.Input<PickTimeSeriesFilter>? pickTimeSeriesFilter;
  /// Apply a second aggregation after the ratio is computed.
  final pulumi.Input<Aggregation>? secondaryAggregation;
  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final pulumi.Input<StatisticalTimeSeriesFilter>? statisticalTimeSeriesFilter;

  /// Creates a new [TimeSeriesFilterRatio].
  /// [denominator] The denominator of the ratio.
  /// [numerator] The numerator of the ratio.
  /// [pickTimeSeriesFilter] Ranking based time series filter.
  /// [secondaryAggregation] Apply a second aggregation after the ratio is computed.
  /// [statisticalTimeSeriesFilter] Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  const TimeSeriesFilterRatio({
    this.denominator,
    this.numerator,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denominator': ?pulumi.Input.mapOptionalInputValue<RatioPart, Map<String, dynamic>>(denominator, (value) => value.toMap()),
      'numerator': ?pulumi.Input.mapOptionalInputValue<RatioPart, Map<String, dynamic>>(numerator, (value) => value.toMap()),
      'pickTimeSeriesFilter': ?pulumi.Input.mapOptionalInputValue<PickTimeSeriesFilter, Map<String, dynamic>>(pickTimeSeriesFilter, (value) => value.toMap()),
      'secondaryAggregation': ?pulumi.Input.mapOptionalInputValue<Aggregation, Map<String, dynamic>>(secondaryAggregation, (value) => value.toMap()),
      'statisticalTimeSeriesFilter': ?pulumi.Input.mapOptionalInputValue<StatisticalTimeSeriesFilter, Map<String, dynamic>>(statisticalTimeSeriesFilter, (value) => value.toMap()),
    };
  }

  factory TimeSeriesFilterRatio.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterRatio(
      denominator: (() { final guardedValue = map['denominator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RatioPart.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numerator: (() { final guardedValue = map['numerator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RatioPart.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pickTimeSeriesFilter: (() { final guardedValue = map['pickTimeSeriesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PickTimeSeriesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryAggregation: (() { final guardedValue = map['secondaryAggregation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Aggregation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statisticalTimeSeriesFilter: (() { final guardedValue = map['statisticalTimeSeriesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatisticalTimeSeriesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
