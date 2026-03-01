// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_trust_certificate_args_doc}
/// Arguments for getServerTrustCertificate.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_trust_certificate_args_doc}
class GetServerTrustCertificateArgs {
  /// Name of of the certificate to get.
  final pulumi.Input<String> certificateName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetServerTrustCertificateArgs].
  /// [certificateName] Name of of the certificate to get.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetServerTrustCertificateArgs({
    required pulumi.Output<String> certificateName,
    required pulumi.Output<String> managedInstanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      certificateName = pulumi.Input.asInput<String>(certificateName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetServerTrustCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTrustCertificateArgs(
      certificateName: pulumi.Output.create<String>(map['certificateName'] as String),
      managedInstanceName: pulumi.Output.create<String>(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

