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

  const WebApplicationFirewallMatchVariable(this.value);
  final String value;

  static WebApplicationFirewallMatchVariable fromValue(String value) {
    for (final item in WebApplicationFirewallMatchVariable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallMatchVariable value: $value');
  }
}

