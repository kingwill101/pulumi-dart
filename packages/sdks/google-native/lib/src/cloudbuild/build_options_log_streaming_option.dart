import 'package:pulumi/pulumi.dart' as pulumi;

/// Option to define build log streaming behavior to Cloud Storage.
enum BuildOptionsLogStreamingOption implements pulumi.PulumiEnum<String> {
  streamDefault("STREAM_DEFAULT"),
  streamOn("STREAM_ON"),
  streamOff("STREAM_OFF");

  const BuildOptionsLogStreamingOption(this.wireValue);
  @override
  final String wireValue;

  static BuildOptionsLogStreamingOption fromValue(String value) {
    for (final item in BuildOptionsLogStreamingOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsLogStreamingOption value: $value');
  }
}
