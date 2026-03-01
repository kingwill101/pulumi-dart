// ignore_for_file: unused_element, unnecessary_cast


/// Execution using the default Cloud Build pool.
class DefaultPoolResponse {
  /// Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final String artifactStorage;
  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  final String serviceAccount;

  /// Creates a new [DefaultPoolResponse].
  /// [artifactStorage] Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  DefaultPoolResponse({
    required this.artifactStorage,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': artifactStorage,
      'serviceAccount': serviceAccount,
    };
  }

  factory DefaultPoolResponse.fromMap(Map<String, dynamic> map) {
    return DefaultPoolResponse(
      artifactStorage: map['artifactStorage'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}

