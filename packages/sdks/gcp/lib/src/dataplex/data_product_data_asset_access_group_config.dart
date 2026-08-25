// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProductDataAssetAccessGroupConfig {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> accessGroup;
  /// IAM roles granted on the resource.
  final pulumi.Input<List<String>?>? iamRoles;

  /// Creates a new [DataProductDataAssetAccessGroupConfig].
  /// [accessGroup] The identifier for this object. Format specified above.
  /// [iamRoles] IAM roles granted on the resource.
  const DataProductDataAssetAccessGroupConfig({
    required this.accessGroup,
    this.iamRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroup': accessGroup,
      'iamRoles': ?iamRoles,
    };
  }

  factory DataProductDataAssetAccessGroupConfig.fromMap(Map<String, dynamic> map) {
    return DataProductDataAssetAccessGroupConfig(
      accessGroup: pulumi.Input.fromValue(map['accessGroup'] as String),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
