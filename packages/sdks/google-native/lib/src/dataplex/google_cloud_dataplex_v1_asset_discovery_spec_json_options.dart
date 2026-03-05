// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe JSON data format.
class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions {
  /// Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  final pulumi.Input<bool>? disableTypeInference;
  /// Optional. The character encoding of the data. The default is UTF-8.
  final pulumi.Input<String>? encoding;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions].
  /// [disableTypeInference] Optional. Whether to disable the inference of data type for Json data. If true, all columns will be registered as their primitive types (strings, number or boolean).
  /// [encoding] Optional. The character encoding of the data. The default is UTF-8.
  GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions({
    this.disableTypeInference,
    this.encoding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableTypeInference': ?disableTypeInference,
      'encoding': ?encoding,
    };
  }

  factory GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions(
      disableTypeInference: (() { final guardedValue = map['disableTypeInference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

