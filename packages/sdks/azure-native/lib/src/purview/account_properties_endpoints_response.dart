// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The URIs that are the public endpoints of the account.
class AccountPropertiesEndpointsResponse {
  /// Gets the catalog endpoint.
  final pulumi.Input<String> catalog;
  /// Gets the scan endpoint.
  final pulumi.Input<String> scan;

  /// Creates a new [AccountPropertiesEndpointsResponse].
  /// [catalog] Gets the catalog endpoint.
  /// [scan] Gets the scan endpoint.
  const AccountPropertiesEndpointsResponse({
    required this.catalog,
    required this.scan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'scan': scan,
    };
  }

  factory AccountPropertiesEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesEndpointsResponse(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      scan: pulumi.Input.fromValue(map['scan'] as String),
    );
  }
}
