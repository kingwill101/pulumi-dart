// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentCustomDomain resources.
class EnvironmentCustomDomainState {
  /// The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  final pulumi.Input<String>? certificateBlobBase64;
  /// The password for the Certificate bundle.
  final pulumi.Input<String>? certificatePassword;
  /// The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerAppEnvironmentId;
  /// Custom DNS Suffix for the Container App Environment.
  final pulumi.Input<String>? dnsSuffix;

  /// Creates a new [EnvironmentCustomDomainState].
  /// [certificateBlobBase64] The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  /// [certificatePassword] The password for the Certificate bundle.
  /// [containerAppEnvironmentId] The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  /// [dnsSuffix] Custom DNS Suffix for the Container App Environment.
  EnvironmentCustomDomainState({
    this.certificateBlobBase64,
    this.certificatePassword,
    this.containerAppEnvironmentId,
    this.dnsSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBlobBase64': ?certificateBlobBase64,
      'certificatePassword': ?certificatePassword,
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'dnsSuffix': ?dnsSuffix,
    };
  }

  factory EnvironmentCustomDomainState.fromMap(Map<String, dynamic> map) {
    return EnvironmentCustomDomainState(
      certificateBlobBase64: map['certificateBlobBase64'] == null ? null : (map['certificateBlobBase64']! as String).input(),
      certificatePassword: map['certificatePassword'] == null ? null : (map['certificatePassword']! as String).input(),
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : (map['containerAppEnvironmentId']! as String).input(),
      dnsSuffix: map['dnsSuffix'] == null ? null : (map['dnsSuffix']! as String).input(),
    );
  }
}

