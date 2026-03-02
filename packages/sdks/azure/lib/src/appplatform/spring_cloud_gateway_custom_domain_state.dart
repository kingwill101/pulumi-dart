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
    this.name,
    this.springCloudGatewayId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudGatewayId': ?springCloudGatewayId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudGatewayCustomDomainState.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayCustomDomainState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      springCloudGatewayId: map['springCloudGatewayId'] == null ? null : (map['springCloudGatewayId'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

