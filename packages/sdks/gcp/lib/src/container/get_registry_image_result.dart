// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryImage.
class GetRegistryImageResult {
  final String? digest;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The URL at which the image can be accessed.
  final String? imageUrl;
  final String? name;
  final String? project;
  final String? region;
  final String? tag;

  /// Creates a new [GetRegistryImageResult].
  /// [digest] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageUrl] The URL at which the image can be accessed.
  /// [name] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [tag] Optional.
  const GetRegistryImageResult({
    this.digest,
    this.id,
    this.imageUrl,
    this.name,
    this.project,
    this.region,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digest': ?digest,
      'id': ?id,
      'imageUrl': ?imageUrl,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'tag': ?tag,
    };
  }

  factory GetRegistryImageResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageResult(
      digest: (() { final guardedValue = map['digest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageUrl: (() { final guardedValue = map['imageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
