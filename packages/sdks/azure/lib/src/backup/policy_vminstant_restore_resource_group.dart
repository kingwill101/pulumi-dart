// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMInstantRestoreResourceGroup {
  /// The prefix for the `instant_restore_resource_group` name.
  final pulumi.Input<String> prefix;
  /// The suffix for the `instant_restore_resource_group` name.
  final pulumi.Input<String>? suffix;

  /// Creates a new [PolicyVMInstantRestoreResourceGroup].
  /// [prefix] The prefix for the `instant_restore_resource_group` name.
  /// [suffix] The suffix for the `instant_restore_resource_group` name.
  PolicyVMInstantRestoreResourceGroup({
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
      prefix: (map['prefix'] as String).input(),
      suffix: map['suffix'] == null ? null : (map['suffix']! as String).input(),
    );
  }
}

