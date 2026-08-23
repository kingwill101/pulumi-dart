// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog {
  /// The Nessie branch.
  final pulumi.Input<String> branch;
  /// The Nessie uri.
  final pulumi.Input<String> uri;

  /// Creates a new [GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog].
  /// [branch] The Nessie branch.
  /// [uri] The Nessie uri.
  const GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog({
    required this.branch,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'uri': uri,
    };
  }

  factory GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesIcebergConnectionPropertiesCatalogNessieIcebergCatalog(
      branch: pulumi.Input.fromValue(map['branch'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
