// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitKindApplicationTemplateComponentCompositeRef {
  /// Reference to the ApplicationTemplate resource, in the format
  /// `projects/{project}/locations/{location}/spaces/{space}/applicationTemplates/{applicationTemplate}`.
  final pulumi.Input<String> applicationTemplate;
  /// Revision of the ApplicationTemplate, as a full resource name
  /// prefixed by `applicationTemplate`.
  final pulumi.Input<String?>? revision;
  /// (Output)
  /// Reference to the ongoing import and replication operation. Opaque for external usage.
  final pulumi.Input<String?>? syncOperation;

  /// Creates a new [UnitKindApplicationTemplateComponentCompositeRef].
  /// [applicationTemplate] Reference to the ApplicationTemplate resource, in the format
  /// [revision] Revision of the ApplicationTemplate, as a full resource name
  /// [syncOperation] (Output)
  const UnitKindApplicationTemplateComponentCompositeRef({
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

  factory UnitKindApplicationTemplateComponentCompositeRef.fromMap(Map<String, dynamic> map) {
    return UnitKindApplicationTemplateComponentCompositeRef(
      applicationTemplate: pulumi.Input.fromValue(map['applicationTemplate'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncOperation: (() { final guardedValue = map['syncOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
