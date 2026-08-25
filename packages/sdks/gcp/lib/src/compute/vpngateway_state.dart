// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpngateway_params.dart';

/// Input properties used for looking up and filtering VPNGateway resources.
class VPNGatewayState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// The unique identifier for the resource.
  final pulumi.Input<int?>? gatewayId;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The network this VPN gateway is accepting traffic for.
  final pulumi.Input<String?>? network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<VPNGatewayParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region this gateway should sit in.
  final pulumi.Input<String?>? region;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [VPNGatewayState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [gatewayId] The unique identifier for the resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The network this VPN gateway is accepting traffic for.
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region this gateway should sit in.
  /// [selfLink] The URI of the created resource.
  const VPNGatewayState({
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.gatewayId,
    this.name,
    this.network,
    this.params,
    this.project,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'gatewayId': ?gatewayId,
      'name': ?name,
      'network': ?network,
      'params': ?pulumi.Input.mapOptionalInputValue<VPNGatewayParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory VPNGatewayState.fromMap(Map<String, dynamic> map) {
    return VPNGatewayState(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VPNGatewayParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
