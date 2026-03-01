// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapsupported_sku_response.dart';

/// Result data returned by getSapVirtualInstanceInvokeSapSupportedSku.
class GetSapVirtualInstanceInvokeSapSupportedSkuResult {
  /// Gets the list of SAP supported SKUs.
  final List<SAPSupportedSkuResponse>? supportedSkus;

  /// Creates a new [GetSapVirtualInstanceInvokeSapSupportedSkuResult].
  /// [supportedSkus] Gets the list of SAP supported SKUs.
  GetSapVirtualInstanceInvokeSapSupportedSkuResult({
    this.supportedSkus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedSkus': ?supportedSkus == null ? null : pulumi.Input.encodeList<SAPSupportedSkuResponse, Map<String, dynamic>>(supportedSkus!, (value) => value.toMap()),
    };
  }

  factory GetSapVirtualInstanceInvokeSapSupportedSkuResult.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeSapSupportedSkuResult(
      supportedSkus: map['supportedSkus'] == null ? null : pulumi.Input.decodeList<SAPSupportedSkuResponse>(map['supportedSkus'], (value) => SAPSupportedSkuResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

