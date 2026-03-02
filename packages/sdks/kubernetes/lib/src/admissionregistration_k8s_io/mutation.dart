// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apply_configuration.dart';
import 'jsonpatch.dart';

/// Mutation specifies the CEL expression which is used to apply the Mutation.
class Mutation {
  /// applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  final pulumi.Input<ApplyConfiguration>? applyConfiguration;
  /// jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  final pulumi.Input<JSONPatch>? jsonPatch;
  /// patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  final pulumi.Input<String> patchType;

  /// Creates a new [Mutation].
  /// [applyConfiguration] applyConfiguration defines the desired configuration values of an object. The configuration is applied to the admission object using [structured merge diff](https://github.com/kubernetes-sigs/structured-merge-diff). A CEL expression is used to create apply configuration.
  /// [jsonPatch] jsonPatch defines a [JSON patch](https://jsonpatch.com/) operation to perform a mutation to the object. A CEL expression is used to create the JSON patch.
  /// [patchType] patchType indicates the patch strategy used. Allowed values are "ApplyConfiguration" and "JSONPatch". Required.
  Mutation({
    this.applyConfiguration,
    this.jsonPatch,
    required this.patchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplyConfiguration, Map<String, dynamic>>(applyConfiguration, (value) => value.toMap()),
      'jsonPatch': ?pulumi.Input.mapOptionalInputValue<JSONPatch, Map<String, dynamic>>(jsonPatch, (value) => value.toMap()),
      'patchType': patchType,
    };
  }

  factory Mutation.fromMap(Map<String, dynamic> map) {
    return Mutation(
      applyConfiguration: map['applyConfiguration'] == null ? null : (ApplyConfiguration.fromMap((map['applyConfiguration']! as Map).cast<String, dynamic>())).input(),
      jsonPatch: map['jsonPatch'] == null ? null : (JSONPatch.fromMap((map['jsonPatch']! as Map).cast<String, dynamic>())).input(),
      patchType: (map['patchType'] as String).input(),
    );
  }
}

