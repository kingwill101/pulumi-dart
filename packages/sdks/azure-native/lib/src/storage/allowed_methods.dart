import 'package:pulumi/pulumi.dart' as pulumi;

enum AllowedMethods implements pulumi.PulumiEnum<String> {
  valueDELETE("DELETE"),
  valueGET("GET"),
  valueHEAD("HEAD"),
  valueMERGE("MERGE"),
  valuePOST("POST"),
  valueOPTIONS("OPTIONS"),
  valuePUT("PUT"),
  valuePATCH("PATCH"),
  valueCONNECT("CONNECT"),
  valueTRACE("TRACE");

  const AllowedMethods(this.wireValue);
  @override
  final String wireValue;

  static AllowedMethods fromValue(String value) {
    for (final item in AllowedMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedMethods value: $value');
  }
}
