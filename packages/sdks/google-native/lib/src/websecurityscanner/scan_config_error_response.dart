// ignore_for_file: unused_element, unnecessary_cast


/// Defines a custom error message used by CreateScanConfig and UpdateScanConfig APIs when scan configuration validation fails. It is also reported as part of a ScanRunErrorTrace message if scan validation fails due to a scan configuration error.
class ScanConfigErrorResponse {
  /// Indicates the reason code for a configuration failure.
  final String code;
  /// Indicates the full name of the ScanConfig field that triggers this error, for example "scan_config.max_qps". This field is provided for troubleshooting purposes only and its actual value can change in the future.
  final String fieldName;

  /// Creates a new [ScanConfigErrorResponse].
  /// [code] Indicates the reason code for a configuration failure.
  /// [fieldName] Indicates the full name of the ScanConfig field that triggers this error, for example "scan_config.max_qps". This field is provided for troubleshooting purposes only and its actual value can change in the future.
  ScanConfigErrorResponse({
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
      code: map['code'] as String,
      fieldName: map['fieldName'] as String,
    );
  }
}

