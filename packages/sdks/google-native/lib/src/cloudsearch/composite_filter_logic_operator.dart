/// The logic operator of the sub filter.
enum CompositeFilterLogicOperator {
  and("AND"),
  or("OR"),
  not("NOT");

  const CompositeFilterLogicOperator(this.wireValue);
  final String wireValue;

  static CompositeFilterLogicOperator fromValue(String value) {
    for (final item in CompositeFilterLogicOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositeFilterLogicOperator value: $value');
  }
}

