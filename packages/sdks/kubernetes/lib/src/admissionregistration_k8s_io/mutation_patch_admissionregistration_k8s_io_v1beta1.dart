// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apply_configuration_patch_admissionregistration_k8s_io_v1beta1.dart';
import 'jsonpatch_patch_admissionregistration_k8s_io_v1beta1.dart';

/// Mutation specifies the CEL expression which is used to apply the Mutation.
class MutationPatchAdmissionregistrationK8sIoV1beta1 {
  /// applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  final pulumi.Input<ApplyConfigurationPatchAdmissionregistrationK8sIoV1beta1?>? applyConfiguration;
  /// jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  final pulumi.Input<JSONPatchPatchAdmissionregistrationK8sIoV1beta1?>? jsonPatch;
  /// patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  final pulumi.Input<String?>? patchType;

  /// Creates a new [MutationPatchAdmissionregistrationK8sIoV1beta1].
  /// [applyConfiguration] applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  /// [jsonPatch] jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  /// [patchType] patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  const MutationPatchAdmissionregistrationK8sIoV1beta1({
    this.applyConfiguration,
    this.jsonPatch,
    this.patchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplyConfigurationPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(applyConfiguration, (value) => value.toMap()),
      'jsonPatch': ?pulumi.Input.mapOptionalInputValue<JSONPatchPatchAdmissionregistrationK8sIoV1beta1, Map<String, dynamic>>(jsonPatch, (value) => value.toMap()),
      'patchType': ?patchType,
    };
  }

  factory MutationPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return MutationPatchAdmissionregistrationK8sIoV1beta1(
      applyConfiguration: (() { final guardedValue = map['applyConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplyConfigurationPatchAdmissionregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonPatch: (() { final guardedValue = map['jsonPatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JSONPatchPatchAdmissionregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      patchType: (() { final guardedValue = map['patchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
