// ignore_for_file: unused_element, unnecessary_cast


/// Details of the ContainerGroupProfile.
class ContainerGroupProfileResponse {
  /// Specifies container group profile id of standby container groups.
  final String id;
  /// Specifies revision of container group profile.
  final double? revision;

  /// Creates a new [ContainerGroupProfileResponse].
  /// [id] Specifies container group profile id of standby container groups.
  /// [revision] Specifies revision of container group profile.
  ContainerGroupProfileResponse({
    required this.id,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'revision': ?revision,
    };
  }

  factory ContainerGroupProfileResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileResponse(
      id: map['id'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
    );
  }
}

