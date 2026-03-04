// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apply_configuration_patch.dart';
import 'jsonpatch_patch.dart';

/// Mutation specifies the CEL expression which is used to apply the Mutation.
class MutationPatch {
  /// applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  final pulumi.Input<ApplyConfigurationPatch>? applyConfiguration;

  /// jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  final pulumi.Input<JSONPatchPatch>? jsonPatch;

  /// patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  final pulumi.Input<String>? patchType;

  /// Creates a new [MutationPatch].
  /// [applyConfiguration] applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  /// [jsonPatch] jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  /// [patchType] patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  MutationPatch({this.applyConfiguration, this.jsonPatch, this.patchType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ApplyConfigurationPatch,
            Map<String, dynamic>
          >(applyConfiguration, (value) => value.toMap()),
      'jsonPatch':
          ?pulumi.Input.mapOptionalInputValue<
            JSONPatchPatch,
            Map<String, dynamic>
          >(jsonPatch, (value) => value.toMap()),
      'patchType': ?patchType,
    };
  }

  factory MutationPatch.fromMap(Map<String, dynamic> map) {
    return MutationPatch(
      applyConfiguration: (() {
        final guardedValue = map['applyConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplyConfigurationPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jsonPatch: (() {
        final guardedValue = map['jsonPatch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JSONPatchPatch.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      patchType: (() {
        final guardedValue = map['patchType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
