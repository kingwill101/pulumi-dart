// ignore_for_file: unused_element, unnecessary_cast


/// Specifies where the manifest is located.
class TransferManifestResponse {
  /// Specifies the path to the manifest in Cloud Storage. The Google-managed service account for the transfer must have `storage.objects.get` permission for this object. An example path is `gs://bucket_name/path/manifest.csv`.
  final String location;

  /// Creates a new [TransferManifestResponse].
  /// [location] Specifies the path to the manifest in Cloud Storage. The Google-managed service account for the transfer must have `storage.objects.get` permission for this object. An example path is `gs://bucket_name/path/manifest.csv`.
  TransferManifestResponse({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory TransferManifestResponse.fromMap(Map<String, dynamic> map) {
    return TransferManifestResponse(
      location: map['location'] as String,
    );
  }
}

