// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Creates a set of terms that will be treated as synonyms of each other. Example: synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym of "shoes". * "shoes" will use a synonym of "sneakers".
class GoogleCloudRetailV2RuleTwowaySynonymsActionResponse {
  /// Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms.
  final pulumi.Input<List<String>> synonyms;

  /// Creates a new [GoogleCloudRetailV2RuleTwowaySynonymsActionResponse].
  /// [synonyms] Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms.
  const GoogleCloudRetailV2RuleTwowaySynonymsActionResponse({
    required this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'synonyms': synonyms,
    };
  }

  factory GoogleCloudRetailV2RuleTwowaySynonymsActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleTwowaySynonymsActionResponse(
      synonyms: pulumi.Input.fromValue((map['synonyms'] as List).cast<String>()),
    );
  }
}

