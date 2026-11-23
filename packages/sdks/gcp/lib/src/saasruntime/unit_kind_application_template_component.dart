// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_kind_application_template_component_composite_ref.dart';

class UnitKindApplicationTemplateComponent {
  /// Name of the component in the composite ApplicationTemplate (the root
  /// module ID, e.g. a composite component ID or `native-components`).
  final pulumi.Input<String?>? component;
  /// Reference to the composite ApplicationTemplate.
  /// Structure is documented below.
  final pulumi.Input<UnitKindApplicationTemplateComponentCompositeRef?>? compositeRef;
  /// Revision of the component. If the component does not have a revision,
  /// this is the revision of the composite ApplicationTemplate.
  final pulumi.Input<String?>? revision;

  /// Creates a new [UnitKindApplicationTemplateComponent].
  /// [component] Name of the component in the composite ApplicationTemplate (the root
  /// [compositeRef] Reference to the composite ApplicationTemplate.
  /// [revision] Revision of the component. If the component does not have a revision,
  const UnitKindApplicationTemplateComponent({
    this.component,
    this.compositeRef,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?component,
      'compositeRef': ?pulumi.Input.mapOptionalInputValue<UnitKindApplicationTemplateComponentCompositeRef, Map<String, dynamic>>(compositeRef, (value) => value.toMap()),
      'revision': ?revision,
    };
  }

  factory UnitKindApplicationTemplateComponent.fromMap(Map<String, dynamic> map) {
    return UnitKindApplicationTemplateComponent(
      component: (() { final guardedValue = map['component']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compositeRef: (() { final guardedValue = map['compositeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UnitKindApplicationTemplateComponentCompositeRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
