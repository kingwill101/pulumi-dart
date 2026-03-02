// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_label.dart';

/// Input properties used for looking up and filtering Secret resources.
class SecretState {
  /// Base64-url-safe-encoded secret data
  final pulumi.Input<String>? data;
  /// User-defined key/value metadata
  final pulumi.Input<List<SecretLabel>>? labels;
  /// User-defined name of the secret
  final pulumi.Input<String>? name;

  /// Creates a new [SecretState].
  /// [data] Base64-url-safe-encoded secret data
  /// [labels] User-defined key/value metadata
  /// [name] User-defined name of the secret
  SecretState({
    this.data,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<SecretLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<SecretLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory SecretState.fromMap(Map<String, dynamic> map) {
    return SecretState(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<SecretLabel>(map['labels']!, (value) => SecretLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

