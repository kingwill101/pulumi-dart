// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_definition_condition.dart';
import 'custom_resource_definition_names.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatus {
  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final pulumi.Input<CustomResourceDefinitionNames> acceptedNames;
  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  final pulumi.Input<List<CustomResourceDefinitionCondition>>? conditions;
  /// The generation observed by the CRD controller.
  final pulumi.Input<int>? observedGeneration;
  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final pulumi.Input<List<String>> storedVersions;

  /// Creates a new [CustomResourceDefinitionStatus].
  /// [acceptedNames] acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  /// [conditions] conditions indicate state for particular aspects of a CustomResourceDefinition
  /// [observedGeneration] The generation observed by the CRD controller.
  /// [storedVersions] storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  const CustomResourceDefinitionStatus({
    required this.acceptedNames,
    this.conditions,
    this.observedGeneration,
    required this.storedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedNames': pulumi.Input.mapInputValue<CustomResourceDefinitionNames, Map<String, dynamic>>(acceptedNames, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceDefinitionCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observedGeneration': ?observedGeneration,
      'storedVersions': storedVersions,
    };
  }

  factory CustomResourceDefinitionStatus.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionStatus(
      acceptedNames: pulumi.Input.fromValue(CustomResourceDefinitionNames.fromMap((map['acceptedNames']! as Map).cast<String, dynamic>())),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomResourceDefinitionCondition>(guardedValue, (value) => CustomResourceDefinitionCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storedVersions: pulumi.Input.fromValue((map['storedVersions'] as List).cast<String>()),
    );
  }
}

