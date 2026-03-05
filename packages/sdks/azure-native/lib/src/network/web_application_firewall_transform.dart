/// Transforms applied before matching.
enum WebApplicationFirewallTransform {
  valueUppercase("Uppercase"),
  valueLowercase("Lowercase"),
  valueTrim("Trim"),
  valueUrlDecode("UrlDecode"),
  valueUrlEncode("UrlEncode"),
  valueRemoveNulls("RemoveNulls"),
  valueHtmlEntityDecode("HtmlEntityDecode");

  const WebApplicationFirewallTransform(this.wireValue);
  final String wireValue;

  static WebApplicationFirewallTransform fromValue(String value) {
    for (final item in WebApplicationFirewallTransform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallTransform value: $value');
  }
}

