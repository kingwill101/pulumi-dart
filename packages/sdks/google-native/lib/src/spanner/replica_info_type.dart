/// The type of replica.
enum ReplicaInfoType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY"),
  witness("WITNESS");

  const ReplicaInfoType(this.value);
  final String value;

  static ReplicaInfoType fromValue(String value) {
    for (final item in ReplicaInfoType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicaInfoType value: $value');
  }
}

