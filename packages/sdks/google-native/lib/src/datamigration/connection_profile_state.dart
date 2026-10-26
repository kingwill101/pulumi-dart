import 'package:pulumi/pulumi.dart' as pulumi;

/// The current connection profile state (e.g. DRAFT, READY, or FAILED).
enum ConnectionProfileState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  creating("CREATING"),
  ready("READY"),
  updating("UPDATING"),
  deleting("DELETING"),
  deleted("DELETED"),
  failed("FAILED");

  const ConnectionProfileState(this.wireValue);
  @override
  final String wireValue;

  static ConnectionProfileState fromValue(String value) {
    for (final item in ConnectionProfileState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionProfileState value: $value');
  }
}
