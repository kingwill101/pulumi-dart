// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource {
  /// If non-empty, only files with these extensions are included when
  /// expanding the resource.  If empty, all files are included.
  final pulumi.Input<List<String>?>? fileExtensionRestrictions;
  /// Points to a drive file to use. May refer to workspace files or folders
  /// as well.  If folder is specifically, all files in the folder
  /// (recursively) are used.
  ///
  /// Expected Format:
  /// files/{file_id}
  final pulumi.Input<String?>? fileReference;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource].
  /// [fileExtensionRestrictions] If non-empty, only files with these extensions are included when
  /// [fileReference] Points to a drive file to use. May refer to workspace files or folders
  const AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource({
    this.fileExtensionRestrictions,
    this.fileReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileExtensionRestrictions': ?fileExtensionRestrictions,
      'fileReference': ?fileReference,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigSlideGenerationOptionsSlideExampleResourceGoogleDriveResource(
      fileExtensionRestrictions: (() { final guardedValue = map['fileExtensionRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileReference: (() { final guardedValue = map['fileReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
