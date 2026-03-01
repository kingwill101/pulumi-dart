// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_entry_args_doc}
/// The set of arguments for Entry.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_entry_args_doc}
class EntryArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> keyvaluemapId;
  /// Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

  /// Creates a new [EntryArgs].
  /// [apiId] Required.
  /// [keyvaluemapId] Required.
  /// [name] Resource URI that can be used to identify the scope of the key value map entries.
  /// [organizationId] Required.
  /// [value] Data or payload that is being retrieved and associated with the unique key.
  EntryArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> keyvaluemapId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> value,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      keyvaluemapId = pulumi.Input.asInput<String>(keyvaluemapId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'keyvaluemapId': keyvaluemapId,
      'name': ?name,
      'organizationId': organizationId,
      'value': value,
    };
  }

  factory EntryArgs.fromMap(Map<String, dynamic> map) {
    return EntryArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      keyvaluemapId: pulumi.Output.create<String>(map['keyvaluemapId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

