// ignore_for_file: unused_element, unnecessary_cast


/// Describes fields that are relavent to the revocation of a Certificate.
class RevocationDetailsResponse {
  /// Indicates why a Certificate was revoked.
  final String revocationState;
  /// The time at which this Certificate was revoked.
  final String revocationTime;

  /// Creates a new [RevocationDetailsResponse].
  /// [revocationState] Indicates why a Certificate was revoked.
  /// [revocationTime] The time at which this Certificate was revoked.
  RevocationDetailsResponse({
    required this.revocationState,
    required this.revocationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revocationState': revocationState,
      'revocationTime': revocationTime,
    };
  }

  factory RevocationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RevocationDetailsResponse(
      revocationState: map['revocationState'] as String,
      revocationTime: map['revocationTime'] as String,
    );
  }
}

