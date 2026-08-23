// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_vpn_gateway_interface.dart';
import 'external_vpn_gateway_params.dart';

/// {@template pulumi_compute_external_vpn_gateway_external_vpn_gateway_args_doc}
/// The set of arguments for ExternalVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_external_vpn_gateway_external_vpn_gateway_args_doc}
class ExternalVpnGatewayArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// A list of interfaces on this external VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalVpnGatewayInterface>>? interfaces;
  /// Labels for the external VPN gateway resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<ExternalVpnGatewayParams>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Indicates the redundancy type of this external VPN gateway
  /// Possible values are: `FOUR_IPS_REDUNDANCY`, `SINGLE_IP_INTERNALLY_REDUNDANT`, `TWO_IPS_REDUNDANCY`.
  final pulumi.Input<String>? redundancyType;

  /// Creates a new [ExternalVpnGatewayArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [interfaces] A list of interfaces on this external VPN gateway.
  /// [labels] Labels for the external VPN gateway resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [redundancyType] Indicates the redundancy type of this external VPN gateway
  const ExternalVpnGatewayArgs({
    this.deletionPolicy,
    this.description,
    this.interfaces,
    this.labels,
    this.name,
    this.params,
    this.project,
    this.redundancyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<ExternalVpnGatewayInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<ExternalVpnGatewayInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<ExternalVpnGatewayParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'redundancyType': ?redundancyType,
    };
  }

  factory ExternalVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExternalVpnGatewayInterface>(guardedValue, (value) => ExternalVpnGatewayInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalVpnGatewayParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redundancyType: (() { final guardedValue = map['redundancyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
