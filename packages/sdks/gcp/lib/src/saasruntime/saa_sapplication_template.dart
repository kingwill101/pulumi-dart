// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SaaSApplicationTemplate {
  /// Reference to the ApplicationTemplate resource, in the format
  /// `projects/{project}/locations/{location}/spaces/{space}/applicationTemplates/{applicationTemplate}`.
  final pulumi.Input<String> applicationTemplate;
  /// Revision of the ApplicationTemplate to import, as a full resource name
  /// prefixed by `applicationTemplate`:
  /// `projects/{project}/locations/{location}/spaces/{space}/applicationTemplates/{applicationTemplate}/revisions/{revision}`.
  /// Changes to the revision trigger a new import. If empty, the service
  /// stores `applicationTemplate` but doesn't import it.
  final pulumi.Input<String?>? revision;
  /// (Output)
  /// Reference to the ongoing import and replication operation. Opaque for external usage.
  final pulumi.Input<String?>? syncOperation;

  /// Creates a new [SaaSApplicationTemplate].
  /// [applicationTemplate] Reference to the ApplicationTemplate resource, in the format
  /// [revision] Revision of the ApplicationTemplate to import, as a full resource name
  /// [syncOperation] (Output)
  const SaaSApplicationTemplate({
    required this.applicationTemplate,
    this.revision,
    this.syncOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTemplate': applicationTemplate,
      'revision': ?revision,
      'syncOperation': ?syncOperation,
    };
  }

  factory SaaSApplicationTemplate.fromMap(Map<String, dynamic> map) {
    return SaaSApplicationTemplate(
      applicationTemplate: pulumi.Input.fromValue(map['applicationTemplate'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncOperation: (() { final guardedValue = map['syncOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
