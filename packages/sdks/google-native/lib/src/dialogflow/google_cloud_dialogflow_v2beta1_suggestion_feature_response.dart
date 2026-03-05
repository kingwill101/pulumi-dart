// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of Human Agent Assistant API suggestion to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.
class GoogleCloudDialogflowV2beta1SuggestionFeatureResponse {
  /// Type of Human Agent Assistant API feature to request.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDialogflowV2beta1SuggestionFeatureResponse].
  /// [type] Type of Human Agent Assistant API feature to request.
  GoogleCloudDialogflowV2beta1SuggestionFeatureResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GoogleCloudDialogflowV2beta1SuggestionFeatureResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1SuggestionFeatureResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

