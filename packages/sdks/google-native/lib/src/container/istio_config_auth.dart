/// The specified Istio auth mode, either none, or mutual TLS.
enum IstioConfigAuth {
  authNone("AUTH_NONE"),
  authMutualTls("AUTH_MUTUAL_TLS");

  const IstioConfigAuth(this.wireValue);
  final String wireValue;

  static IstioConfigAuth fromValue(String value) {
    for (final item in IstioConfigAuth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IstioConfigAuth value: $value');
  }
}
