import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the index. Output only.
enum IndexState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  creating("CREATING"),
  ready("READY"),
  error("ERROR");

  const IndexState(this.wireValue);
  @override
  final String wireValue;

  static IndexState fromValue(String value) {
    for (final item in IndexState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexState value: $value');
  }
}
