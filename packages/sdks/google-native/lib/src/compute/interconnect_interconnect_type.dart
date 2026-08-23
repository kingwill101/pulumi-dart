/// Type of interconnect, which can take one of the following values: - PARTNER: A partner-managed interconnection shared between customers though a partner. - DEDICATED: A dedicated physical interconnection with the customer. Note that a value IT_PRIVATE has been deprecated in favor of DEDICATED.
enum InterconnectInterconnectType {
  dedicated("DEDICATED"),
  itPrivate("IT_PRIVATE"),
  partner("PARTNER");

  const InterconnectInterconnectType(this.wireValue);
  final String wireValue;

  static InterconnectInterconnectType fromValue(String value) {
    for (final item in InterconnectInterconnectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectInterconnectType value: $value');
  }
}
