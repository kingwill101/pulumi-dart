// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_resource_definition_condition_apiextensions_k8s_io_v1beta1.dart';
import 'custom_resource_definition_names_apiextensions_k8s_io_v1beta1.dart';

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1 {
  /// acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  final pulumi.Input<CustomResourceDefinitionNamesApiextensionsK8sIoV1beta1> acceptedNames;
  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  final pulumi.Input<List<CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1>>? conditions;
  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  final pulumi.Input<List<String>> storedVersions;

  /// Creates a new [CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1].
  /// [acceptedNames] acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
  /// [conditions] conditions indicate state for particular aspects of a CustomResourceDefinition
  /// [storedVersions] storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  const CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1({
    required this.acceptedNames,
    this.conditions,
    required this.storedVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedNames': pulumi.Input.mapInputValue<CustomResourceDefinitionNamesApiextensionsK8sIoV1beta1, Map<String, dynamic>>(acceptedNames, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storedVersions': storedVersions,
    };
  }

  factory CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceDefinitionStatusApiextensionsK8sIoV1beta1(
      acceptedNames: pulumi.Input.fromValue(CustomResourceDefinitionNamesApiextensionsK8sIoV1beta1.fromMap((map['acceptedNames']! as Map).cast<String, dynamic>())),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1>(guardedValue, (value) => CustomResourceDefinitionConditionApiextensionsK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storedVersions: pulumi.Input.fromValue((map['storedVersions'] as List).cast<String>()),
    );
  }
}
