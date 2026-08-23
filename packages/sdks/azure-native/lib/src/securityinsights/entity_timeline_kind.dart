/// The entity query kind
enum EntityTimelineKind {
  valueActivity("Activity"),
  valueBookmark("Bookmark"),
  valueSecurityAlert("SecurityAlert"),
  valueAnomaly("Anomaly");

  const EntityTimelineKind(this.wireValue);
  final String wireValue;

  static EntityTimelineKind fromValue(String value) {
    for (final item in EntityTimelineKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTimelineKind value: $value');
  }
}
