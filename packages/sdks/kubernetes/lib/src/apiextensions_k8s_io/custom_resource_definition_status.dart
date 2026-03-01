// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_definition_condition.dart';
import 'custom_resource_definition_names.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatus {
  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final CustomResourceDefinitionNames acceptedNames;
  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  final List<CustomResourceDefinitionCondition>? conditions;
  /// The generation observed by the CRD controller.
  final int? observedGeneration;
  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final List<String> storedVersions;

  /// Creates a new [CustomResourceDefinitionStatus].
  /// [acceptedNames] acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  /// [conditions] conditions indicate state for particular aspects of a CustomResourceDefinition
  /// [observedGeneration] The generation observed by the CRD controller.
  /// [storedVersions] storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  CustomResourceDefinitionStatus({
    required this.acceptedNames,
    this.conditions,
    this.observedGeneration,
    required this.storedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedNames': acceptedNames.toMap(),
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<CustomResourceDefinitionCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'observedGeneration': ?observedGeneration,
      'storedVersions': storedVersions,
    };
  }

  factory CustomResourceDefinitionStatus.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionStatus(
      acceptedNames: CustomResourceDefinitionNames.fromMap((map['acceptedNames'] as Map).cast<String, dynamic>()),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<CustomResourceDefinitionCondition>(map['conditions'], (value) => CustomResourceDefinitionCondition.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      storedVersions: (map['storedVersions'] as List).cast<String>(),
    );
  }
}

