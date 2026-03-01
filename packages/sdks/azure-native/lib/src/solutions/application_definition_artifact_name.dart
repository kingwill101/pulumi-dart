/// The managed application definition artifact name.
enum ApplicationDefinitionArtifactName {
  valueNotSpecified("NotSpecified"),
  valueApplicationResourceTemplate("ApplicationResourceTemplate"),
  valueCreateUiDefinition("CreateUiDefinition"),
  valueMainTemplateParameters("MainTemplateParameters");

  const ApplicationDefinitionArtifactName(this.value);
  final String value;

  static ApplicationDefinitionArtifactName fromValue(String value) {
    for (final item in ApplicationDefinitionArtifactName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationDefinitionArtifactName value: $value');
  }
}

