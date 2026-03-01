// ignore_for_file: unused_element, unnecessary_cast


/// Message describing a MC Source of type Guest OS Scan.
class GuestOsScanResponse {
  /// reference to the corresponding Guest OS Scan in MC Source.
  final String coreSource;

  /// Creates a new [GuestOsScanResponse].
  /// [coreSource] reference to the corresponding Guest OS Scan in MC Source.
  GuestOsScanResponse({
    required this.coreSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreSource': coreSource,
    };
  }

  factory GuestOsScanResponse.fromMap(Map<String, dynamic> map) {
    return GuestOsScanResponse(
      coreSource: map['coreSource'] as String,
    );
  }
}

