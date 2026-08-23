// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZones.
class GetZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of zones available in the given region
  final List<String> names;
  final String project;
  final String? region;
  final String? status;

  /// Creates a new [GetZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] A list of zones available in the given region
  /// [project] Required.
  /// [region] Optional.
  /// [status] Optional.
  const GetZonesResult({
    required this.id,
    required this.names,
    required this.project,
    this.region,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'names': names,
      'project': project,
      'region': ?region,
      'status': ?status,
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      project: map['project'] as String,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
