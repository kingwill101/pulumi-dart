// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudApiPortalCustomDomain resources.
class SpringCloudApiPortalCustomDomainState {
  /// The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
  final pulumi.Input<String>? springCloudApiPortalId;
  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [SpringCloudApiPortalCustomDomainState].
  /// [name] The name which should be used for this Spring Cloud API Portal Domain. Changing this forces a new Spring Cloud API Portal Domain to be created.
  /// [springCloudApiPortalId] The ID of the Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal Domain to be created.
  /// [thumbprint] Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud API Portal Domain.
  SpringCloudApiPortalCustomDomainState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudApiPortalId,
    pulumi.Output<String>? thumbprint,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudApiPortalId = pulumi.Input.asOptionalInput<String>(springCloudApiPortalId),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudApiPortalId': ?springCloudApiPortalId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudApiPortalCustomDomainState.fromMap(Map<String, dynamic> map) {
    return SpringCloudApiPortalCustomDomainState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudApiPortalId: map['springCloudApiPortalId'] == null ? null : pulumi.Output.create<String>(map['springCloudApiPortalId'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

