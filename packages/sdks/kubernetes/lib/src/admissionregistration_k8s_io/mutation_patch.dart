// ignore_for_file: unused_element, unnecessary_cast

import 'apply_configuration_patch.dart';
import 'jsonpatch_patch.dart';

/// Mutation specifies the CEL expression which is used to apply the Mutation.
class MutationPatch {
  /// applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  final ApplyConfigurationPatch? applyConfiguration;
  /// jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  final JSONPatchPatch? jsonPatch;
  /// patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  final String? patchType;

  /// Creates a new [MutationPatch].
  /// [applyConfiguration] applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  /// [jsonPatch] jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  /// [patchType] patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  MutationPatch({
    this.applyConfiguration,
    this.jsonPatch,
    this.patchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyConfiguration': ?applyConfiguration == null ? null : applyConfiguration!.toMap(),
      'jsonPatch': ?jsonPatch == null ? null : jsonPatch!.toMap(),
      'patchType': ?patchType,
    };
  }

  factory MutationPatch.fromMap(Map<String, dynamic> map) {
    return MutationPatch(
      applyConfiguration: map['applyConfiguration'] == null ? null : ApplyConfigurationPatch.fromMap((map['applyConfiguration'] as Map).cast<String, dynamic>()),
      jsonPatch: map['jsonPatch'] == null ? null : JSONPatchPatch.fromMap((map['jsonPatch'] as Map).cast<String, dynamic>()),
      patchType: map['patchType'] == null ? null : map['patchType'] as String,
    );
  }
}

