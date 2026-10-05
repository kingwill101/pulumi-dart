import 'package:pulumi/pulumi.dart' as pulumi;

/// Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
enum GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium implements pulumi.PulumiEnum<String> {
  mediumUnspecified("MEDIUM_UNSPECIFIED"),
  phoneCall("PHONE_CALL"),
  chat("CHAT");

  const GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium fromValue(String value) {
    for (final item in GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium value: $value');
  }
}
