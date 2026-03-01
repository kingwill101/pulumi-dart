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
    pulumi.Output<String>? certificateBlobBase64,
    pulumi.Output<String>? certificatePassword,
    pulumi.Output<String>? containerAppEnvironmentId,
    pulumi.Output<String>? dnsSuffix,
  }) :
      certificateBlobBase64 = pulumi.Input.asOptionalInput<String>(certificateBlobBase64),
      certificatePassword = pulumi.Input.asOptionalInput<String>(certificatePassword),
      containerAppEnvironmentId = pulumi.Input.asOptionalInput<String>(containerAppEnvironmentId),
      dnsSuffix = pulumi.Input.asOptionalInput<String>(dnsSuffix);

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
      certificateBlobBase64: map['certificateBlobBase64'] == null ? null : pulumi.Output.create<String>(map['certificateBlobBase64'] as String),
      certificatePassword: map['certificatePassword'] == null ? null : pulumi.Output.create<String>(map['certificatePassword'] as String),
      containerAppEnvironmentId: map['containerAppEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      dnsSuffix: map['dnsSuffix'] == null ? null : pulumi.Output.create<String>(map['dnsSuffix'] as String),
    );
  }
}

