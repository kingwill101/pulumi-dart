// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_label.dart';

/// {@template pulumi_index_secret_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_index_secret_secret_args_doc}
class SecretArgs {
  /// Base64-url-safe-encoded secret data
  final pulumi.Input<String> data;
  /// User-defined key/value metadata
  final pulumi.Input<List<SecretLabel>>? labels;
  /// User-defined name of the secret
  final pulumi.Input<String>? name;

  /// Creates a new [SecretArgs].
  /// [data] Base64-url-safe-encoded secret data
  /// [labels] User-defined key/value metadata
  /// [name] User-defined name of the secret
  SecretArgs({
    required pulumi.Output<String> data,
    pulumi.Output<List<SecretLabel>>? labels,
    pulumi.Output<String>? name,
  }) :
      data = pulumi.Input.asInput<String>(data),
      labels = pulumi.Input.asOptionalInput<List<SecretLabel>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<SecretLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<SecretLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      data: pulumi.Output.create<String>(map['data'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<SecretLabel>>(pulumi.Input.decodeList<SecretLabel>(map['labels'], (value) => SecretLabel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

