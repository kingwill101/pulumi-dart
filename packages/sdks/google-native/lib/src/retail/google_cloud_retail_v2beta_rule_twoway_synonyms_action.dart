// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Creates a set of terms that will be treated as synonyms of each other. Example: synonyms of "sneakers" and "shoes": * "sneakers" will use a synonym of "shoes". * "shoes" will use a synonym of "sneakers".
class GoogleCloudRetailV2betaRuleTwowaySynonymsAction {
  /// Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms.
  final pulumi.Input<List<String>>? synonyms;

  /// Creates a new [GoogleCloudRetailV2betaRuleTwowaySynonymsAction].
  /// [synonyms] Defines a set of synonyms. Can specify up to 100 synonyms. Must specify at least 2 synonyms.
  GoogleCloudRetailV2betaRuleTwowaySynonymsAction({this.synonyms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'synonyms': ?synonyms};
  }

  factory GoogleCloudRetailV2betaRuleTwowaySynonymsAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaRuleTwowaySynonymsAction(
      synonyms: (() {
        final guardedValue = map['synonyms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
