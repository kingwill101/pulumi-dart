// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_policy_warnings_item_data_item_response_compute_beta.dart';

class RegionSslPolicyWarningsItemResponseComputeBeta {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final pulumi.Input<String> code;
  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final pulumi.Input<List<RegionSslPolicyWarningsItemDataItemResponseComputeBeta>> data;
  /// A human-readable description of the warning code.
  final pulumi.Input<String> message;

  /// Creates a new [RegionSslPolicyWarningsItemResponseComputeBeta].
  /// [code] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  /// [data] Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  /// [message] A human-readable description of the warning code.
  const RegionSslPolicyWarningsItemResponseComputeBeta({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'data': pulumi.Input.mapInputValue<List<RegionSslPolicyWarningsItemDataItemResponseComputeBeta>, List<Map<String, dynamic>>>(data, (value) => pulumi.Input.encodeList<RegionSslPolicyWarningsItemDataItemResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory RegionSslPolicyWarningsItemResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RegionSslPolicyWarningsItemResponseComputeBeta(
      code: pulumi.Input.fromValue(map['code'] as String),
      data: pulumi.Input.fromValue(pulumi.Input.decodeList<RegionSslPolicyWarningsItemDataItemResponseComputeBeta>(map['data']!, (value) => RegionSslPolicyWarningsItemDataItemResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

