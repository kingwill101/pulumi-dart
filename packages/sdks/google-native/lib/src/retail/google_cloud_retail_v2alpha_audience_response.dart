// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An intended audience of the Product for whom it's sold.
class GoogleCloudRetailV2alphaAudienceResponse {
  /// The age groups of the audience. Strongly encouraged to use the standard values: "newborn" (up to 3 months old), "infant" (3–12 months old), "toddler" (1–5 years old), "kids" (5–13 years old), "adult" (typically teens or older). At most 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [age_group](https://support.google.com/merchants/answer/6324463). Schema.org property [Product.audience.suggestedMinAge](https://schema.org/suggestedMinAge) and [Product.audience.suggestedMaxAge](https://schema.org/suggestedMaxAge).
  final pulumi.Input<List<String>> ageGroups;
  /// The genders of the audience. Strongly encouraged to use the standard values: "male", "female", "unisex". At most 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [gender](https://support.google.com/merchants/answer/6324479). Schema.org property [Product.audience.suggestedGender](https://schema.org/suggestedGender).
  final pulumi.Input<List<String>> genders;

  /// Creates a new [GoogleCloudRetailV2alphaAudienceResponse].
  /// [ageGroups] The age groups of the audience. Strongly encouraged to use the standard values: "newborn" (up to 3 months old), "infant" (3–12 months old), "toddler" (1–5 years old), "kids" (5–13 years old), "adult" (typically teens or older). At most 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [age_group](https://support.google.com/merchants/answer/6324463). Schema.org property [Product.audience.suggestedMinAge](https://schema.org/suggestedMinAge) and [Product.audience.suggestedMaxAge](https://schema.org/suggestedMaxAge).
  /// [genders] The genders of the audience. Strongly encouraged to use the standard values: "male", "female", "unisex". At most 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [gender](https://support.google.com/merchants/answer/6324479). Schema.org property [Product.audience.suggestedGender](https://schema.org/suggestedGender).
  const GoogleCloudRetailV2alphaAudienceResponse({
    required this.ageGroups,
    required this.genders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ageGroups': ageGroups,
      'genders': genders,
    };
  }

  factory GoogleCloudRetailV2alphaAudienceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaAudienceResponse(
      ageGroups: pulumi.Input.fromValue((map['ageGroups'] as List).cast<String>()),
      genders: pulumi.Input.fromValue((map['genders'] as List).cast<String>()),
    );
  }
}

