import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. Blockchain garbage collection mode.
enum GethDetailsGarbageCollectionMode implements pulumi.PulumiEnum<String> {
  garbageCollectionModeUnspecified("GARBAGE_COLLECTION_MODE_UNSPECIFIED"),
  full("FULL"),
  archive("ARCHIVE");

  const GethDetailsGarbageCollectionMode(this.wireValue);
  @override
  final String wireValue;

  static GethDetailsGarbageCollectionMode fromValue(String value) {
    for (final item in GethDetailsGarbageCollectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GethDetailsGarbageCollectionMode value: $value');
  }
}
