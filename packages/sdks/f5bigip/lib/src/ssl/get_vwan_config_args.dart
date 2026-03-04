// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_get_vwan_config_get_vwan_config_args_doc}
/// Arguments for getVWanConfig.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_vwan_config_get_vwan_config_args_doc}
class GetVWanConfigArgs {
  /// Name of the Azure vWAN Name
  final pulumi.Input<String> azureVwanName;

  /// Name of the Azure vWAN resource group
  final pulumi.Input<String> azureVwanResourcegroup;

  /// Name of the Azure vWAN VPN site from which configuration to be download
  final pulumi.Input<String> azureVwanVpnsite;

  /// Creates a new [GetVWanConfigArgs].
  /// [azureVwanName] Name of the Azure vWAN Name
  /// [azureVwanResourcegroup] Name of the Azure vWAN resource group
  /// [azureVwanVpnsite] Name of the Azure vWAN VPN site from which configuration to be download
  GetVWanConfigArgs({
    required this.azureVwanName,
    required this.azureVwanResourcegroup,
    required this.azureVwanVpnsite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureVwanName': azureVwanName,
      'azureVwanResourcegroup': azureVwanResourcegroup,
      'azureVwanVpnsite': azureVwanVpnsite,
    };
  }

  factory GetVWanConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetVWanConfigArgs(
      azureVwanName: pulumi.Input.fromValue(map['azureVwanName'] as String),
      azureVwanResourcegroup: pulumi.Input.fromValue(
        map['azureVwanResourcegroup'] as String,
      ),
      azureVwanVpnsite: pulumi.Input.fromValue(
        map['azureVwanVpnsite'] as String,
      ),
    );
  }
}
