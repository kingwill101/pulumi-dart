// ignore_for_file: unused_element, unnecessary_cast


class GetCloudMetadata {
  /// Specifies the cloud provider. For example `Azure`, `AWS` and `GCP`.
  final String provider;

  /// Creates a new [GetCloudMetadata].
  /// [provider] Specifies the cloud provider. For example `Azure`, `AWS` and `GCP`.
  GetCloudMetadata({
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider,
    };
  }

  factory GetCloudMetadata.fromMap(Map<String, dynamic> map) {
    return GetCloudMetadata(
      provider: map['provider'] as String,
    );
  }
}

