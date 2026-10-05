import 'package:pulumi/pulumi.dart' as pulumi;

/// How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.
enum BasicLevelCombiningFunction implements pulumi.PulumiEnum<String> {
  and("AND"),
  or("OR");

  const BasicLevelCombiningFunction(this.wireValue);
  @override
  final String wireValue;

  static BasicLevelCombiningFunction fromValue(String value) {
    for (final item in BasicLevelCombiningFunction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BasicLevelCombiningFunction value: $value');
  }
}
