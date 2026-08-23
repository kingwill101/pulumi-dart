/// The peering state.
enum ExpressRoutePeeringState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRoutePeeringState(this.wireValue);
  final String wireValue;

  static ExpressRoutePeeringState fromValue(String value) {
    for (final item in ExpressRoutePeeringState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePeeringState value: $value');
  }
}
