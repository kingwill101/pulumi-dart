import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
enum IndexIndexUpdateMethod implements pulumi.PulumiEnum<String> {
  indexUpdateMethodUnspecified("INDEX_UPDATE_METHOD_UNSPECIFIED"),
  batchUpdate("BATCH_UPDATE"),
  streamUpdate("STREAM_UPDATE");

  const IndexIndexUpdateMethod(this.wireValue);
  @override
  final String wireValue;

  static IndexIndexUpdateMethod fromValue(String value) {
    for (final item in IndexIndexUpdateMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexIndexUpdateMethod value: $value');
  }
}
