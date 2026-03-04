/// The variable to be scrubbed from the logs.
enum ScrubbingRuleEntryMatchVariable {
  valueRequestHeaderNames("RequestHeaderNames"),
  valueRequestCookieNames("RequestCookieNames"),
  valueRequestArgNames("RequestArgNames"),
  valueRequestPostArgNames("RequestPostArgNames"),
  valueRequestJSONArgNames("RequestJSONArgNames"),
  valueRequestIPAddress("RequestIPAddress");

  const ScrubbingRuleEntryMatchVariable(this.wireValue);
  final String wireValue;

  static ScrubbingRuleEntryMatchVariable fromValue(String value) {
    for (final item in ScrubbingRuleEntryMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ScrubbingRuleEntryMatchVariable value: $value',
    );
  }
}
