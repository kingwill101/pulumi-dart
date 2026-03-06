// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a policy of allowing every region by default and adding disallowed regions to a disallow list.
class GoogleCloudIdentitytoolkitAdminV2AllowByDefault {
  /// Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  final pulumi.Input<List<String>>? disallowedRegions;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2AllowByDefault].
  /// [disallowedRegions] Two letter unicode region codes to disallow as defined by https://cldr.unicode.org/ The full list of these region codes is here: https://github.com/unicode-cldr/cldr-localenames-full/blob/master/main/en/territories.json
  const GoogleCloudIdentitytoolkitAdminV2AllowByDefault({
    this.disallowedRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedRegions': ?disallowedRegions,
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2AllowByDefault.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2AllowByDefault(
      disallowedRegions: (() { final guardedValue = map['disallowedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

