/// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
enum BasicLevelCombiningFunction {
  and("AND"),
  or("OR");

  const BasicLevelCombiningFunction(this.value);
  final String value;

  static BasicLevelCombiningFunction fromValue(String value) {
    for (final item in BasicLevelCombiningFunction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BasicLevelCombiningFunction value: $value');
  }
}

