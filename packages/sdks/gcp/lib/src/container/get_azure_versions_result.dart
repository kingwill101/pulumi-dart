// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAzureVersions.
class GetAzureVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String? project;
  /// A list of Azure regions that are available for use with this project and GCP location.
  final List<String> supportedRegions;
  /// A list of versions available for use with this project and location.
  final List<String> validVersions;

  /// Creates a new [GetAzureVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [supportedRegions] A list of Azure regions that are available for use with this project and GCP location.
  /// [validVersions] A list of versions available for use with this project and location.
  GetAzureVersionsResult({
    required this.id,
    this.location,
    this.project,
    required this.supportedRegions,
    required this.validVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': ?location,
      'project': ?project,
      'supportedRegions': supportedRegions,
      'validVersions': validVersions,
    };
  }

  factory GetAzureVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAzureVersionsResult(
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedRegions: (map['supportedRegions'] as List).cast<String>(),
      validVersions: (map['validVersions'] as List).cast<String>(),
    );
  }
}

