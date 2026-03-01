/// Gets or sets the state.
enum JobCollectionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSuspended("Suspended"),
  valueDeleted("Deleted");

  const JobCollectionState(this.value);
  final String value;

  static JobCollectionState fromValue(String value) {
    for (final item in JobCollectionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobCollectionState value: $value');
  }
}

