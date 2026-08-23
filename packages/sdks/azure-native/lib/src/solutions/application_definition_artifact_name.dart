/// The managed application definition artifact name.
enum ApplicationDefinitionArtifactName {
  valueNotSpecified("NotSpecified"),
  valueApplicationResourceTemplate("ApplicationResourceTemplate"),
  valueCreateUiDefinition("CreateUiDefinition"),
  valueMainTemplateParameters("MainTemplateParameters");

  const ApplicationDefinitionArtifactName(this.wireValue);
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
