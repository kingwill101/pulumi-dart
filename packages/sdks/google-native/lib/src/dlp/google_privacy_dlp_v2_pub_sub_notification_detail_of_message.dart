/// How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
enum GooglePrivacyDlpV2PubSubNotificationDetailOfMessage {
  detailLevelUnspecified("DETAIL_LEVEL_UNSPECIFIED"),
  tableProfile("TABLE_PROFILE"),
  resourceName("RESOURCE_NAME");

  const GooglePrivacyDlpV2PubSubNotificationDetailOfMessage(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2PubSubNotificationDetailOfMessage fromValue(
    String value,
  ) {
    for (final item
        in GooglePrivacyDlpV2PubSubNotificationDetailOfMessage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GooglePrivacyDlpV2PubSubNotificationDetailOfMessage value: $value',
    );
  }
}
