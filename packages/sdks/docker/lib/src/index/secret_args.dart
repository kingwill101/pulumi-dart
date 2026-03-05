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
    required this.data,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<SecretLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<SecretLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      data: pulumi.Input.fromValue(map['data'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretLabel>(guardedValue, (value) => SecretLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

