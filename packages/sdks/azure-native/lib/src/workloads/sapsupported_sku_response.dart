// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SAP supported SKU.
class SAPSupportedSkuResponse {
  /// True if the Sku is certified for App server in the SAP system.
  final pulumi.Input<bool>? isAppServerCertified;
  /// True if the Sku is certified for Database server in the SAP system.
  final pulumi.Input<bool>? isDatabaseCertified;
  /// The VM Sku.
  final pulumi.Input<String>? vmSku;

  /// Creates a new [SAPSupportedSkuResponse].
  /// [isAppServerCertified] True if the Sku is certified for App server in the SAP system.
  /// [isDatabaseCertified] True if the Sku is certified for Database server in the SAP system.
  /// [vmSku] The VM Sku.
  SAPSupportedSkuResponse({
    this.isAppServerCertified,
    this.isDatabaseCertified,
    this.vmSku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isAppServerCertified': ?isAppServerCertified,
      'isDatabaseCertified': ?isDatabaseCertified,
      'vmSku': ?vmSku,
    };
  }

  factory SAPSupportedSkuResponse.fromMap(Map<String, dynamic> map) {
    return SAPSupportedSkuResponse(
      isAppServerCertified: map['isAppServerCertified'] == null ? null : (map['isAppServerCertified'] as bool).input(),
      isDatabaseCertified: map['isDatabaseCertified'] == null ? null : (map['isDatabaseCertified'] as bool).input(),
      vmSku: map['vmSku'] == null ? null : (map['vmSku'] as String).input(),
    );
  }
}

