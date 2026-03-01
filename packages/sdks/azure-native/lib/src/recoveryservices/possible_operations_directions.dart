enum PossibleOperationsDirections {
  valuePrimaryToRecovery("PrimaryToRecovery"),
  valueRecoveryToPrimary("RecoveryToPrimary");

  const PossibleOperationsDirections(this.value);
  final String value;

  static PossibleOperationsDirections fromValue(String value) {
    for (final item in PossibleOperationsDirections.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PossibleOperationsDirections value: $value');
  }
}

