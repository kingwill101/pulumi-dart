// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudCustomDomain resources.
class SpringCloudCustomDomainState {
  /// Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `thumbprint` is specified
  final pulumi.Input<String>? certificateName;

  /// Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudAppId;

  /// Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `certificate_name` is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [SpringCloudCustomDomainState].
  /// [certificateName] Specifies the name of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `thumbprint` is specified
  /// [name] Specifies the name of the Spring Cloud Custom Domain. Changing this forces a new resource to be created.
  /// [springCloudAppId] Specifies the resource ID of the Spring Cloud Application. Changing this forces a new resource to be created.
  /// [thumbprint] Specifies the thumbprint of the Spring Cloud Certificate that binds to the Spring Cloud Custom Domain. Required when `certificate_name` is specified. Changing this forces a new resource to be created.
  SpringCloudCustomDomainState({
    this.certificateName,
    this.name,
    this.springCloudAppId,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'name': ?name,
      'springCloudAppId': ?springCloudAppId,
      'thumbprint': ?thumbprint,
    };
  }

  factory SpringCloudCustomDomainState.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomDomainState(
      certificateName: (() {
        final guardedValue = map['certificateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      springCloudAppId: (() {
        final guardedValue = map['springCloudAppId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      thumbprint: (() {
        final guardedValue = map['thumbprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
