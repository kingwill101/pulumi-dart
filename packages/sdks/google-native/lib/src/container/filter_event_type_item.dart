enum FilterEventTypeItem {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  upgradeAvailableEvent("UPGRADE_AVAILABLE_EVENT"),
  upgradeEvent("UPGRADE_EVENT"),
  securityBulletinEvent("SECURITY_BULLETIN_EVENT");

  const FilterEventTypeItem(this.wireValue);
  final String wireValue;

  static FilterEventTypeItem fromValue(String value) {
    for (final item in FilterEventTypeItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterEventTypeItem value: $value');
  }
}

