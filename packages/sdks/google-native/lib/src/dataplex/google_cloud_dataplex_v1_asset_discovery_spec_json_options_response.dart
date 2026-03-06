// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe JSON data format.
class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse {
  /// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  final pulumi.Input<bool> disableTypeInference;
  /// Optional. The character encoding of the data. The default is UTF-8.
  final pulumi.Input<String> encoding;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse].
  /// [disableTypeInference] Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  /// [encoding] Optional. The character encoding of the data. The default is UTF-8.
  const GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse({
    required this.disableTypeInference,
    required this.encoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableTypeInference': disableTypeInference,
      'encoding': encoding,
    };
  }

  factory GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoverySpecJsonOptionsResponse(
      disableTypeInference: pulumi.Input.fromValue(map['disableTypeInference'] as bool),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
    );
  }
}

