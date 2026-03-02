// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpntunnel_cipher_suite.dart';

/// Input properties used for looking up and filtering VPNTunnel resources.
class VPNTunnelState {
  /// User specified list of ciphers to use for the phase 1 and phase 2 of the IKE protocol.
  /// Structure is documented below.
  final pulumi.Input<VPNTunnelCipherSuite>? cipherSuite;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Detailed status message for the VPN tunnel.
  final pulumi.Input<String>? detailedStatus;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// IKE protocol version to use when establishing the VPN tunnel with
  /// peer VPN gateway.
  /// Acceptable IKE versions are 1 or 2. Default version is 2.
  final pulumi.Input<int>? ikeVersion;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this VpnTunnel.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Local traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  final pulumi.Input<List<String>>? localTrafficSelectors;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63
  /// characters long and match the regular expression
  /// `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
  final pulumi.Input<String>? peerExternalGateway;
  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
  final pulumi.Input<int>? peerExternalGatewayInterface;
  /// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
  /// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
  /// ID in the peer GCP VPN gateway.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  final pulumi.Input<String>? peerGcpGateway;
  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  final pulumi.Input<String>? peerIp;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region where the tunnel is located. If unset, is set to the region of `target_vpn_gateway`.
  final pulumi.Input<String>? region;
  /// Remote traffic selector to use when establishing the VPN tunnel with
  /// peer VPN gateway. The value should be a CIDR formatted string,
  /// for example `192.168.0.0/16`. The ranges should be disjoint.
  /// Only IPv4 is supported.
  final pulumi.Input<List<String>>? remoteTrafficSelectors;
  /// URL of router resource to be used for dynamic routing.
  final pulumi.Input<String>? router;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? sharedSecret;
  /// Hash of the shared secret.
  final pulumi.Input<String>? sharedSecretHash;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Shared secret used to set the secure session between the Cloud VPN
  /// gateway and the peer VPN gateway.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `shared_secret` or `shared_secret_wo` can only be set.
  final pulumi.Input<String>? sharedSecretWo;
  /// Triggers update of `shared_secret_wo` write-only. Increment this value when an update to `shared_secret_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String>? sharedSecretWoVersion;
  /// URL of the Target VPN gateway with which this VPN tunnel is
  /// associated.
  final pulumi.Input<String>? targetVpnGateway;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? tunnelId;
  /// URL of the VPN gateway with which this VPN tunnel is associated.
  /// This must be used if a High Availability VPN gateway resource is created.
  /// This field must reference a `gcp.compute.HaVpnGateway` resource.
  final pulumi.Input<String>? vpnGateway;
  /// The interface ID of the VPN gateway with which this VPN tunnel is associated.
  final pulumi.Input<int>? vpnGatewayInterface;

  /// Creates a new [VPNTunnelState].
  /// [cipherSuite] User specified list of ciphers to use for the phase 1 and phase 2 of the IKE protocol.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [detailedStatus] Detailed status message for the VPN tunnel.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ikeVersion] IKE protocol version to use when establishing the VPN tunnel with
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this VpnTunnel.
  /// [localTrafficSelectors] Local traffic selector to use when establishing the VPN tunnel with
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [peerExternalGateway] URL of the peer side external VPN gateway to which this VPN tunnel is connected.
  /// [peerExternalGatewayInterface] The interface ID of the external VPN gateway to which this VPN tunnel is connected.
  /// [peerGcpGateway] URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
  /// [peerIp] IP address of the peer VPN gateway. Only IPv4 is supported.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region where the tunnel is located. If unset, is set to the region of `target_vpn_gateway`.
  /// [remoteTrafficSelectors] Remote traffic selector to use when establishing the VPN tunnel with
  /// [router] URL of router resource to be used for dynamic routing.
  /// [selfLink] The URI of the created resource.
  /// [sharedSecret] Shared secret used to set the secure session between the Cloud VPN
  /// [sharedSecretHash] Hash of the shared secret.
  /// [sharedSecretWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [sharedSecretWoVersion] Triggers update of `shared_secret_wo` write-only. Increment this value when an update to `shared_secret_wo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [targetVpnGateway] URL of the Target VPN gateway with which this VPN tunnel is
  /// [tunnelId] The unique identifier for the resource. This identifier is defined by the server.
  /// [vpnGateway] URL of the VPN gateway with which this VPN tunnel is associated.
  /// [vpnGatewayInterface] The interface ID of the VPN gateway with which this VPN tunnel is associated.
  VPNTunnelState({
    this.cipherSuite,
    this.creationTimestamp,
    this.description,
    this.detailedStatus,
    this.effectiveLabels,
    this.ikeVersion,
    this.labelFingerprint,
    this.labels,
    this.localTrafficSelectors,
    this.name,
    this.peerExternalGateway,
    this.peerExternalGatewayInterface,
    this.peerGcpGateway,
    this.peerIp,
    this.project,
    this.pulumiLabels,
    this.region,
    this.remoteTrafficSelectors,
    this.router,
    this.selfLink,
    this.sharedSecret,
    this.sharedSecretHash,
    this.sharedSecretWo,
    this.sharedSecretWoVersion,
    this.targetVpnGateway,
    this.tunnelId,
    this.vpnGateway,
    this.vpnGatewayInterface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuite': ?pulumi.Input.mapOptionalInputValue<VPNTunnelCipherSuite, Map<String, dynamic>>(cipherSuite, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'detailedStatus': ?detailedStatus,
      'effectiveLabels': ?effectiveLabels,
      'ikeVersion': ?ikeVersion,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'localTrafficSelectors': ?localTrafficSelectors,
      'name': ?name,
      'peerExternalGateway': ?peerExternalGateway,
      'peerExternalGatewayInterface': ?peerExternalGatewayInterface,
      'peerGcpGateway': ?peerGcpGateway,
      'peerIp': ?peerIp,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'remoteTrafficSelectors': ?remoteTrafficSelectors,
      'router': ?router,
      'selfLink': ?selfLink,
      'sharedSecret': ?sharedSecret,
      'sharedSecretHash': ?sharedSecretHash,
      'sharedSecretWo': ?sharedSecretWo,
      'sharedSecretWoVersion': ?sharedSecretWoVersion,
      'targetVpnGateway': ?targetVpnGateway,
      'tunnelId': ?tunnelId,
      'vpnGateway': ?vpnGateway,
      'vpnGatewayInterface': ?vpnGatewayInterface,
    };
  }

  factory VPNTunnelState.fromMap(Map<String, dynamic> map) {
    return VPNTunnelState(
      cipherSuite: map['cipherSuite'] == null ? null : (VPNTunnelCipherSuite.fromMap((map['cipherSuite']! as Map).cast<String, dynamic>())).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      detailedStatus: map['detailedStatus'] == null ? null : (map['detailedStatus']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      ikeVersion: map['ikeVersion'] == null ? null : (map['ikeVersion']! as int).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      localTrafficSelectors: map['localTrafficSelectors'] == null ? null : ((map['localTrafficSelectors']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerExternalGateway: map['peerExternalGateway'] == null ? null : (map['peerExternalGateway']! as String).input(),
      peerExternalGatewayInterface: map['peerExternalGatewayInterface'] == null ? null : (map['peerExternalGatewayInterface']! as int).input(),
      peerGcpGateway: map['peerGcpGateway'] == null ? null : (map['peerGcpGateway']! as String).input(),
      peerIp: map['peerIp'] == null ? null : (map['peerIp']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      remoteTrafficSelectors: map['remoteTrafficSelectors'] == null ? null : ((map['remoteTrafficSelectors']! as List).cast<String>()).input(),
      router: map['router'] == null ? null : (map['router']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      sharedSecret: map['sharedSecret'] == null ? null : (map['sharedSecret']! as String).input(),
      sharedSecretHash: map['sharedSecretHash'] == null ? null : (map['sharedSecretHash']! as String).input(),
      sharedSecretWo: map['sharedSecretWo'] == null ? null : (map['sharedSecretWo']! as String).input(),
      sharedSecretWoVersion: map['sharedSecretWoVersion'] == null ? null : (map['sharedSecretWoVersion']! as String).input(),
      targetVpnGateway: map['targetVpnGateway'] == null ? null : (map['targetVpnGateway']! as String).input(),
      tunnelId: map['tunnelId'] == null ? null : (map['tunnelId']! as String).input(),
      vpnGateway: map['vpnGateway'] == null ? null : (map['vpnGateway']! as String).input(),
      vpnGatewayInterface: map['vpnGatewayInterface'] == null ? null : (map['vpnGatewayInterface']! as int).input(),
    );
  }
}

