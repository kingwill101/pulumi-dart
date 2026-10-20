import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Only an ENABLED SecurityAction is enforced. An ENABLED SecurityAction past its expiration time will not be enforced.
enum SecurityActionState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const SecurityActionState(this.wireValue);
  @override
  final String wireValue;

  static SecurityActionState fromValue(String value) {
    for (final item in SecurityActionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityActionState value: $value');
  }
}
