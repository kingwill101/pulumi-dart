// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExternalDatasetReference {
  /// [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  final pulumi.Input<String>? connection;
  /// [Required] External source that backs this dataset.
  final pulumi.Input<String>? externalSource;

  /// Creates a new [ExternalDatasetReference].
  /// [connection] [Required] The connection id that is used to access the external_source. Format: projects/{project_id}/locations/{location_id}/connections/{connection_id}
  /// [externalSource] [Required] External source that backs this dataset.
  ExternalDatasetReference({
    this.connection,
    this.externalSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection,
      'externalSource': ?externalSource,
    };
  }

  factory ExternalDatasetReference.fromMap(Map<String, dynamic> map) {
    return ExternalDatasetReference(
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalSource: (() { final guardedValue = map['externalSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

