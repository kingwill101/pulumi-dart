// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_suggestion_feature_type.dart';

/// The type of Human Agent Assistant API suggestion to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.
class GoogleCloudDialogflowV2SuggestionFeature {
  /// Type of Human Agent Assistant API feature to request.
  final pulumi.Input<GoogleCloudDialogflowV2SuggestionFeatureType>? type;

  /// Creates a new [GoogleCloudDialogflowV2SuggestionFeature].
  /// [type] Type of Human Agent Assistant API feature to request.
  GoogleCloudDialogflowV2SuggestionFeature({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2SuggestionFeatureType, String>(type, (value) => value.value),
    };
  }

  factory GoogleCloudDialogflowV2SuggestionFeature.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SuggestionFeature(
      type: map['type'] == null ? null : (GoogleCloudDialogflowV2SuggestionFeatureType.fromValue(map['type'] as String)).input(),
    );
  }
}

