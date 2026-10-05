import 'package:pulumi/pulumi.dart' as pulumi;

enum ExtensionChainExtensionSupportedEventsItem implements pulumi.PulumiEnum<String> {
  eventTypeUnspecified("EVENT_TYPE_UNSPECIFIED"),
  requestHeaders("REQUEST_HEADERS"),
  requestBody("REQUEST_BODY"),
  responseHeaders("RESPONSE_HEADERS"),
  responseBody("RESPONSE_BODY");

  const ExtensionChainExtensionSupportedEventsItem(this.wireValue);
  @override
  final String wireValue;

  static ExtensionChainExtensionSupportedEventsItem fromValue(String value) {
    for (final item in ExtensionChainExtensionSupportedEventsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtensionChainExtensionSupportedEventsItem value: $value');
  }
}
