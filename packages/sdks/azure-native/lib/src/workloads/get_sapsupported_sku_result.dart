// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapsupported_sku_response.dart';

/// Result data returned by getSAPSupportedSku.
class GetSAPSupportedSkuResult {
  /// Gets the list of SAP supported SKUs.
  final List<SAPSupportedSkuResponse>? supportedSkus;

  /// Creates a new [GetSAPSupportedSkuResult].
  /// [supportedSkus] Gets the list of SAP supported SKUs.
  GetSAPSupportedSkuResult({
    this.supportedSkus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedSkus': ?(() { final guardedValue = supportedSkus; if (guardedValue == null) return null; return pulumi.Input.encodeList<SAPSupportedSkuResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSAPSupportedSkuResult.fromMap(Map<String, dynamic> map) {
    return GetSAPSupportedSkuResult(
      supportedSkus: (() { final guardedValue = map['supportedSkus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SAPSupportedSkuResponse>(guardedValue, (value) => SAPSupportedSkuResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

