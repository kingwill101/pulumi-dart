// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiKeyRestrictionsIosKeyRestrictions {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  final pulumi.Input<List<String>> allowedBundleIds;

  /// Creates a new [ApiKeyRestrictionsIosKeyRestrictions].
  /// [allowedBundleIds] A list of bundle IDs that are allowed when making API calls with this key.
  const ApiKeyRestrictionsIosKeyRestrictions({
    required this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedBundleIds': allowedBundleIds,
    };
  }

  factory ApiKeyRestrictionsIosKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsIosKeyRestrictions(
      allowedBundleIds: pulumi.Input.fromValue((map['allowedBundleIds'] as List).cast<String>()),
    );
  }
}

