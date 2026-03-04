// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type SinglePackageChange. The rule is used to alter the sql code for a package entities. The rule filter field can refer to one entity. The rule scope can be: Package
class SinglePackageChange {
  /// Optional. Sql code for package body
  final pulumi.Input<String>? packageBody;

  /// Optional. Sql code for package description
  final pulumi.Input<String>? packageDescription;

  /// Creates a new [SinglePackageChange].
  /// [packageBody] Optional. Sql code for package body
  /// [packageDescription] Optional. Sql code for package description
  SinglePackageChange({this.packageBody, this.packageDescription});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageBody': ?packageBody,
      'packageDescription': ?packageDescription,
    };
  }

  factory SinglePackageChange.fromMap(Map<String, dynamic> map) {
    return SinglePackageChange(
      packageBody: (() {
        final guardedValue = map['packageBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageDescription: (() {
        final guardedValue = map['packageDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
