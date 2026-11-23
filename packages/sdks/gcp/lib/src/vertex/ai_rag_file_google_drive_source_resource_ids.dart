// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagFileGoogleDriveSourceResourceIds {
  /// The ID of the Google Drive file.
  final pulumi.Input<String> resourceId;
  /// The type of the Google Drive resource. Only individual files are
  /// supported because each resource manages one RagFile.
  /// Default value is `RESOURCE_TYPE_FILE`.
  /// Possible values are: `RESOURCE_TYPE_FILE`.
  final pulumi.Input<String?>? resourceType;

  /// Creates a new [AiRagFileGoogleDriveSourceResourceIds].
  /// [resourceId] The ID of the Google Drive file.
  /// [resourceType] The type of the Google Drive resource. Only individual files are
  const AiRagFileGoogleDriveSourceResourceIds({
    required this.resourceId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'resourceType': ?resourceType,
    };
  }

  factory AiRagFileGoogleDriveSourceResourceIds.fromMap(Map<String, dynamic> map) {
    return AiRagFileGoogleDriveSourceResourceIds(
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
