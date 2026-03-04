// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Required information for every language.
class CommonLanguageSettingsResponse {
  /// The destination where API teams want this client library to be published.
  final pulumi.Input<List<String>> destinations;

  /// Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  final pulumi.Input<String> referenceDocsUri;

  /// Creates a new [CommonLanguageSettingsResponse].
  /// [destinations] The destination where API teams want this client library to be published.
  /// [referenceDocsUri] Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  CommonLanguageSettingsResponse({
    required this.destinations,
    required this.referenceDocsUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': destinations,
      'referenceDocsUri': referenceDocsUri,
    };
  }

  factory CommonLanguageSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CommonLanguageSettingsResponse(
      destinations: pulumi.Input.fromValue(
        (map['destinations'] as List).cast<String>(),
      ),
      referenceDocsUri: pulumi.Input.fromValue(
        map['referenceDocsUri'] as String,
      ),
    );
  }
}
