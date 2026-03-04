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

  factory StorageAccountSkuConversionStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageAccountSkuConversionStatusResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      skuConversionStatus: pulumi.Input.fromValue(
        map['skuConversionStatus'] as String,
      ),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      targetSkuName: (() {
        final guardedValue = map['targetSkuName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
