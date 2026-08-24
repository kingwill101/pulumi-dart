// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContentScanning.
class GetContentScanningResult {
  /// Defines the last modification date (ISO 8601) of the Content Scanning status.
  final String? modified;
  /// Defines the status of Content Scanning.
  final String? value;
  /// Defines an identifier.
  final String? zoneId;

  /// Creates a new [GetContentScanningResult].
  /// [modified] Defines the last modification date (ISO 8601) of the Content Scanning status.
  /// [value] Defines the status of Content Scanning.
  /// [zoneId] Defines an identifier.
  const GetContentScanningResult({
    this.modified,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modified': ?modified,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetContentScanningResult.fromMap(Map<String, dynamic> map) {
    return GetContentScanningResult(
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
