// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_get_certificate_order_get_certificate_order_args_doc}
/// Arguments for getCertificateOrder.
/// {@endtemplate}
/// {@macro pulumi_appservice_get_certificate_order_get_certificate_order_args_doc}
class GetCertificateOrderArgs {
  /// The name of the App Service.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the App Service exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateOrderArgs].
  /// [name] The name of the App Service.
  /// [resourceGroupName] The Name of the Resource Group where the App Service exists.
  GetCertificateOrderArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateOrderArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateOrderArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

