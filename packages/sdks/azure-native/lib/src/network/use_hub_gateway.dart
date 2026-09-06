import 'package:pulumi/pulumi.dart' as pulumi;

/// Flag if need to use hub gateway.
enum UseHubGateway implements pulumi.PulumiEnum<String> {
  valueFalse("False"),
  valueTrue("True");

  const UseHubGateway(this.wireValue);
  @override
  final String wireValue;

  static UseHubGateway fromValue(String value) {
    for (final item in UseHubGateway.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UseHubGateway value: $value');
  }
}
