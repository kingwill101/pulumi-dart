// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_definition_condition_patch_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_names_patch_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1 {
  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final pulumi.Input<CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1?>? acceptedNames;
  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  final pulumi.Input<List<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1>?>? conditions;
  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final pulumi.Input<List<String>?>? storedVersions;

  /// Creates a new [CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1].
  /// [acceptedNames] acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  /// [conditions] conditions indicate state for particular aspects of a CustomResourceDefinition
  /// [storedVersions] storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  const CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1({
    this.acceptedNames,
    this.conditions,
    this.storedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedNames': ?pulumi.Input.mapOptionalInputValue<CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(acceptedNames, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storedVersions': ?storedVersions,
    };
  }

  factory CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionStatusPatchApiextensionsK8sIoV1beta1(
      acceptedNames: (() { final guardedValue = map['acceptedNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomResourceDefinitionNamesPatchApiextensionsK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1>(guardedValue, (value) => CustomResourceDefinitionConditionPatchApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storedVersions: (() { final guardedValue = map['storedVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
