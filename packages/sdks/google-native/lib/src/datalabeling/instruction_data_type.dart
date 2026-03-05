/// Required. The data type of this instruction.
enum InstructionDataType {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  image("IMAGE"),
  video("VIDEO"),
  text("TEXT"),
  generalData("GENERAL_DATA");

  const InstructionDataType(this.wireValue);
  final String wireValue;

  static InstructionDataType fromValue(String value) {
    for (final item in InstructionDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstructionDataType value: $value');
  }
}

