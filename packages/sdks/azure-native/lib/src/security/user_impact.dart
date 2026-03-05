/// The user impact of the assessment
enum UserImpact {
  valueLow("Low"),
  valueModerate("Moderate"),
  valueHigh("High");

  const UserImpact(this.wireValue);
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

