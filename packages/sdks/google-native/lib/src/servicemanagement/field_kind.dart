/// The field type.
enum FieldKind {
  typeUnknown("TYPE_UNKNOWN"),
  typeDouble("TYPE_DOUBLE"),
  typeFloat("TYPE_FLOAT"),
  typeInt64("TYPE_INT64"),
  typeUint64("TYPE_UINT64"),
  typeInt32("TYPE_INT32"),
  typeFixed64("TYPE_FIXED64"),
  typeFixed32("TYPE_FIXED32"),
  typeBool("TYPE_BOOL"),
  typeString("TYPE_STRING"),
  typeGroup("TYPE_GROUP"),
  typeMessage("TYPE_MESSAGE"),
  typeBytes("TYPE_BYTES"),
  typeUint32("TYPE_UINT32"),
  typeEnum("TYPE_ENUM"),
  typeSfixed32("TYPE_SFIXED32"),
  typeSfixed64("TYPE_SFIXED64"),
  typeSint32("TYPE_SINT32"),
  typeSint64("TYPE_SINT64");

  const FieldKind(this.wireValue);
  final String wireValue;

  static FieldKind fromValue(String value) {
    for (final item in FieldKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldKind value: $value');
  }
}

