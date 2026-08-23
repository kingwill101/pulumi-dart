// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a policy of only allowing regions by explicitly adding them to an allowlist.
class GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse {
  /// Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final pulumi.Input<List<String>> allowedRegions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse].
  /// [allowedRegions] Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  const GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse({
    required this.allowedRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRegions': allowedRegions,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AllowlistOnlyResponse(
      allowedRegions: pulumi.Input.fromValue((map['allowedRegions'] as List).cast<String>()),
    );
  }
}
