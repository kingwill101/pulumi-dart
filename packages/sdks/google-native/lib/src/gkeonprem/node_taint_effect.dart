import 'package:pulumi/pulumi.dart' as pulumi;

/// The taint effect.
enum NodeTaintEffect implements pulumi.PulumiEnum<String> {
  effectUnspecified("EFFECT_UNSPECIFIED"),
  noSchedule("NO_SCHEDULE"),
  preferNoSchedule("PREFER_NO_SCHEDULE"),
  noExecute("NO_EXECUTE");

  const NodeTaintEffect(this.wireValue);
  @override
  final String wireValue;

  static NodeTaintEffect fromValue(String value) {
    for (final item in NodeTaintEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeTaintEffect value: $value');
  }
}
