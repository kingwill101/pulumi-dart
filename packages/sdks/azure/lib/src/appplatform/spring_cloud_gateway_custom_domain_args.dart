// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_gateway_custom_domain_spring_cloud_gateway_custom_domain_args_doc}
/// The set of arguments for SpringCloudGatewayCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_gateway_custom_domain_spring_cloud_gateway_custom_domain_args_doc}
class SpringCloudGatewayCustomDomainArgs {
  /// The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  final pulumi.Input<String> springCloudGatewayId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain.
  final pulumi.Input<String?>? thumbprint;

  /// Creates a new [SpringCloudGatewayCustomDomainArgs].
  /// [name] The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  /// [springCloudGatewayId] The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  /// [thumbprint] Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain.
  const SpringCloudGatewayCustomDomainArgs({
    this.name,
    required this.springCloudGatewayId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudGatewayId': springCloudGatewayId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudGatewayCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayCustomDomainArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudGatewayId: pulumi.Input.fromValue(map['springCloudGatewayId'] as String),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
