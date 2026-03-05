/// The convention used to determine the url of the request made.
enum ForwardProxyConvention {
  valueNoProxy("NoProxy"),
  valueStandard("Standard"),
  valueCustom("Custom");

  const ForwardProxyConvention(this.wireValue);
  final String wireValue;

  static ForwardProxyConvention fromValue(String value) {
    for (final item in ForwardProxyConvention.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardProxyConvention value: $value');
  }
}

