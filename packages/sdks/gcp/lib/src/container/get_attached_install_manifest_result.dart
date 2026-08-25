// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAttachedInstallManifest.
class GetAttachedInstallManifestResult {
  final String? clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// A string with the YAML manifest that needs to be applied to the cluster.
  final String? manifest;
  final String? platformVersion;
  final String? project;

  /// Creates a new [GetAttachedInstallManifestResult].
  /// [clusterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [manifest] A string with the YAML manifest that needs to be applied to the cluster.
  /// [platformVersion] Optional.
  /// [project] Optional.
  const GetAttachedInstallManifestResult({
    this.clusterId,
    this.id,
    this.location,
    this.manifest,
    this.platformVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'id': ?id,
      'location': ?location,
      'manifest': ?manifest,
      'platformVersion': ?platformVersion,
      'project': ?project,
    };
  }

  factory GetAttachedInstallManifestResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedInstallManifestResult(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manifest: (() { final guardedValue = map['manifest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
