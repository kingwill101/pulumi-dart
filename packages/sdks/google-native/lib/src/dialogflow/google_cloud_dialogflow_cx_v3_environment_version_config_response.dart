// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the version.
class GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse {
  /// Format: projects//locations//agents//flows//versions/.
  final String version;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse].
  /// [version] Format: projects//locations//agents//flows//versions/.
  GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentVersionConfigResponse(
      version: map['version'] as String,
    );
  }
}

