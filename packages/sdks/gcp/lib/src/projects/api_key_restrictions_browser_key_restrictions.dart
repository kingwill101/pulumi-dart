// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiKeyRestrictionsBrowserKeyRestrictions {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final pulumi.Input<List<String>> allowedReferrers;

  /// Creates a new [ApiKeyRestrictionsBrowserKeyRestrictions].
  /// [allowedReferrers] A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  ApiKeyRestrictionsBrowserKeyRestrictions({
    required this.allowedReferrers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedReferrers': allowedReferrers,
    };
  }

  factory ApiKeyRestrictionsBrowserKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsBrowserKeyRestrictions(
      allowedReferrers: pulumi.Input.fromValue((map['allowedReferrers'] as List).cast<String>()),
    );
  }
}

