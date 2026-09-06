import 'package:pulumi/pulumi.dart' as pulumi;

/// The entity query kind
enum EntityTimelineKind implements pulumi.PulumiEnum<String> {
  valueActivity("Activity"),
  valueBookmark("Bookmark"),
  valueSecurityAlert("SecurityAlert"),
  valueAnomaly("Anomaly");

  const EntityTimelineKind(this.wireValue);
  @override
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
