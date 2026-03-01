// ignore_for_file: unused_element, unnecessary_cast


/// The appliance package support URLs.
class ApplicationPackageSupportUrlsResponse {
  /// The government cloud support URL.
  final String? governmentCloud;
  /// The public azure support URL.
  final String? publicAzure;

  /// Creates a new [ApplicationPackageSupportUrlsResponse].
  /// [governmentCloud] The government cloud support URL.
  /// [publicAzure] The public azure support URL.
  ApplicationPackageSupportUrlsResponse({
    this.governmentCloud,
    this.publicAzure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'governmentCloud': ?governmentCloud,
      'publicAzure': ?publicAzure,
    };
  }

  factory ApplicationPackageSupportUrlsResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageSupportUrlsResponse(
      governmentCloud: map['governmentCloud'] == null ? null : map['governmentCloud'] as String,
      publicAzure: map['publicAzure'] == null ? null : map['publicAzure'] as String,
    );
  }
}

