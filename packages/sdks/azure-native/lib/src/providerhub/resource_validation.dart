import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource validation.
enum ResourceValidation implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  reservedWords("ReservedWords"),
  profaneWords("ProfaneWords");

  const ResourceValidation(this.wireValue);
  @override
  final String wireValue;

  static ResourceValidation fromValue(String value) {
    for (final item in ResourceValidation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceValidation value: $value');
  }
}
