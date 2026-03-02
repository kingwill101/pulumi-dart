// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_definition_condition_patch.dart';
import 'custom_resource_definition_names_patch.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatusPatch {
  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final pulumi.Input<CustomResourceDefinitionNamesPatch>? acceptedNames;
  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  final pulumi.Input<List<CustomResourceDefinitionConditionPatch>>? conditions;
  /// The generation observed by the CRD controller.
  final pulumi.Input<int>? observedGeneration;
  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final pulumi.Input<List<String>>? storedVersions;

  /// Creates a new [CustomResourceDefinitionStatusPatch].
  /// [acceptedNames] acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  /// [conditions] conditions indicate state for particular aspects of a CustomResourceDefinition
  /// [observedGeneration] The generation observed by the CRD controller.
  /// [storedVersions] storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  CustomResourceDefinitionStatusPatch({
    this.acceptedNames,
    this.conditions,
    this.observedGeneration,
    this.storedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedNames': ?pulumi.Input.mapOptionalInputValue<CustomResourceDefinitionNamesPatch, Map<String, dynamic>>(acceptedNames, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceDefinitionConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'storedVersions': ?storedVersions,
    };
  }

  factory CustomResourceDefinitionStatusPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionStatusPatch(
      acceptedNames: map['acceptedNames'] == null ? null : (CustomResourceDefinitionNamesPatch.fromMap((map['acceptedNames'] as Map).cast<String, dynamic>())).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<CustomResourceDefinitionConditionPatch>(map['conditions'], (value) => CustomResourceDefinitionConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      storedVersions: map['storedVersions'] == null ? null : ((map['storedVersions'] as List).cast<String>()).input(),
    );
  }
}

