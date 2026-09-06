import 'package:pulumi/pulumi.dart' as pulumi;

/// Sync direction of the sync member.
enum SyncDirection implements pulumi.PulumiEnum<String> {
  valueBidirectional("Bidirectional"),
  valueOneWayMemberToHub("OneWayMemberToHub"),
  valueOneWayHubToMember("OneWayHubToMember");

  const SyncDirection(this.wireValue);
  @override
  final String wireValue;

  static SyncDirection fromValue(String value) {
    for (final item in SyncDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncDirection value: $value');
  }
}
