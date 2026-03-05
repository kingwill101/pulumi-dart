/// The type of replica.
enum ReplicaInfoType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY"),
  witness("WITNESS");

  const ReplicaInfoType(this.wireValue);
  final String wireValue;

  static ReplicaInfoType fromValue(String value) {
    for (final item in ReplicaInfoType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicaInfoType value: $value');
  }
}

