// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scan_config_error_code.dart';

/// Defines a custom error message used by CreateScanConfig and UpdateScanConfig APIs when scan configuration validation fails. It is also reported as part of a ScanRunErrorTrace message if scan validation fails due to a scan configuration error.
class ScanConfigError {
  /// Indicates the reason code for a configuration failure.
  final pulumi.Input<ScanConfigErrorCode>? code;
  /// Indicates the full name of the ScanConfig field that triggers this error, for example "scan_config.max_qps". This field is provided for troubleshooting purposes only and its actual value can change in the future.
  final pulumi.Input<String>? fieldName;

  /// Creates a new [ScanConfigError].
  /// [code] Indicates the reason code for a configuration failure.
  /// [fieldName] Indicates the full name of the ScanConfig field that triggers this error, for example "scan_config.max_qps". This field is provided for troubleshooting purposes only and its actual value can change in the future.
  ScanConfigError({
    this.code,
    this.fieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<ScanConfigErrorCode, String>(code, (value) => value.value),
      'fieldName': ?fieldName,
    };
  }

  factory ScanConfigError.fromMap(Map<String, dynamic> map) {
    return ScanConfigError(
      code: map['code'] == null ? null : (ScanConfigErrorCode.fromValue(map['code'] as String)).input(),
      fieldName: map['fieldName'] == null ? null : (map['fieldName'] as String).input(),
    );
  }
}

