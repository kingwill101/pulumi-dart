import 'package:pulumi/pulumi.dart' as pulumi;

/// The user impact of the assessment
enum UserImpact implements pulumi.PulumiEnum<String> {
  valueLow("Low"),
  valueModerate("Moderate"),
  valueHigh("High");

  const UserImpact(this.wireValue);
  @override
  final String wireValue;

  static UserImpact fromValue(String value) {
    for (final item in UserImpact.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UserImpact value: $value');
  }
}
