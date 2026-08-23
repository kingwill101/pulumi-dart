/// The variable to be excluded.
enum OwaspCrsExclusionEntryMatchVariable {
  valueRequestHeaderNames("RequestHeaderNames"),
  valueRequestCookieNames("RequestCookieNames"),
  valueRequestArgNames("RequestArgNames"),
  valueRequestHeaderKeys("RequestHeaderKeys"),
  valueRequestHeaderValues("RequestHeaderValues"),
  valueRequestCookieKeys("RequestCookieKeys"),
  valueRequestCookieValues("RequestCookieValues"),
  valueRequestArgKeys("RequestArgKeys"),
  valueRequestArgValues("RequestArgValues");

  const OwaspCrsExclusionEntryMatchVariable(this.wireValue);
  final String wireValue;

  static OwaspCrsExclusionEntryMatchVariable fromValue(String value) {
    for (final item in OwaspCrsExclusionEntryMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwaspCrsExclusionEntryMatchVariable value: $value');
  }
}
