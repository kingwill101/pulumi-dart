// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryImage.
class GetRegistryImageResult {
  final String? digest;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The URL at which the image can be accessed.
  final String imageUrl;
  final String name;
  final String project;
  final String? region;
  final String? tag;

  /// Creates a new [GetRegistryImageResult].
  /// [digest] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageUrl] The URL at which the image can be accessed.
  /// [name] Required.
  /// [project] Required.
  /// [region] Optional.
  /// [tag] Optional.
  const GetRegistryImageResult({
    this.digest,
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.project,
    this.region,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'id': id,
      'imageUrl': imageUrl,
      'name': name,
      'project': project,
      'region': ?region,
      'tag': ?tag,
    };
  }

  factory GetRegistryImageResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageResult(
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

