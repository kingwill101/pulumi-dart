// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_signal_rcustom_certificate_args_doc}
/// The set of arguments for SignalRCustomCertificate.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_signal_rcustom_certificate_args_doc}
class SignalRCustomCertificateArgs {
  /// Custom certificate name
  final pulumi.Input<String>? certificateName;
  /// Base uri of the KeyVault that stores certificate.
  final pulumi.Input<String> keyVaultBaseUri;
  /// Certificate secret name.
  final pulumi.Input<String> keyVaultSecretName;
  /// Certificate secret version.
  final pulumi.Input<String>? keyVaultSecretVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [SignalRCustomCertificateArgs].
  /// [certificateName] Custom certificate name
  /// [keyVaultBaseUri] Base uri of the KeyVault that stores certificate.
  /// [keyVaultSecretName] Certificate secret name.
  /// [keyVaultSecretVersion] Certificate secret version.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  SignalRCustomCertificateArgs({
    pulumi.Output<String>? certificateName,
    required pulumi.Output<String> keyVaultBaseUri,
    required pulumi.Output<String> keyVaultSecretName,
    pulumi.Output<String>? keyVaultSecretVersion,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      keyVaultBaseUri = pulumi.Input.asInput<String>(keyVaultBaseUri),
      keyVaultSecretName = pulumi.Input.asInput<String>(keyVaultSecretName),
      keyVaultSecretVersion = pulumi.Input.asOptionalInput<String>(keyVaultSecretVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'keyVaultBaseUri': keyVaultBaseUri,
      'keyVaultSecretName': keyVaultSecretName,
      'keyVaultSecretVersion': ?keyVaultSecretVersion,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory SignalRCustomCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SignalRCustomCertificateArgs(
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      keyVaultBaseUri: pulumi.Output.create<String>(map['keyVaultBaseUri'] as String),
      keyVaultSecretName: pulumi.Output.create<String>(map['keyVaultSecretName'] as String),
      keyVaultSecretVersion: map['keyVaultSecretVersion'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretVersion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

