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
    this.certificateName,
    required this.keyVaultBaseUri,
    required this.keyVaultSecretName,
    this.keyVaultSecretVersion,
    required this.resourceGroupName,
    required this.resourceName,
  });

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
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      keyVaultBaseUri: (map['keyVaultBaseUri'] as String).input(),
      keyVaultSecretName: (map['keyVaultSecretName'] as String).input(),
      keyVaultSecretVersion: map['keyVaultSecretVersion'] == null ? null : (map['keyVaultSecretVersion']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

