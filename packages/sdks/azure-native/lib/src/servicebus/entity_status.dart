/// Enumerates the possible values for the status of a messaging entity.
enum EntityStatus {
  valueActive("Active"),
  valueDisabled("Disabled"),
  valueRestoring("Restoring"),
  valueSendDisabled("SendDisabled"),
  valueReceiveDisabled("ReceiveDisabled"),
  valueCreating("Creating"),
  valueDeleting("Deleting"),
  valueRenaming("Renaming"),
  valueUnknown("Unknown");

  const EntityStatus(this.value);
  final String value;

  static EntityStatus fromValue(String value) {
    for (final item in EntityStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityStatus value: $value');
  }
}

