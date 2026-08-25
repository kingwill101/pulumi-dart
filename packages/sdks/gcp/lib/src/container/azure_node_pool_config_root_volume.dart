// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureNodePoolConfigRootVolume {
  /// Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final pulumi.Input<int?>? sizeGib;

  /// Creates a new [AzureNodePoolConfigRootVolume].
  /// [sizeGib] Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  const AzureNodePoolConfigRootVolume({
    this.sizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGib': ?sizeGib,
    };
  }

  factory AzureNodePoolConfigRootVolume.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolConfigRootVolume(
      sizeGib: (() { final guardedValue = map['sizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
