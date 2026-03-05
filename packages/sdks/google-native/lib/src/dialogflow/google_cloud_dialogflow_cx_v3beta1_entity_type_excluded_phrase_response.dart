// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An excluded entity phrase that should not be matched.
class GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse {
  /// The word or phrase to be excluded.
  final pulumi.Input<String> value;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse].
  /// [value] The word or phrase to be excluded.
  GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

