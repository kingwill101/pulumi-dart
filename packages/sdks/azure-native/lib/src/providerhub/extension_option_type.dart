import 'package:pulumi/pulumi.dart' as pulumi;

enum ExtensionOptionType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  doNotMergeExistingReadOnlyAndSecretProperties("DoNotMergeExistingReadOnlyAndSecretProperties"),
  includeInternalMetadata("IncludeInternalMetadata");

  const ExtensionOptionType(this.wireValue);
  @override
  final String wireValue;

  static ExtensionOptionType fromValue(String value) {
    for (final item in ExtensionOptionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtensionOptionType value: $value');
  }
}
