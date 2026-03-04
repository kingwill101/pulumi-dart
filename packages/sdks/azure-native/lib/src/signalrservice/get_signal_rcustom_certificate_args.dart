// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_get_signal_rcustom_certificate_args_doc}
/// Arguments for getSignalRCustomCertificate.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_get_signal_rcustom_certificate_args_doc}
class GetSignalRCustomCertificateArgs {
  /// Custom certificate name
  final pulumi.Input<String> certificateName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetSignalRCustomCertificateArgs].
  /// [certificateName] Custom certificate name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetSignalRCustomCertificateArgs({
    required this.certificateName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetSignalRCustomCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalRCustomCertificateArgs(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
