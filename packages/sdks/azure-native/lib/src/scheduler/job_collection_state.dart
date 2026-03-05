/// Gets or sets the state.
enum JobCollectionState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSuspended("Suspended"),
  valueDeleted("Deleted");

  const JobCollectionState(this.wireValue);
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

