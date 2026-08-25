// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAzureVersions.
class GetAzureVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  /// A list of Azure regions that are available for use with this project and GCP location.
  final List<String>? supportedRegions;
  /// A list of versions available for use with this project and location.
  final List<String>? validVersions;

  /// Creates a new [GetAzureVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [supportedRegions] A list of Azure regions that are available for use with this project and GCP location.
  /// [validVersions] A list of versions available for use with this project and location.
  const GetAzureVersionsResult({
    this.id,
    this.location,
    this.project,
    this.supportedRegions,
    this.validVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'supportedRegions': ?supportedRegions,
      'validVersions': ?validVersions,
    };
  }

  factory GetAzureVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetAzureVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedRegions: (() { final guardedValue = map['supportedRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      validVersions: (() { final guardedValue = map['validVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
