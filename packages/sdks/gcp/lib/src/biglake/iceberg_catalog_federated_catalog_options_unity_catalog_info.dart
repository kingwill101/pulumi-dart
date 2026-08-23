// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo {
  /// The name of the catalog within the Unity Catalog instance.
  final pulumi.Input<String> catalogName;
  /// The Databricks workspace instance name.
  final pulumi.Input<String> instanceName;
  /// The application ID of the Databricks service principal for OIDC authentication.
  final pulumi.Input<String>? servicePrincipalApplicationId;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo].
  /// [catalogName] The name of the catalog within the Unity Catalog instance.
  /// [instanceName] The Databricks workspace instance name.
  /// [servicePrincipalApplicationId] The application ID of the Databricks service principal for OIDC authentication.
  const IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo({
    required this.catalogName,
    required this.instanceName,
    this.servicePrincipalApplicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'instanceName': instanceName,
      'servicePrincipalApplicationId': ?servicePrincipalApplicationId,
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsUnityCatalogInfo(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      servicePrincipalApplicationId: (() { final guardedValue = map['servicePrincipalApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
