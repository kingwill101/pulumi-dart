import 'package:pulumi/pulumi.dart' as pulumi;

/// The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If "PauseIngress" is specified, new events will not be read from the event source. If "PurgeOldData" is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData.
enum StorageLimitExceededBehavior implements pulumi.PulumiEnum<String> {
  valuePurgeOldData("PurgeOldData"),
  valuePauseIngress("PauseIngress");

  const StorageLimitExceededBehavior(this.wireValue);
  @override
  final String wireValue;

  static StorageLimitExceededBehavior fromValue(String value) {
    for (final item in StorageLimitExceededBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageLimitExceededBehavior value: $value');
  }
}
