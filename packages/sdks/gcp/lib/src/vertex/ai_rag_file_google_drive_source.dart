// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_google_drive_source_resource_ids.dart';

class AiRagFileGoogleDriveSource {
  /// The Google Drive file to import.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileGoogleDriveSourceResourceIds> resourceIds;

  /// Creates a new [AiRagFileGoogleDriveSource].
  /// [resourceIds] The Google Drive file to import.
  const AiRagFileGoogleDriveSource({
    required this.resourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceIds': pulumi.Input.mapInputValue<AiRagFileGoogleDriveSourceResourceIds, Map<String, dynamic>>(resourceIds, (value) => value.toMap()),
    };
  }

  factory AiRagFileGoogleDriveSource.fromMap(Map<String, dynamic> map) {
    return AiRagFileGoogleDriveSource(
      resourceIds: pulumi.Input.fromValue(AiRagFileGoogleDriveSourceResourceIds.fromMap((map['resourceIds']! as Map).cast<String, dynamic>())),
    );
  }
}
