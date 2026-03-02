// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionsImageVersion {
  /// The string identifier of the image version, in the form: "composer-x.y.z-airflow-a.b.c"
  final pulumi.Input<String> imageVersionId;
  /// Supported python versions for this image version
  final pulumi.Input<List<String>> supportedPythonVersions;

  /// Creates a new [GetImageVersionsImageVersion].
  /// [imageVersionId] The string identifier of the image version, in the form: "composer-x.y.z-airflow-a.b.c"
  /// [supportedPythonVersions] Supported python versions for this image version
  GetImageVersionsImageVersion({
    required this.imageVersionId,
    required this.supportedPythonVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersionId': imageVersionId,
      'supportedPythonVersions': supportedPythonVersions,
    };
  }

  factory GetImageVersionsImageVersion.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsImageVersion(
      imageVersionId: (map['imageVersionId'] as String).input(),
      supportedPythonVersions: ((map['supportedPythonVersions'] as List).cast<String>()).input(),
    );
  }
}

