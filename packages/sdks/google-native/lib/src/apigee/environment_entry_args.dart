// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_environment_entry_args_doc}
/// The set of arguments for EnvironmentEntry.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_environment_entry_args_doc}
class EnvironmentEntryArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keyvaluemapId;
  /// Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentEntryArgs].
  /// [environmentId] Required.
  /// [keyvaluemapId] Required.
  /// [name] Resource URI that can be used to identify the scope of the key value map entries.
  /// [organizationId] Required.
  /// [value] Data or payload that is being retrieved and associated with the unique key.
  const EnvironmentEntryArgs({
    required this.environmentId,
    required this.keyvaluemapId,
    this.name,
    required this.organizationId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'keyvaluemapId': keyvaluemapId,
      'name': ?name,
      'organizationId': organizationId,
      'value': value,
    };
  }

  factory EnvironmentEntryArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentEntryArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      keyvaluemapId: pulumi.Input.fromValue(map['keyvaluemapId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
