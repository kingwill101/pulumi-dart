import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the state.
enum JobCollectionState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSuspended("Suspended"),
  valueDeleted("Deleted");

  const JobCollectionState(this.wireValue);
  @override
  final String wireValue;

  static JobCollectionState fromValue(String value) {
    for (final item in JobCollectionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobCollectionState value: $value');
  }
}
