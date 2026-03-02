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
  VMwareNodePoolConfigVsphereConfigTag({
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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
    );
  }
}

