// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_definition_condition_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_names_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1 {
  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1? acceptedNames;
  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  final List<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1>? conditions;
  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final List<String>? storedVersions;

  /// Creates a new [CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1].
  /// [acceptedNames] acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  /// [conditions] conditions indicate state for particular aspects of a CustomResourceDefinition
  /// [storedVersions] storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1({
    this.acceptedNames,
    this.conditions,
    this.storedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedNames': ?acceptedNames == null ? null : acceptedNames!.toMap(),
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'storedVersions': ?storedVersions,
    };
  }

  factory CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1(
      acceptedNames: map['acceptedNames'] == null ? null : CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1.fromMap((map['acceptedNames'] as Map).cast<String, dynamic>()),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1>(map['conditions'], (value) => CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      storedVersions: map['storedVersions'] == null ? null : (map['storedVersions'] as List).cast<String>(),
    );
  }
}

