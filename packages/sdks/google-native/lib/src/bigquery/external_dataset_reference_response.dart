// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExternalDatasetReferenceResponse {
  /// [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  final pulumi.Input<String> connection;
  /// [Required] External source that backs this dataset.
  final pulumi.Input<String> externalSource;

  /// Creates a new [ExternalDatasetReferenceResponse].
  /// [connection] [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  /// [externalSource] [Required] External source that backs this dataset.
  const ExternalDatasetReferenceResponse({
    required this.connection,
    required this.externalSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': connection,
      'externalSource': externalSource,
    };
  }

  factory ExternalDatasetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ExternalDatasetReferenceResponse(
      connection: pulumi.Input.fromValue(map['connection'] as String),
      externalSource: pulumi.Input.fromValue(map['externalSource'] as String),
    );
  }
}

