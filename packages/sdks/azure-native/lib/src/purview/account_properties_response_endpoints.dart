// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The URIs that are the public endpoints of the account.
class AccountPropertiesResponseEndpoints {
  /// Gets the catalog endpoint.
  final pulumi.Input<String> catalog;
  /// Gets the scan endpoint.
  final pulumi.Input<String> scan;

  /// Creates a new [AccountPropertiesResponseEndpoints].
  /// [catalog] Gets the catalog endpoint.
  /// [scan] Gets the scan endpoint.
  AccountPropertiesResponseEndpoints({
    required this.catalog,
    required this.scan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalog': catalog,
      'scan': scan,
    };
  }

  factory AccountPropertiesResponseEndpoints.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesResponseEndpoints(
      catalog: pulumi.Input.fromValue(map['catalog'] as String),
      scan: pulumi.Input.fromValue(map['scan'] as String),
    );
  }
}

