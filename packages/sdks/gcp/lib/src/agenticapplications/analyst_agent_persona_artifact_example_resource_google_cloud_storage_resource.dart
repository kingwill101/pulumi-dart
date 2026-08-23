// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResource {
  /// If non-empty, only files with these extensions are included when
  /// expanding the resource.  If empty, all files are included.
  final pulumi.Input<List<String>>? fileExtensionRestrictions;
  /// The Google Cloud Storage object or folder.
  ///
  /// Format: /
  /// or: //
  ///
  /// Note that to refer to a folder, it _must_ end in a slash.
  final pulumi.Input<String> googleCloudStorageObject;

  /// Creates a new [AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResource].
  /// [fileExtensionRestrictions] If non-empty, only files with these extensions are included when
  /// [googleCloudStorageObject] The Google Cloud Storage object or folder.
  const AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResource({
    this.fileExtensionRestrictions,
    required this.googleCloudStorageObject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileExtensionRestrictions': ?fileExtensionRestrictions,
      'googleCloudStorageObject': googleCloudStorageObject,
    };
  }

  factory AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactExampleResourceGoogleCloudStorageResource(
      fileExtensionRestrictions: (() { final guardedValue = map['fileExtensionRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      googleCloudStorageObject: pulumi.Input.fromValue(map['googleCloudStorageObject'] as String),
    );
  }
}
