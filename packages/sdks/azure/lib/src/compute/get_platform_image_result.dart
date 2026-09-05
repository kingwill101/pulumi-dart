// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlatformImage.
class GetPlatformImageResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? offer;
  final String? publisher;
  final String? sku;
  final String? version;

  /// Creates a new [GetPlatformImageResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [offer] Optional.
  /// [publisher] Optional.
  /// [sku] Optional.
  /// [version] Optional.
  const GetPlatformImageResult({
    this.id,
    this.location,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory GetPlatformImageResult.fromMap(Map<String, dynamic> map) {
    return GetPlatformImageResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
