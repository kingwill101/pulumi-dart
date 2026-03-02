// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string_response.dart';

/// Catalog information for managed dedicated integration runtime.
class IntegrationRuntimeSsisCatalogInfoResponse {
  /// The password of the administrator user account of the catalog database.
  final pulumi.Input<SecureStringResponse>? catalogAdminPassword;
  /// The administrator user name of catalog database.
  final pulumi.Input<String>? catalogAdminUserName;
  /// The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
  final pulumi.Input<String>? catalogPricingTier;
  /// The catalog database server URL.
  final pulumi.Input<String>? catalogServerEndpoint;

  /// Creates a new [IntegrationRuntimeSsisCatalogInfoResponse].
  /// [catalogAdminPassword] The password of the administrator user account of the catalog database.
  /// [catalogAdminUserName] The administrator user name of catalog database.
  /// [catalogPricingTier] The pricing tier for the catalog database. The valid values could be found in https://azure.microsoft.com/en-us/pricing/details/sql-database/
  /// [catalogServerEndpoint] The catalog database server URL.
  IntegrationRuntimeSsisCatalogInfoResponse({
    this.catalogAdminPassword,
    this.catalogAdminUserName,
    this.catalogPricingTier,
    this.catalogServerEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogAdminPassword': ?pulumi.Input.mapOptionalInputValue<SecureStringResponse, Map<String, dynamic>>(catalogAdminPassword, (value) => value.toMap()),
      'catalogAdminUserName': ?catalogAdminUserName,
      'catalogPricingTier': ?catalogPricingTier,
      'catalogServerEndpoint': ?catalogServerEndpoint,
    };
  }

  factory IntegrationRuntimeSsisCatalogInfoResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisCatalogInfoResponse(
      catalogAdminPassword: map['catalogAdminPassword'] == null ? null : (SecureStringResponse.fromMap((map['catalogAdminPassword']! as Map).cast<String, dynamic>())).input(),
      catalogAdminUserName: map['catalogAdminUserName'] == null ? null : (map['catalogAdminUserName']! as String).input(),
      catalogPricingTier: map['catalogPricingTier'] == null ? null : (map['catalogPricingTier']! as String).input(),
      catalogServerEndpoint: map['catalogServerEndpoint'] == null ? null : (map['catalogServerEndpoint']! as String).input(),
    );
  }
}

