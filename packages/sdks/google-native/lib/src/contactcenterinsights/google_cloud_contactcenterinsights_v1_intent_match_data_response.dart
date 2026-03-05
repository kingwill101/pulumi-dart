// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data for an intent match. Represents an intent match for a text segment in the conversation. A text segment can be part of a sentence, a complete sentence, or an utterance with multiple sentences.
class GoogleCloudContactcenterinsightsV1IntentMatchDataResponse {
  /// The id of the matched intent. Can be used to retrieve the corresponding intent information.
  final pulumi.Input<String> intentUniqueId;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IntentMatchDataResponse].
  /// [intentUniqueId] The id of the matched intent. Can be used to retrieve the corresponding intent information.
  GoogleCloudContactcenterinsightsV1IntentMatchDataResponse({
    required this.intentUniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intentUniqueId': intentUniqueId,
    };
  }

  factory GoogleCloudContactcenterinsightsV1IntentMatchDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IntentMatchDataResponse(
      intentUniqueId: pulumi.Input.fromValue(map['intentUniqueId'] as String),
    );
  }
}

