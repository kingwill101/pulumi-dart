// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolWindow {
  /// Whether automatic updates are enabled on the virtual machine.
  final pulumi.Input<bool> enableAutomaticUpdates;

  /// Creates a new [GetPoolWindow].
  /// [enableAutomaticUpdates] Whether automatic updates are enabled on the virtual machine.
  const GetPoolWindow({
    required this.enableAutomaticUpdates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAutomaticUpdates': enableAutomaticUpdates,
    };
  }

  factory GetPoolWindow.fromMap(Map<String, dynamic> map) {
    return GetPoolWindow(
      enableAutomaticUpdates: pulumi.Input.fromValue(map['enableAutomaticUpdates'] as bool),
    );
  }
}
