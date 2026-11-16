// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSemanticGovernancePolicyEngineGatewayConfig {
  /// Additional consumer projects permitted to attach their own PSC endpoint
  /// to this gateway's ServiceAttachment. This is the "decoupled" mode, where
  /// the customer creates the PSC endpoint in a project other than this
  /// gateway's network project. Each listed project is VPC-SC enforced: it
  /// must be within the caller's service perimeter. The owning
  /// SemanticGovernancePolicyEngine's own project is always permitted
  /// implicitly and need not be listed. Format: projects/{project} (ID or number).
  final pulumi.Input<List<String>?>? allowedProjects;
  /// (Output)
  /// The fully qualified record name of the A-record the backend writes into
  /// `dnsZoneName` for this gateway. Populated after the gateway reaches
  /// `ACTIVE`; empty until then.
  final pulumi.Input<String?>? dnsRecord;
  /// The name of the private Cloud DNS managed zone in which the backend
  /// creates the DNS record set for this gateway's PSC endpoint. This is the
  /// managed-zone resource name, not a fully-qualified domain name. The zone
  /// must already exist and be attached to the gateway's VPC at provision
  /// time. The name must match `^[a-z0-9.-]{1,63}$`. Must be set together
  /// with `network` and `subnetwork` (all three or none).
  final pulumi.Input<String?>? dnsZoneName;
  /// (Output)
  /// The private IP address of the PSC endpoint. This field is currently
  /// always empty and is slated for deprecation; do not depend on it.
  final pulumi.Input<String?>? ipAddress;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// The URI of the network resource where the gateway's PSC endpoint is
  /// provisioned. Format: projects/{project}/global/networks/{network}.
  /// `network`, `subnetwork`, and `dnsZoneName` must all be set together
  /// or all omitted; setting only some is rejected by the API.
  final pulumi.Input<String?>? network;
  /// (Output)
  /// The self-link or name of the Private Service Connect endpoint forwarding
  /// rule.
  final pulumi.Input<String?>? pscEndpoint;
  /// (Output)
  /// The state of the Gateway configuration. One of: STATE_UNSPECIFIED,
  /// PROVISIONING, ACTIVE, DEPROVISIONING, INACTIVE, FAILED. A `FAILED`
  /// gateway is surfaced here without a provider error; the engine as a
  /// whole may still be `ACTIVE`.
  final pulumi.Input<String?>? state;
  /// The URI of the subnetwork resource where the gateway's PSC endpoint is
  /// provisioned. Format:
  /// projects/{project}/regions/{region}/subnetworks/{subnetwork}. Must be
  /// set together with `network` and `dnsZoneName` (all three or none).
  final pulumi.Input<String?>? subnetwork;

  /// Creates a new [AiSemanticGovernancePolicyEngineGatewayConfig].
  /// [allowedProjects] Additional consumer projects permitted to attach their own PSC endpoint
  /// [dnsRecord] (Output)
  /// [dnsZoneName] The name of the private Cloud DNS managed zone in which the backend
  /// [ipAddress] (Output)
  /// [name] The identifier for this object. Format specified above.
  /// [network] The URI of the network resource where the gateway's PSC endpoint is
  /// [pscEndpoint] (Output)
  /// [state] (Output)
  /// [subnetwork] The URI of the subnetwork resource where the gateway's PSC endpoint is
  const AiSemanticGovernancePolicyEngineGatewayConfig({
    this.allowedProjects,
    this.dnsRecord,
    this.dnsZoneName,
    this.ipAddress,
    required this.name,
    this.network,
    this.pscEndpoint,
    this.state,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedProjects': ?allowedProjects,
      'dnsRecord': ?dnsRecord,
      'dnsZoneName': ?dnsZoneName,
      'ipAddress': ?ipAddress,
      'name': name,
      'network': ?network,
      'pscEndpoint': ?pscEndpoint,
      'state': ?state,
      'subnetwork': ?subnetwork,
    };
  }

  factory AiSemanticGovernancePolicyEngineGatewayConfig.fromMap(Map<String, dynamic> map) {
    return AiSemanticGovernancePolicyEngineGatewayConfig(
      allowedProjects: (() { final guardedValue = map['allowedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dnsRecord: (() { final guardedValue = map['dnsRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsZoneName: (() { final guardedValue = map['dnsZoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscEndpoint: (() { final guardedValue = map['pscEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
