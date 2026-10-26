import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of how to aggregate answers.
enum GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType implements pulumi.PulumiEnum<String> {
  stringAggregationTypeUnspecified("STRING_AGGREGATION_TYPE_UNSPECIFIED"),
  majorityVote("MAJORITY_VOTE"),
  unanimousVote("UNANIMOUS_VOTE"),
  noAggregation("NO_AGGREGATION");

  const GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType fromValue(String value) {
    for (final item in GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType value: $value');
  }
}
