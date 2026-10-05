import 'package:pulumi/pulumi.dart' as pulumi;

/// How to handle well known App Association files.
enum ServingConfigAppAssociation implements pulumi.PulumiEnum<String> {
  auto("AUTO"),
  none("NONE");

  const ServingConfigAppAssociation(this.wireValue);
  @override
  final String wireValue;

  static ServingConfigAppAssociation fromValue(String value) {
    for (final item in ServingConfigAppAssociation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigAppAssociation value: $value');
  }
}
