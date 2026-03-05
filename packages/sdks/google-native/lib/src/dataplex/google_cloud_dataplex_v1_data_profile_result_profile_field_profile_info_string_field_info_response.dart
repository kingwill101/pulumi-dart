// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The profile information for a string type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse {
  /// Average length of non-null values in the scanned data.
  final pulumi.Input<double> averageLength;
  /// Maximum length of non-null values in the scanned data.
  final pulumi.Input<String> maxLength;
  /// Minimum length of non-null values in the scanned data.
  final pulumi.Input<String> minLength;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse].
  /// [averageLength] Average length of non-null values in the scanned data.
  /// [maxLength] Maximum length of non-null values in the scanned data.
  /// [minLength] Minimum length of non-null values in the scanned data.
  GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse({
    required this.averageLength,
    required this.maxLength,
    required this.minLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageLength': averageLength,
      'maxLength': maxLength,
      'minLength': minLength,
    };
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfoResponse(
      averageLength: pulumi.Input.fromValue(map['averageLength'] as double),
      maxLength: pulumi.Input.fromValue(map['maxLength'] as String),
      minLength: pulumi.Input.fromValue(map['minLength'] as String),
    );
  }
}

