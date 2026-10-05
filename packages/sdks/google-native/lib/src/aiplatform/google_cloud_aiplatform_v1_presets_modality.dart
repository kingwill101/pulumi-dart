import 'package:pulumi/pulumi.dart' as pulumi;

/// The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
enum GoogleCloudAiplatformV1PresetsModality implements pulumi.PulumiEnum<String> {
  modalityUnspecified("MODALITY_UNSPECIFIED"),
  image("IMAGE"),
  text("TEXT"),
  tabular("TABULAR");

  const GoogleCloudAiplatformV1PresetsModality(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1PresetsModality fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1PresetsModality.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1PresetsModality value: $value');
  }
}
