// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This defines the sku conversion status object for asynchronous sku conversions.
class StorageAccountSkuConversionStatusResponse {
  /// This property represents the sku conversion end time.
  final pulumi.Input<String> endTime;
  /// This property indicates the current sku conversion status.
  final pulumi.Input<String> skuConversionStatus;
  /// This property represents the sku conversion start time.
  final pulumi.Input<String> startTime;
  /// This property represents the target sku name to which the account sku is being converted asynchronously.
  final pulumi.Input<String>? targetSkuName;

  /// Creates a new [StorageAccountSkuConversionStatusResponse].
  /// [endTime] This property represents the sku conversion end time.
  /// [skuConversionStatus] This property indicates the current sku conversion status.
  /// [startTime] This property represents the sku conversion start time.
  /// [targetSkuName] This property represents the target sku name to which the account sku is being converted asynchronously.
  StorageAccountSkuConversionStatusResponse({
    required this.endTime,
    required this.skuConversionStatus,
    required this.startTime,
    this.targetSkuName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'skuConversionStatus': skuConversionStatus,
      'startTime': startTime,
      'targetSkuName': ?targetSkuName,
    };
  }

  factory StorageAccountSkuConversionStatusResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountSkuConversionStatusResponse(
      endTime: (map['endTime'] as String).input(),
      skuConversionStatus: (map['skuConversionStatus'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      targetSkuName: map['targetSkuName'] == null ? null : (map['targetSkuName'] as String).input(),
    );
  }
}

