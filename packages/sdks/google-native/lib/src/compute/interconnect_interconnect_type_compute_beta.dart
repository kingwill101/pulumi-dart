/// Type of interconnect, which can take one of the following values: - PARTNER: A partner-managed interconnection shared between customers though a partner. - DEDICATED: A dedicated physical interconnection with the customer. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
enum InterconnectInterconnectTypeComputeBeta {
  dedicated("DEDICATED"),
  itPrivate("IT_PRIVATE"),
  partner("PARTNER");

  const InterconnectInterconnectTypeComputeBeta(this.wireValue);
  final String wireValue;

  static InterconnectInterconnectTypeComputeBeta fromValue(String value) {
    for (final item in InterconnectInterconnectTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectInterconnectTypeComputeBeta value: $value');
  }
}

