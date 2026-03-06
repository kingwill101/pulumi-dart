// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_api_portal_custom_domain_spring_cloud_api_portal_custom_domain_args_doc}
/// The set of arguments for SpringCloudApiPortalCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_api_portal_custom_domain_spring_cloud_api_portal_custom_domain_args_doc}
class SpringCloudApiPortalCustomDomainArgs {
  /// The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
  final pulumi.Input<String> springCloudApiPortalId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [SpringCloudApiPortalCustomDomainArgs].
  /// [name] The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
  /// [springCloudApiPortalId] The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
  /// [thumbprint] Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
  const SpringCloudApiPortalCustomDomainArgs({
    this.name,
    required this.springCloudApiPortalId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudApiPortalId': springCloudApiPortalId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudApiPortalCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudApiPortalCustomDomainArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudApiPortalId: pulumi.Input.fromValue(map['springCloudApiPortalId'] as String),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

