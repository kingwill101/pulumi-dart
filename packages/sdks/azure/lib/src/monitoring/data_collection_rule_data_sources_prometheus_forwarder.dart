// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_data_sources_prometheus_forwarder_label_include_filter.dart';

class DataCollectionRuleDataSourcesPrometheusForwarder {
  /// One or more `label_include_filter` blocks as defined above.
  final List<DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter>? labelIncludeFilters;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final String name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is `Microsoft-PrometheusMetrics`.
  final List<String> streams;

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
      'labelIncludeFilters': ?labelIncludeFilters == null ? null : pulumi.Input.encodeList<DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter, Map<String, dynamic>>(labelIncludeFilters!, (value) => value.toMap()),
      'name': name,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesPrometheusForwarder.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesPrometheusForwarder(
      labelIncludeFilters: map['labelIncludeFilters'] == null ? null : pulumi.Input.decodeList<DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter>(map['labelIncludeFilters'], (value) => DataCollectionRuleDataSourcesPrometheusForwarderLabelIncludeFilter.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

