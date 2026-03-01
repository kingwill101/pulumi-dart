// ignore_for_file: unused_element, unnecessary_cast


/// Specifies an artifact available as a Google Cloud Storage object.
class SoftwareRecipeArtifactGcs {
  /// Bucket of the Google Cloud Storage object. Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `my-bucket`.
  final String? bucket;
  /// Must be provided if allow_insecure is false. Generation number of the Google Cloud Storage object. `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `1234567`.
  final String? generation;
  /// Name of the Google Cloud Storage object. As specified [here] (https://cloud.google.com/storage/docs/naming#objectnames) Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `foo/bar`.
  final String? object;

  /// Creates a new [SoftwareRecipeArtifactGcs].
  /// [bucket] Bucket of the Google Cloud Storage object. Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `my-bucket`.
  /// [generation] Must be provided if allow_insecure is false. Generation number of the Google Cloud Storage object. `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `1234567`.
  /// [object] Name of the Google Cloud Storage object. As specified [here] (https://cloud.google.com/storage/docs/naming#objectnames) Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `foo/bar`.
  SoftwareRecipeArtifactGcs({
    this.bucket,
    this.generation,
    this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object,
    };
  }

  factory SoftwareRecipeArtifactGcs.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifactGcs(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as String,
      object: map['object'] == null ? null : map['object'] as String,
    );
  }
}

