// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_vpn_gateway_interface.dart';
import 'external_vpn_gateway_params.dart';

/// Input properties used for looking up and filtering ExternalVpnGateway resources.
class ExternalVpnGatewayState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// A list of interfaces on this external VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalVpnGatewayInterface>?>? interfaces;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String?>? labelFingerprint;
  /// Labels for the external VPN gateway resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<ExternalVpnGatewayParams?>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Indicates the redundancy type of this external VPN gateway
  /// Possible values are: `FOUR_IPS_REDUNDANCY`, `SINGLE_IP_INTERNALLY_REDUNDANT`, `TWO_IPS_REDUNDANCY`.
  final pulumi.Input<String?>? redundancyType;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [ExternalVpnGatewayState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interfaces] A list of interfaces on this external VPN gateway.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels for the external VPN gateway resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [redundancyType] Indicates the redundancy type of this external VPN gateway
  /// [selfLink] The URI of the created resource.
  const ExternalVpnGatewayState({
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.interfaces,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.params,
    this.project,
    this.pulumiLabels,
    this.redundancyType,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<ExternalVpnGatewayInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<ExternalVpnGatewayInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<ExternalVpnGatewayParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'redundancyType': ?redundancyType,
      'selfLink': ?selfLink,
    };
  }

  factory ExternalVpnGatewayState.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExternalVpnGatewayInterface>(guardedValue, (value) => ExternalVpnGatewayInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExternalVpnGatewayParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      redundancyType: (() { final guardedValue = map['redundancyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
