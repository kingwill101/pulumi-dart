/// The signed request scope.
enum SignedRequestScope {
  resourceUri("ResourceUri"),
  endpoint("Endpoint");

  const SignedRequestScope(this.wireValue);
  final String wireValue;

  static SignedRequestScope fromValue(String value) {
    for (final item in SignedRequestScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SignedRequestScope value: $value');
  }
}

