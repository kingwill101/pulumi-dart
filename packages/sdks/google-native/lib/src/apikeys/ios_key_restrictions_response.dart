// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The iOS apps that are allowed to use the key.
class IosKeyRestrictionsResponse {
  /// A list of bundle IDs that are allowed when making API calls with this key.
  final pulumi.Input<List<String>> allowedBundleIds;

  /// Creates a new [IosKeyRestrictionsResponse].
  /// [allowedBundleIds] A list of bundle IDs that are allowed when making API calls with this key.
  IosKeyRestrictionsResponse({
    required this.allowedBundleIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedBundleIds': allowedBundleIds,
    };
  }

  factory IosKeyRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return IosKeyRestrictionsResponse(
      allowedBundleIds: ((map['allowedBundleIds'] as List).cast<String>()).input(),
    );
  }
}

