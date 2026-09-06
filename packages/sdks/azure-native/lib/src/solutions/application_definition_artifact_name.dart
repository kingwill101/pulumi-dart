import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed application definition artifact name.
enum ApplicationDefinitionArtifactName implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueApplicationResourceTemplate("ApplicationResourceTemplate"),
  valueCreateUiDefinition("CreateUiDefinition"),
  valueMainTemplateParameters("MainTemplateParameters");

  const ApplicationDefinitionArtifactName(this.wireValue);
  @override
  final String wireValue;

  static ApplicationDefinitionArtifactName fromValue(String value) {
    for (final item in ApplicationDefinitionArtifactName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationDefinitionArtifactName value: $value');
  }
}
