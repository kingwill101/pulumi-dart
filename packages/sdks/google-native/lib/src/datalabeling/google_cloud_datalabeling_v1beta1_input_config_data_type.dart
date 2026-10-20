import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Data type must be specifed when user tries to import data.
enum GoogleCloudDatalabelingV1beta1InputConfigDataType implements pulumi.PulumiEnum<String> {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  image("IMAGE"),
  video("VIDEO"),
  text("TEXT"),
  generalData("GENERAL_DATA");

  const GoogleCloudDatalabelingV1beta1InputConfigDataType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatalabelingV1beta1InputConfigDataType fromValue(String value) {
    for (final item in GoogleCloudDatalabelingV1beta1InputConfigDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatalabelingV1beta1InputConfigDataType value: $value');
  }
}
