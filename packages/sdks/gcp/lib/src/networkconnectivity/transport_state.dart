// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Transport resources.
class TransportState {
  /// (Optional, Beta)
  /// Administrative state of the underlying connectivity. If set to true (default), connectivity should be available between your environments. If set to false, the connectivity over these links is disabled. Disabling your Transport does not affect billing, and retains the underlying network bandwidth associated with the connectivity.
  final pulumi.Input<bool?>? adminEnabled;
  /// List of IP Prefixes that will be advertised to the remote provider. Both IPv4 and IPv6 addresses are supported.
  final pulumi.Input<List<String>?>? advertisedRoutes;
  /// (Optional, Beta)
  /// Controls whether resources proposed by the Transport are automatically accepted on behalf of the user.
  final pulumi.Input<bool?>? autoAccept;
  /// Bandwidth of the Transport. This must be one of the supported bandwidths for the remote profile.
  final pulumi.Input<String?>? bandwidth;
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
  /// [Output only] Google-generated activation key. This is only output if the selected profile supports an OUTPUT key flow. Inputting this to the provider is only valid while the resource is in a PENDING_KEY state. Once the provider has accepted the key, the resource will move to the CONFIGURING state.
  final pulumi.Input<String?>? generatedActivationKey;
  /// (Optional, Beta)
  /// The NCC Hub that the Transport should attach to. The hub must be in the same project as the Transport.
  final pulumi.Input<String?>? hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// [Output only] The maximum transmission unit (MTU) of a packet that can be sent over this transport.
  final pulumi.Input<int?>? mtuLimit;
  /// Name of the resource, see google.aip.dev/122 for resource naming.
  final pulumi.Input<String?>? name;
  /// Resource URL of the Network that will be peered with this Transport. This field must be provided during resource creation and cannot be changed.
  final pulumi.Input<String?>? network;
  /// VPC Network URI that was created for the VPC Peering connection to the provided `network`. If VPC Peering is disconnected, this can be used to re-establish.
  final pulumi.Input<String?>? peeringNetwork;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Key used for establishing a connection with the remote transport. This key can only be provided if the profile supports an INPUT key flow and the resource is in the PENDING_KEY state.
  final pulumi.Input<String?>? providedActivationKey;
  /// (Optional, Beta)
  /// Controls whether a Routing VPC Spoke should be created and attached to the NCC Hub.
  final pulumi.Input<bool?>? pscRoutingEnabled;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of this resource. This is required to construct the resource name, but is not sent to the API since the region is already contained in the parent field.
  final pulumi.Input<String?>? region;
  /// The user supplied account id for the CSP associated with the remote profile.
  final pulumi.Input<String?>? remoteAccountId;
  /// Resource URL of the remoteTransportProfile that this Transport is
  /// connecting to.
  final pulumi.Input<String?>? remoteProfile;
  /// IP version stack for the established connectivity.
  /// Possible values are: `IPV4_IPV6`, `IPV4_ONLY`.
  final pulumi.Input<String?>? stackType;
  /// [Output Only] State of the underlying connectivity.
  final pulumi.Input<String?>? state;

  /// Creates a new [TransportState].
  /// [adminEnabled] (Optional, Beta)
  /// [advertisedRoutes] List of IP Prefixes that will be advertised to the remote provider. Both IPv4 and IPv6 addresses are supported.
  /// [autoAccept] (Optional, Beta)
  /// [bandwidth] Bandwidth of the Transport. This must be one of the supported bandwidths for the remote profile.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [generatedActivationKey] [Output only] Google-generated activation key. This is only output if the selected profile supports an OUTPUT key flow. Inputting this to the provider is only valid while the resource is in a PENDING_KEY state. Once the provider has accepted the key, the resource will move to the CONFIGURING state.
  /// [hub] (Optional, Beta)
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [mtuLimit] [Output only] The maximum transmission unit (MTU) of a packet that can be sent over this transport.
  /// [name] Name of the resource, see google.aip.dev/122 for resource naming.
  /// [network] Resource URL of the Network that will be peered with this Transport. This field must be provided during resource creation and cannot be changed.
  /// [peeringNetwork] VPC Network URI that was created for the VPC Peering connection to the provided `network`. If VPC Peering is disconnected, this can be used to re-establish.
  /// [project] The ID of the project in which the resource belongs.
  /// [providedActivationKey] Key used for establishing a connection with the remote transport. This key can only be provided if the profile supports an INPUT key flow and the resource is in the PENDING_KEY state.
  /// [pscRoutingEnabled] (Optional, Beta)
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of this resource. This is required to construct the resource name, but is not sent to the API since the region is already contained in the parent field.
  /// [remoteAccountId] The user supplied account id for the CSP associated with the remote profile.
  /// [remoteProfile] Resource URL of the remoteTransportProfile that this Transport is
  /// [stackType] IP version stack for the established connectivity.
  /// [state] [Output Only] State of the underlying connectivity.
  const TransportState({
    this.adminEnabled,
    this.advertisedRoutes,
    this.autoAccept,
    this.bandwidth,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.generatedActivationKey,
    this.hub,
    this.labels,
    this.mtuLimit,
    this.name,
    this.network,
    this.peeringNetwork,
    this.project,
    this.providedActivationKey,
    this.pscRoutingEnabled,
    this.pulumiLabels,
    this.region,
    this.remoteAccountId,
    this.remoteProfile,
    this.stackType,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'advertisedRoutes': ?advertisedRoutes,
      'autoAccept': ?autoAccept,
      'bandwidth': ?bandwidth,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'generatedActivationKey': ?generatedActivationKey,
      'hub': ?hub,
      'labels': ?labels,
      'mtuLimit': ?mtuLimit,
      'name': ?name,
      'network': ?network,
      'peeringNetwork': ?peeringNetwork,
      'project': ?project,
      'providedActivationKey': ?providedActivationKey,
      'pscRoutingEnabled': ?pscRoutingEnabled,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'remoteAccountId': ?remoteAccountId,
      'remoteProfile': ?remoteProfile,
      'stackType': ?stackType,
      'state': ?state,
    };
  }

  factory TransportState.fromMap(Map<String, dynamic> map) {
    return TransportState(
      adminEnabled: (() { final guardedValue = map['adminEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      advertisedRoutes: (() { final guardedValue = map['advertisedRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      autoAccept: (() { final guardedValue = map['autoAccept']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      generatedActivationKey: (() { final guardedValue = map['generatedActivationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hub: (() { final guardedValue = map['hub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mtuLimit: (() { final guardedValue = map['mtuLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringNetwork: (() { final guardedValue = map['peeringNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providedActivationKey: (() { final guardedValue = map['providedActivationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscRoutingEnabled: (() { final guardedValue = map['pscRoutingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAccountId: (() { final guardedValue = map['remoteAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteProfile: (() { final guardedValue = map['remoteProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
