// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a custom error message used by CreateScanConfig and UpdateScanConfig APIs when scan configuration validation fails. It is also reported as part of a ScanRunErrorTrace message if scan validation fails due to a scan configuration error.
class ScanConfigErrorResponse {
  /// Indicates the reason code for a configuration failure.
  final pulumi.Input<String> code;
  /// Indicates the full name of the ScanConfig field that triggers this error, for example "scan_config.max_qps". This field is provided for troubleshooting purposes only and its actual value can change in the future.
  final pulumi.Input<String> fieldName;

  /// Creates a new [ScanConfigErrorResponse].
  /// [code] Indicates the reason code for a configuration failure.
  /// [fieldName] Indicates the full name of the ScanConfig field that triggers this error, for example "scan_config.max_qps". This field is provided for troubleshooting purposes only and its actual value can change in the future.
  const ScanConfigErrorResponse({
    required this.code,
    required this.fieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'fieldName': fieldName,
    };
  }

  factory ScanConfigErrorResponse.fromMap(Map<String, dynamic> map) {
    return ScanConfigErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
    );
  }
}

