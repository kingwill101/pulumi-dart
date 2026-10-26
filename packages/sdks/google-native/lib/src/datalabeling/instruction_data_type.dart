import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The data type of this instruction.
enum InstructionDataType implements pulumi.PulumiEnum<String> {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  image("IMAGE"),
  video("VIDEO"),
  text("TEXT"),
  generalData("GENERAL_DATA");

  const InstructionDataType(this.wireValue);
  @override
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
