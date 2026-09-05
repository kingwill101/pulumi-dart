// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPodGroupResourceClaim references a dynamic resource claim that is shared across pods in the group.
class WorkloadPodGroupResourceClaim {
  /// name uniquely identifies this resource claim inside the group. This field is required. It must be a DNS_LABEL.
  final pulumi.Input<String> name;
  /// resourceClaimName is the name of a ResourceClaim object in the same namespace. This field is optional. If it is not specified, no resource claim is used. If set, it must be a DNS subdomain.
  final pulumi.Input<String?>? resourceClaimName;
  /// resourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace. This field is optional. If it is not specified, no resource claim template is used. If set, it must be a DNS subdomain.
  final pulumi.Input<String?>? resourceClaimTemplateName;

  /// Creates a new [WorkloadPodGroupResourceClaim].
  /// [name] name uniquely identifies this resource claim inside the group. This field is required. It must be a DNS_LABEL.
  /// [resourceClaimName] resourceClaimName is the name of a ResourceClaim object in the same namespace. This field is optional. If it is not specified, no resource claim is used. If set, it must be a DNS subdomain.
  /// [resourceClaimTemplateName] resourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace. This field is optional. If it is not specified, no resource claim template is used. If set, it must be a DNS subdomain.
  const WorkloadPodGroupResourceClaim({
    required this.name,
    this.resourceClaimName,
    this.resourceClaimTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceClaimName': ?resourceClaimName,
      'resourceClaimTemplateName': ?resourceClaimTemplateName,
    };
  }

  factory WorkloadPodGroupResourceClaim.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupResourceClaim(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceClaimName: (() { final guardedValue = map['resourceClaimName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaimTemplateName: (() { final guardedValue = map['resourceClaimTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
