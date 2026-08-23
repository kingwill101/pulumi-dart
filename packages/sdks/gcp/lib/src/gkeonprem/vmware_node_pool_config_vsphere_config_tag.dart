// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareNodePoolConfigVsphereConfigTag {
  /// The Vsphere tag category.
  final pulumi.Input<String>? category;
  /// The Vsphere tag name.
  final pulumi.Input<String>? tag;

  /// Creates a new [VMwareNodePoolConfigVsphereConfigTag].
  /// [category] The Vsphere tag category.
  /// [tag] The Vsphere tag name.
  const VMwareNodePoolConfigVsphereConfigTag({
    this.category,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'tag': ?tag,
    };
  }

  factory VMwareNodePoolConfigVsphereConfigTag.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfigVsphereConfigTag(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
