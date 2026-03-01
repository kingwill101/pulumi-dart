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
    pulumi.Output<VPNTunnelCipherSuite>? cipherSuite,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? detailedStatus,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<int>? ikeVersion,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? localTrafficSelectors,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peerExternalGateway,
    pulumi.Output<int>? peerExternalGatewayInterface,
    pulumi.Output<String>? peerGcpGateway,
    pulumi.Output<String>? peerIp,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? remoteTrafficSelectors,
    pulumi.Output<String>? router,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? sharedSecret,
    pulumi.Output<String>? sharedSecretHash,
    pulumi.Output<String>? sharedSecretWo,
    pulumi.Output<String>? sharedSecretWoVersion,
    pulumi.Output<String>? targetVpnGateway,
    pulumi.Output<String>? tunnelId,
    pulumi.Output<String>? vpnGateway,
    pulumi.Output<int>? vpnGatewayInterface,
  }) :
      cipherSuite = pulumi.Input.asOptionalInput<VPNTunnelCipherSuite>(cipherSuite),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      detailedStatus = pulumi.Input.asOptionalInput<String>(detailedStatus),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      ikeVersion = pulumi.Input.asOptionalInput<int>(ikeVersion),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      localTrafficSelectors = pulumi.Input.asOptionalInput<List<String>>(localTrafficSelectors),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerExternalGateway = pulumi.Input.asOptionalInput<String>(peerExternalGateway),
      peerExternalGatewayInterface = pulumi.Input.asOptionalInput<int>(peerExternalGatewayInterface),
      peerGcpGateway = pulumi.Input.asOptionalInput<String>(peerGcpGateway),
      peerIp = pulumi.Input.asOptionalInput<String>(peerIp),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      remoteTrafficSelectors = pulumi.Input.asOptionalInput<List<String>>(remoteTrafficSelectors),
      router = pulumi.Input.asOptionalInput<String>(router),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      sharedSecret = pulumi.Input.asOptionalInput<String>(sharedSecret),
      sharedSecretHash = pulumi.Input.asOptionalInput<String>(sharedSecretHash),
      sharedSecretWo = pulumi.Input.asOptionalInput<String>(sharedSecretWo),
      sharedSecretWoVersion = pulumi.Input.asOptionalInput<String>(sharedSecretWoVersion),
      targetVpnGateway = pulumi.Input.asOptionalInput<String>(targetVpnGateway),
      tunnelId = pulumi.Input.asOptionalInput<String>(tunnelId),
      vpnGateway = pulumi.Input.asOptionalInput<String>(vpnGateway),
      vpnGatewayInterface = pulumi.Input.asOptionalInput<int>(vpnGatewayInterface);

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
      cipherSuite: map['cipherSuite'] == null ? null : pulumi.Output.create<VPNTunnelCipherSuite>(VPNTunnelCipherSuite.fromMap((map['cipherSuite'] as Map).cast<String, dynamic>())),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      detailedStatus: map['detailedStatus'] == null ? null : pulumi.Output.create<String>(map['detailedStatus'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      ikeVersion: map['ikeVersion'] == null ? null : pulumi.Output.create<int>(map['ikeVersion'] as int),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      localTrafficSelectors: map['localTrafficSelectors'] == null ? null : pulumi.Output.create<List<String>>((map['localTrafficSelectors'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerExternalGateway: map['peerExternalGateway'] == null ? null : pulumi.Output.create<String>(map['peerExternalGateway'] as String),
      peerExternalGatewayInterface: map['peerExternalGatewayInterface'] == null ? null : pulumi.Output.create<int>(map['peerExternalGatewayInterface'] as int),
      peerGcpGateway: map['peerGcpGateway'] == null ? null : pulumi.Output.create<String>(map['peerGcpGateway'] as String),
      peerIp: map['peerIp'] == null ? null : pulumi.Output.create<String>(map['peerIp'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remoteTrafficSelectors: map['remoteTrafficSelectors'] == null ? null : pulumi.Output.create<List<String>>((map['remoteTrafficSelectors'] as List).cast<String>()),
      router: map['router'] == null ? null : pulumi.Output.create<String>(map['router'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      sharedSecret: map['sharedSecret'] == null ? null : pulumi.Output.create<String>(map['sharedSecret'] as String),
      sharedSecretHash: map['sharedSecretHash'] == null ? null : pulumi.Output.create<String>(map['sharedSecretHash'] as String),
      sharedSecretWo: map['sharedSecretWo'] == null ? null : pulumi.Output.create<String>(map['sharedSecretWo'] as String),
      sharedSecretWoVersion: map['sharedSecretWoVersion'] == null ? null : pulumi.Output.create<String>(map['sharedSecretWoVersion'] as String),
      targetVpnGateway: map['targetVpnGateway'] == null ? null : pulumi.Output.create<String>(map['targetVpnGateway'] as String),
      tunnelId: map['tunnelId'] == null ? null : pulumi.Output.create<String>(map['tunnelId'] as String),
      vpnGateway: map['vpnGateway'] == null ? null : pulumi.Output.create<String>(map['vpnGateway'] as String),
      vpnGatewayInterface: map['vpnGatewayInterface'] == null ? null : pulumi.Output.create<int>(map['vpnGatewayInterface'] as int),
    );
  }
}

