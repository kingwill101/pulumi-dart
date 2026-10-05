import 'package:pulumi/pulumi.dart' as pulumi;

enum SubsettingPolicy implements pulumi.PulumiEnum<String> {
  consistentHashSubsetting("CONSISTENT_HASH_SUBSETTING"),
  none("NONE");

  const SubsettingPolicy(this.wireValue);
  @override
  final String wireValue;

  static SubsettingPolicy fromValue(String value) {
    for (final item in SubsettingPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubsettingPolicy value: $value');
  }
}
