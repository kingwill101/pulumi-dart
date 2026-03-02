// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collection_rule_data_source_prometheus_forwarder_label_include_filter.dart';

class GetDataCollectionRuleDataSourcePrometheusForwarder {
  /// One or more `label_include_filter` blocks as defined above.
  final pulumi.Input<List<GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter>> labelIncludeFilters;
  /// Specifies the name of the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [GetDataCollectionRuleDataSourcePrometheusForwarder].
  /// [labelIncludeFilters] One or more `label_include_filter` blocks as defined above.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  GetDataCollectionRuleDataSourcePrometheusForwarder({
    required this.labelIncludeFilters,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelIncludeFilters': pulumi.Input.mapInputValue<List<GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter>, List<Map<String, dynamic>>>(labelIncludeFilters, (value) => pulumi.Input.encodeList<GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'streams': streams,
    };
  }

  factory GetDataCollectionRuleDataSourcePrometheusForwarder.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourcePrometheusForwarder(
      labelIncludeFilters: (pulumi.Input.decodeList<GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter>(map['labelIncludeFilters'], (value) => GetDataCollectionRuleDataSourcePrometheusForwarderLabelIncludeFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      streams: ((map['streams'] as List).cast<String>()).input(),
    );
  }
}

