/// The action verb that will be blocked when the resource group is locked during move.
enum BlockActionVerb {
  notSpecified("NotSpecified"),
  read("Read"),
  write("Write"),
  action("Action"),
  delete("Delete"),
  unrecognized("Unrecognized");

  const BlockActionVerb(this.value);
  final String value;

  static BlockActionVerb fromValue(String value) {
    for (final item in BlockActionVerb.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlockActionVerb value: $value');
  }
}

