// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP referrers (websites) that are allowed to use the key.
class BrowserKeyRestrictionsResponse {
  /// A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  final pulumi.Input<List<String>> allowedReferrers;

  /// Creates a new [BrowserKeyRestrictionsResponse].
  /// [allowedReferrers] A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.
  BrowserKeyRestrictionsResponse({
    required this.allowedReferrers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedReferrers': allowedReferrers,
    };
  }

  factory BrowserKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return BrowserKeyRestrictionsResponse(
      allowedReferrers: pulumi.Input.fromValue((map['allowedReferrers'] as List).cast<String>()),
    );
  }
}

