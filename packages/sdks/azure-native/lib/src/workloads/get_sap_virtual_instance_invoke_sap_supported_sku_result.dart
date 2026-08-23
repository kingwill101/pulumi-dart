// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapsupported_sku_response.dart';

/// Result data returned by getSapVirtualInstanceInvokeSapSupportedSku.
class GetSapVirtualInstanceInvokeSapSupportedSkuResult {
  /// Gets the list of SAP supported SKUs.
  final List<SAPSupportedSkuResponse>? supportedSkus;

  /// Creates a new [GetSapVirtualInstanceInvokeSapSupportedSkuResult].
  /// [supportedSkus] Gets the list of SAP supported SKUs.
  const GetSapVirtualInstanceInvokeSapSupportedSkuResult({
    this.supportedSkus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedSkus': ?(() { final guardedValue = supportedSkus; if (guardedValue == null) return null; return pulumi.Input.encodeList<SAPSupportedSkuResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSapVirtualInstanceInvokeSapSupportedSkuResult.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeSapSupportedSkuResult(
      supportedSkus: (() { final guardedValue = map['supportedSkus']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SAPSupportedSkuResponse>(guardedValue, (value) => SAPSupportedSkuResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
