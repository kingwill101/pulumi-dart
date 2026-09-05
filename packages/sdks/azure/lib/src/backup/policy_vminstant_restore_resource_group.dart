// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMInstantRestoreResourceGroup {
  /// The prefix for the `instantRestoreResourceGroup` name.
  final pulumi.Input<String> prefix;
  /// The suffix for the `instantRestoreResourceGroup` name.
  final pulumi.Input<String?>? suffix;

  /// Creates a new [PolicyVMInstantRestoreResourceGroup].
  /// [prefix] The prefix for the `instantRestoreResourceGroup` name.
  /// [suffix] The suffix for the `instantRestoreResourceGroup` name.
  const PolicyVMInstantRestoreResourceGroup({
    required this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'suffix': ?suffix,
    };
  }

  factory PolicyVMInstantRestoreResourceGroup.fromMap(Map<String, dynamic> map) {
    return PolicyVMInstantRestoreResourceGroup(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
