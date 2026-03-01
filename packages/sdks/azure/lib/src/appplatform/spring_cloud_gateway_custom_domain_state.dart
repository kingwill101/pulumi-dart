// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudGatewayCustomDomain resources.
class SpringCloudGatewayCustomDomainState {
  /// The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  final pulumi.Input<String>? springCloudGatewayId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [SpringCloudGatewayCustomDomainState].
  /// [name] The name which should be used for this Spring Cloud Gateway Custom Domain. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  /// [springCloudGatewayId] The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Custom Domain to be created.
  /// [thumbprint] Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Gateway Custom Domain.
  SpringCloudGatewayCustomDomainState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudGatewayId,
    pulumi.Output<String>? thumbprint,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudGatewayId = pulumi.Input.asOptionalInput<String>(springCloudGatewayId),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudGatewayId': ?springCloudGatewayId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudGatewayCustomDomainState.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayCustomDomainState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudGatewayId: map['springCloudGatewayId'] == null ? null : pulumi.Output.create<String>(map['springCloudGatewayId'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

