// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiKeyRestrictionsServerKeyRestrictions {
  /// A list of the caller IP addresses that are allowed to make API calls with this key.
  final pulumi.Input<List<String>> allowedIps;

  /// Creates a new [ApiKeyRestrictionsServerKeyRestrictions].
  /// [allowedIps] A list of the caller IP addresses that are allowed to make API calls with this key.
  const ApiKeyRestrictionsServerKeyRestrictions({
    required this.allowedIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIps': allowedIps,
    };
  }

  factory ApiKeyRestrictionsServerKeyRestrictions.fromMap(Map<String, dynamic> map) {
    return ApiKeyRestrictionsServerKeyRestrictions(
      allowedIps: pulumi.Input.fromValue((map['allowedIps'] as List).cast<String>()),
    );
  }
}

