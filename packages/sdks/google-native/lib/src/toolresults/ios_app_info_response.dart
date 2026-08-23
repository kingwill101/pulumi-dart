// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// iOS app information
class IosAppInfoResponse {
  /// The name of the app. Required
  final pulumi.Input<String> name;

  /// Creates a new [IosAppInfoResponse].
  /// [name] The name of the app. Required
  const IosAppInfoResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory IosAppInfoResponse.fromMap(Map<String, dynamic> map) {
    return IosAppInfoResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
