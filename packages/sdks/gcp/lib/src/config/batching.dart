// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Batching {
  final pulumi.Input<bool?>? enableBatching;
  final pulumi.Input<String?>? sendAfter;

  /// Creates a new [Batching].
  /// [enableBatching] Optional.
  /// [sendAfter] Optional.
  const Batching({
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
      enableBatching: (() { final guardedValue = map['enableBatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendAfter: (() { final guardedValue = map['sendAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
