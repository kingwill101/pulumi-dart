// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A dimension captures data quality intent about a defined subset of the rules specified.
class GoogleCloudDataplexV1DataQualityDimensionResponse {
  /// The dimension name a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDataplexV1DataQualityDimensionResponse].
  /// [name] The dimension name a rule belongs to. Supported dimensions are "COMPLETENESS", "ACCURACY", "CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
  GoogleCloudDataplexV1DataQualityDimensionResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GoogleCloudDataplexV1DataQualityDimensionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataQualityDimensionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
