// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure rule type SinglePackageChange. The rule is used to alter the sql code for a package entities. The rule filter field can refer to one entity. The rule scope can be: Package
class SinglePackageChangeResponse {
  /// Optional. Sql code for package body
  final pulumi.Input<String> packageBody;
  /// Optional. Sql code for package description
  final pulumi.Input<String> packageDescription;

  /// Creates a new [SinglePackageChangeResponse].
  /// [packageBody] Optional. Sql code for package body
  /// [packageDescription] Optional. Sql code for package description
  SinglePackageChangeResponse({
    required this.packageBody,
    required this.packageDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageBody': packageBody,
      'packageDescription': packageDescription,
    };
  }

  factory SinglePackageChangeResponse.fromMap(Map<String, dynamic> map) {
    return SinglePackageChangeResponse(
      packageBody: pulumi.Input.fromValue(map['packageBody'] as String),
      packageDescription: pulumi.Input.fromValue(map['packageDescription'] as String),
    );
  }
}

