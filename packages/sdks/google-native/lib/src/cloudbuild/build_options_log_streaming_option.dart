/// Option to define build log streaming behavior to Cloud Storage.
enum BuildOptionsLogStreamingOption {
  streamDefault("STREAM_DEFAULT"),
  streamOn("STREAM_ON"),
  streamOff("STREAM_OFF");

  const BuildOptionsLogStreamingOption(this.value);
  final String value;

  static BuildOptionsLogStreamingOption fromValue(String value) {
    for (final item in BuildOptionsLogStreamingOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsLogStreamingOption value: $value');
  }
}

