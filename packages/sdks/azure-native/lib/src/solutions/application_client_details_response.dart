// ignore_for_file: unused_element, unnecessary_cast


/// The application client details to track the entity creating/updating the managed app resource.
class ApplicationClientDetailsResponse {
  /// The client application Id.
  final String? applicationId;
  /// The client Oid.
  final String? oid;
  /// The client Puid
  final String? puid;

  /// Creates a new [ApplicationClientDetailsResponse].
  /// [applicationId] The client application Id.
  /// [oid] The client Oid.
  /// [puid] The client Puid
  ApplicationClientDetailsResponse({
    this.applicationId,
    this.oid,
    this.puid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'oid': ?oid,
      'puid': ?puid,
    };
  }

  factory ApplicationClientDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationClientDetailsResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      oid: map['oid'] == null ? null : map['oid'] as String,
      puid: map['puid'] == null ? null : map['puid'] as String,
    );
  }
}

