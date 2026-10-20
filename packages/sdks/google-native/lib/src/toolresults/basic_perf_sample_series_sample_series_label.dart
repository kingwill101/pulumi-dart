import 'package:pulumi/pulumi.dart' as pulumi;

enum BasicPerfSampleSeriesSampleSeriesLabel implements pulumi.PulumiEnum<String> {
  sampleSeriesTypeUnspecified("sampleSeriesTypeUnspecified"),
  memoryRssPrivate("memoryRssPrivate"),
  memoryRssShared("memoryRssShared"),
  memoryRssTotal("memoryRssTotal"),
  memoryTotal("memoryTotal"),
  cpuUser("cpuUser"),
  cpuKernel("cpuKernel"),
  cpuTotal("cpuTotal"),
  ntBytesTransferred("ntBytesTransferred"),
  ntBytesReceived("ntBytesReceived"),
  networkSent("networkSent"),
  networkReceived("networkReceived"),
  graphicsFrameRate("graphicsFrameRate");

  const BasicPerfSampleSeriesSampleSeriesLabel(this.wireValue);
  @override
  final String wireValue;

  static BasicPerfSampleSeriesSampleSeriesLabel fromValue(String value) {
    for (final item in BasicPerfSampleSeriesSampleSeriesLabel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BasicPerfSampleSeriesSampleSeriesLabel value: $value');
  }
}
