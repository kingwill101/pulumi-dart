// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_vpn_gateway_interface.dart';

/// Input properties used for looking up and filtering ExternalVpnGateway resources.
class ExternalVpnGatewayState {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A list of interfaces on this external VPN gateway.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalVpnGatewayInterface>>? interfaces;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels for the external VPN gateway resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Indicates the redundancy type of this external VPN gateway
  /// Possible values are: `FOUR_IPS_REDUNDANCY`, `SINGLE_IP_INTERNALLY_REDUNDANT`, `TWO_IPS_REDUNDANCY`.
  final pulumi.Input<String>? redundancyType;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [ExternalVpnGatewayState].
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interfaces] A list of interfaces on this external VPN gateway.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels for the external VPN gateway resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [redundancyType] Indicates the redundancy type of this external VPN gateway
  /// [selfLink] The URI of the created resource.
  ExternalVpnGatewayState({
    this.description,
    this.effectiveLabels,
    this.interfaces,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.redundancyType,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<ExternalVpnGatewayInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<ExternalVpnGatewayInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'redundancyType': ?redundancyType,
      'selfLink': ?selfLink,
    };
  }

  factory ExternalVpnGatewayState.fromMap(Map<String, dynamic> map) {
    return ExternalVpnGatewayState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      interfaces: map['interfaces'] == null ? null : (pulumi.Input.decodeList<ExternalVpnGatewayInterface>(map['interfaces']!, (value) => ExternalVpnGatewayInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      redundancyType: map['redundancyType'] == null ? null : (map['redundancyType']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
    );
  }
}

