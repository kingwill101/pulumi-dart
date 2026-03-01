/// The entity query kind
enum EntityTimelineKind {
  valueActivity("Activity"),
  valueBookmark("Bookmark"),
  valueSecurityAlert("SecurityAlert"),
  valueAnomaly("Anomaly");

  const EntityTimelineKind(this.value);
  final String value;

  static EntityTimelineKind fromValue(String value) {
    for (final item in EntityTimelineKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTimelineKind value: $value');
  }
}

