import 'package:pulumi/pulumi.dart' as pulumi;

/// Expedited rollout intent.
enum ExpeditedRolloutIntent implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  hotfix("Hotfix");

  const ExpeditedRolloutIntent(this.wireValue);
  @override
  final String wireValue;

  static ExpeditedRolloutIntent fromValue(String value) {
    for (final item in ExpeditedRolloutIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpeditedRolloutIntent value: $value');
  }
}
