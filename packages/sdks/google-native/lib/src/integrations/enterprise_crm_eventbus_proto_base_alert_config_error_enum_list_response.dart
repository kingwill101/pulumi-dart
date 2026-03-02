// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of error enums for alerts.
class EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse {
  final pulumi.Input<List<String>> enumStrings;
  final pulumi.Input<String> filterType;

  /// Creates a new [EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse].
  /// [enumStrings] Required.
  /// [filterType] Required.
  EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse({
    required this.enumStrings,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enumStrings': enumStrings,
      'filterType': filterType,
    };
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumListResponse(
      enumStrings: ((map['enumStrings'] as List).cast<String>()).input(),
      filterType: (map['filterType'] as String).input(),
    );
  }
}

