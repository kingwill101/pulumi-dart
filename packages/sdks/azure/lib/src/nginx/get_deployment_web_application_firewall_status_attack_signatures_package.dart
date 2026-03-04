// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage {
  final pulumi.Input<String> revisionDatetime;
  final pulumi.Input<String> version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage({
    required this.revisionDatetime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': revisionDatetime,
      'version': version,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage(
      revisionDatetime: pulumi.Input.fromValue(
        map['revisionDatetime'] as String,
      ),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
