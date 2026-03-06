// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a policy of only allowing regions by explicitly adding them to an allowlist.
class GoogleCloudIdentitytoolkitAdminV2AllowlistOnly {
  /// Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final pulumi.Input<List<String>>? allowedRegions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AllowlistOnly].
  /// [allowedRegions] Two letter unicode region codes to allow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  const GoogleCloudIdentitytoolkitAdminV2AllowlistOnly({
    this.allowedRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRegions': ?allowedRegions,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2AllowlistOnly.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AllowlistOnly(
      allowedRegions: (() { final guardedValue = map['allowedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

