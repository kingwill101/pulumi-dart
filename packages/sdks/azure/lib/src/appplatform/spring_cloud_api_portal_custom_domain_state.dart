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
  const SpringCloudApiPortalCustomDomainState({
    this.name,
    this.springCloudApiPortalId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudApiPortalId': ?springCloudApiPortalId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudApiPortalCustomDomainState.fromMap(Map<String, dynamic> map) {
    return SpringCloudApiPortalCustomDomainState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudApiPortalId: (() { final guardedValue = map['springCloudApiPortalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
