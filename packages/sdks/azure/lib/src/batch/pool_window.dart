// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolWindow {
  /// Whether automatic updates are enabled on the virtual machine. Defaults to `true`.
  final pulumi.Input<bool?>? enableAutomaticUpdates;

  /// Creates a new [PoolWindow].
  /// [enableAutomaticUpdates] Whether automatic updates are enabled on the virtual machine. Defaults to `true`.
  const PoolWindow({
    this.enableAutomaticUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
    };
  }

  factory PoolWindow.fromMap(Map<String, dynamic> map) {
    return PoolWindow(
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
