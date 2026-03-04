// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_sources_prometheus_forwarder_label_include_filter.dart';

class DataCollectionRuleDataSourcesPrometheusForwarder {
  /// One or more `label_include_filter` blocks as defined above.
  final pulumi.Input<
    List<DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter>
  >?
  labelIncludeFilters;

  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;

  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-PrometheusMetrics`.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [DataCollectionRuleDataSourcesPrometheusForwarder].
  /// [labelIncludeFilters] One or more `label_include_filter` blocks as defined above.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-PrometheusMetrics`.
  DataCollectionRuleDataSourcesPrometheusForwarder({
    this.labelIncludeFilters,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelIncludeFilters':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter
            >,
            List<Map<String, dynamic>>
          >(
            labelIncludeFilters,
            (value) =>
                pulumi.Input.encodeList<
                  DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesPrometheusForwarder.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataCollectionRuleDataSourcesPrometheusForwarder(
      labelIncludeFilters: (() {
        final guardedValue = map['labelIncludeFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter
          >(
            guardedValue,
            (value) =>
                DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}
