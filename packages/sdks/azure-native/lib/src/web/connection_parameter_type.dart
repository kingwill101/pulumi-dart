/// Type of the parameter
enum ConnectionParameterType {
  valueString("string"),
  valueSecurestring("securestring"),
  valueSecureobject("secureobject"),
  valueInt("int"),
  valueBool("bool"),
  valueObject("object"),
  valueArray("array"),
  valueOauthSetting("oauthSetting"),
  valueConnection("connection");

  const ConnectionParameterType(this.wireValue);
  final String wireValue;

  static ConnectionParameterType fromValue(String value) {
    for (final item in ConnectionParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionParameterType value: $value');
  }
}

