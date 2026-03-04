/// Base Metrics Represents the intrinsic characteristics of a vulnerability that are constant over time and across user environments.
enum CVSSAttackVector {
  attackVectorUnspecified("ATTACK_VECTOR_UNSPECIFIED"),
  attackVectorNetwork("ATTACK_VECTOR_NETWORK"),
  attackVectorAdjacent("ATTACK_VECTOR_ADJACENT"),
  attackVectorLocal("ATTACK_VECTOR_LOCAL"),
  attackVectorPhysical("ATTACK_VECTOR_PHYSICAL");

  const CVSSAttackVector(this.wireValue);
  final String wireValue;

  static CVSSAttackVector fromValue(String value) {
    for (final item in CVSSAttackVector.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAttackVector value: $value');
  }
}
