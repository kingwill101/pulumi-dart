// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAssetAccessGroupConfig {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> accessGroup;
  /// IAM roles granted on the resource.
  final pulumi.Input<List<String>>? iamRoles;

  /// Creates a new [DataAssetAccessGroupConfig].
  /// [accessGroup] The identifier for this object. Format specified above.
  /// [iamRoles] IAM roles granted on the resource.
  const DataAssetAccessGroupConfig({
    required this.accessGroup,
    this.iamRoles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroup': accessGroup,
      'iamRoles': ?iamRoles,
    };
  }

  factory DataAssetAccessGroupConfig.fromMap(Map<String, dynamic> map) {
    return DataAssetAccessGroupConfig(
      accessGroup: pulumi.Input.fromValue(map['accessGroup'] as String),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
