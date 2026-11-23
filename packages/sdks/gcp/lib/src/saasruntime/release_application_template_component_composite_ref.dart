// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReleaseApplicationTemplateComponentCompositeRef {
  /// (Output)
  /// Reference to the ApplicationTemplate resource.
  final pulumi.Input<String?>? applicationTemplate;
  /// (Output)
  /// Revision of the ApplicationTemplate.
  final pulumi.Input<String?>? revision;
  /// (Output)
  /// Reference to the ongoing import and replication operation. Opaque for external usage.
  final pulumi.Input<String?>? syncOperation;

  /// Creates a new [ReleaseApplicationTemplateComponentCompositeRef].
  /// [applicationTemplate] (Output)
  /// [revision] (Output)
  /// [syncOperation] (Output)
  const ReleaseApplicationTemplateComponentCompositeRef({
    this.applicationTemplate,
    this.revision,
    this.syncOperation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTemplate': ?applicationTemplate,
      'revision': ?revision,
      'syncOperation': ?syncOperation,
    };
  }

  factory ReleaseApplicationTemplateComponentCompositeRef.fromMap(Map<String, dynamic> map) {
    return ReleaseApplicationTemplateComponentCompositeRef(
      applicationTemplate: (() { final guardedValue = map['applicationTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncOperation: (() { final guardedValue = map['syncOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
