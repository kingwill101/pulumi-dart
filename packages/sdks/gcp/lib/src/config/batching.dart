// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Batching {
  final pulumi.Input<bool>? enableBatching;
  final pulumi.Input<String>? sendAfter;

  /// Creates a new [Batching].
  /// [enableBatching] Optional.
  /// [sendAfter] Optional.
  Batching({
    this.enableBatching,
    this.sendAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableBatching': ?enableBatching,
      'sendAfter': ?sendAfter,
    };
  }

  factory Batching.fromMap(Map<String, dynamic> map) {
    return Batching(
      enableBatching: map['enableBatching'] == null ? null : (map['enableBatching']! as bool).input(),
      sendAfter: map['sendAfter'] == null ? null : (map['sendAfter']! as String).input(),
    );
  }
}

