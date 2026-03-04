enum PossibleOperationsDirections {
  valuePrimaryToRecovery("PrimaryToRecovery"),
  valueRecoveryToPrimary("RecoveryToPrimary");

  const PossibleOperationsDirections(this.wireValue);
  final String wireValue;

  static PossibleOperationsDirections fromValue(String value) {
    for (final item in PossibleOperationsDirections.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PossibleOperationsDirections value: $value');
  }
}
