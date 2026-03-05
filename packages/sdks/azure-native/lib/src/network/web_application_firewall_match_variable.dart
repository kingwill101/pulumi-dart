/// Match Variable.
enum WebApplicationFirewallMatchVariable {
  valueRemoteAddr("RemoteAddr"),
  valueRequestMethod("RequestMethod"),
  valueQueryString("QueryString"),
  valuePostArgs("PostArgs"),
  valueRequestUri("RequestUri"),
  valueRequestHeaders("RequestHeaders"),
  valueRequestBody("RequestBody"),
  valueRequestCookies("RequestCookies");

  const WebApplicationFirewallMatchVariable(this.wireValue);
  final String wireValue;

  static WebApplicationFirewallMatchVariable fromValue(String value) {
    for (final item in WebApplicationFirewallMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallMatchVariable value: $value');
  }
}

