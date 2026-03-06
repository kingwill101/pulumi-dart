// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataSourcesPerformanceCounter {
  /// Specifies a list of specifier names of the performance counters you want to collect. To get a list of performance counters on Windows, run the command `typeperf`. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-sources-performance-counters#configure-performance-counters) for more information.
  final pulumi.Input<List<String>> counterSpecifiers;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// The number of seconds between consecutive counter measurements (samples). The value should be integer between `1` and `1800` inclusive. `sampling_frequency_in_seconds` must be equal to `60` seconds for counters collected with `Microsoft-InsightsMetrics` stream.
  final pulumi.Input<int> samplingFrequencyInSeconds;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-InsightsMetrics`,and `Microsoft-Perf`.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [DataCollectionRuleDataSourcesPerformanceCounter].
  /// [counterSpecifiers] Specifies a list of specifier names of the performance counters you want to collect. To get a list of performance counters on Windows, run the command `typeperf`. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-sources-performance-counters#configure-performance-counters) for more information.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [samplingFrequencyInSeconds] The number of seconds between consecutive counter measurements (samples). The value should be integer between `1` and `1800` inclusive. `sampling_frequency_in_seconds` must be equal to `60` seconds for counters collected with `Microsoft-InsightsMetrics` stream.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-InsightsMetrics`,and `Microsoft-Perf`.
  const DataCollectionRuleDataSourcesPerformanceCounter({
    required this.counterSpecifiers,
    required this.name,
    required this.samplingFrequencyInSeconds,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSpecifiers': counterSpecifiers,
      'name': name,
      'samplingFrequencyInSeconds': samplingFrequencyInSeconds,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesPerformanceCounter.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesPerformanceCounter(
      counterSpecifiers: pulumi.Input.fromValue((map['counterSpecifiers'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      samplingFrequencyInSeconds: pulumi.Input.fromValue(map['samplingFrequencyInSeconds'] as int),
      streams: pulumi.Input.fromValue((map['streams'] as List).cast<String>()),
    );
  }
}

