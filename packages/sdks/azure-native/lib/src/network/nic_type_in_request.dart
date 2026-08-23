/// NIC type. This should be either PublicNic or PrivateNic.
enum NicTypeInRequest {
  valuePublicNic("PublicNic"),
  valuePrivateNic("PrivateNic");

  const NicTypeInRequest(this.wireValue);
  final String wireValue;

  static NicTypeInRequest fromValue(String value) {
    for (final item in NicTypeInRequest.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NicTypeInRequest value: $value');
  }
}
