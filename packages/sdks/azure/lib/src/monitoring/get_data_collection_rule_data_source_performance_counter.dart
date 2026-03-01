// ignore_for_file: unused_element, unnecessary_cast


class GetDataCollectionRuleDataSourcePerformanceCounter {
  /// Specifies a list of specifier names of the performance counters you want to collect. Use a wildcard `*` to collect counters for all instances. To get a list of performance counters on Windows, run the command `typeperf`.
  final List<String> counterSpecifiers;
  /// Specifies the name of the Data Collection Rule.
  final String name;
  /// The number of seconds between consecutive counter measurements (samples). The value should be integer between `1` and `1800` inclusive.
  final int samplingFrequencyInSeconds;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final List<String> streams;

  /// Creates a new [GetDataCollectionRuleDataSourcePerformanceCounter].
  /// [counterSpecifiers] Specifies a list of specifier names of the performance counters you want to collect. Use a wildcard `*` to collect counters for all instances. To get a list of performance counters on Windows, run the command `typeperf`.
  /// [name] Specifies the name of the Data Collection Rule.
  /// [samplingFrequencyInSeconds] The number of seconds between consecutive counter measurements (samples). The value should be integer between `1` and `1800` inclusive.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  GetDataCollectionRuleDataSourcePerformanceCounter({
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

  factory GetDataCollectionRuleDataSourcePerformanceCounter.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleDataSourcePerformanceCounter(
      counterSpecifiers: (map['counterSpecifiers'] as List).cast<String>(),
      name: map['name'] as String,
      samplingFrequencyInSeconds: map['samplingFrequencyInSeconds'] as int,
      streams: (map['streams'] as List).cast<String>(),
    );
  }
}

