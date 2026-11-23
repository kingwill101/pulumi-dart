// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_application_template_component_composite_ref.dart';

class ReleaseApplicationTemplateComponent {
  /// (Output)
  /// Name of the component in the composite ApplicationTemplate.
  final pulumi.Input<String?>? component;
  /// (Output)
  /// Reference to the composite ApplicationTemplate.
  /// Structure is documented below.
  final pulumi.Input<List<ReleaseApplicationTemplateComponentCompositeRef>?>? compositeReves;
  /// (Output)
  /// Revision of the ApplicationTemplate.
  final pulumi.Input<String?>? revision;

  /// Creates a new [ReleaseApplicationTemplateComponent].
  /// [component] (Output)
  /// [compositeReves] (Output)
  /// [revision] (Output)
  const ReleaseApplicationTemplateComponent({
    this.component,
    this.compositeReves,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?component,
      'compositeReves': ?pulumi.Input.mapOptionalInputValue<List<ReleaseApplicationTemplateComponentCompositeRef>, List<Map<String, dynamic>>>(compositeReves, (value) => pulumi.Input.encodeList<ReleaseApplicationTemplateComponentCompositeRef, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revision': ?revision,
    };
  }

  factory ReleaseApplicationTemplateComponent.fromMap(Map<String, dynamic> map) {
    return ReleaseApplicationTemplateComponent(
      component: (() { final guardedValue = map['component']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compositeReves: (() { final guardedValue = map['compositeReves']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReleaseApplicationTemplateComponentCompositeRef>(guardedValue, (value) => ReleaseApplicationTemplateComponentCompositeRef.fromMap((value as Map).cast<String, dynamic>()))); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
