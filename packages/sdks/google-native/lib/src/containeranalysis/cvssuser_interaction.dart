enum CVSSUserInteraction {
  userInteractionUnspecified("USER_INTERACTION_UNSPECIFIED"),
  userInteractionNone("USER_INTERACTION_NONE"),
  userInteractionRequired("USER_INTERACTION_REQUIRED");

  const CVSSUserInteraction(this.wireValue);
  final String wireValue;

  static CVSSUserInteraction fromValue(String value) {
    for (final item in CVSSUserInteraction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSUserInteraction value: $value');
  }
}

