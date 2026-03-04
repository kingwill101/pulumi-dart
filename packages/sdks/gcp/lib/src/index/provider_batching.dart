// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderBatching {
  final pulumi.Input<bool>? enableBatching;
  final pulumi.Input<String>? sendAfter;

  /// Creates a new [ProviderBatching].
  /// [enableBatching] Optional.
  /// [sendAfter] Optional.
  ProviderBatching({this.enableBatching, this.sendAfter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableBatching': ?enableBatching,
      'sendAfter': ?sendAfter,
    };
  }

  factory ProviderBatching.fromMap(Map<String, dynamic> map) {
    return ProviderBatching(
      enableBatching: (() {
        final guardedValue = map['enableBatching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sendAfter: (() {
        final guardedValue = map['sendAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
