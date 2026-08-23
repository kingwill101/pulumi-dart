// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_forwarding_rule_metadata_filter.dart';
import 'global_forwarding_rule_service_directory_registrations.dart';

/// Input properties used for looking up and filtering GlobalForwardingRule resources.
class GlobalForwardingRuleState {
  /// (Optional, Beta)
  /// This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  final pulumi.Input<bool>? allowPscGlobalAccess;
  /// [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  final pulumi.Input<String>? baseForwardingRule;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Specifies the canary migration state for the backend buckets attached to this forwarding rule.
  /// Possible values are PREPARE, TEST_BY_PERCENTAGE, and TEST_ALL_TRAFFIC.
  /// To begin the migration from EXTERNAL to EXTERNAL_MANAGED, the state must be changed to
  /// PREPARE. The state must be changed to TEST_ALL_TRAFFIC before the loadBalancingScheme can be
  /// changed to EXTERNAL_MANAGED. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate
  /// traffic to backend buckets attached to this forwarding rule by percentage using
  /// externalManagedBackendBucketMigrationTestingPercentage.
  /// Rolling back a migration requires the states to be set in reverse order. So changing the
  /// scheme from EXTERNAL_MANAGED to EXTERNAL requires the state to be set to TEST_ALL_TRAFFIC at
  /// the same time. Optionally, the TEST_BY_PERCENTAGE state can be used to migrate some traffic
  /// back to EXTERNAL or PREPARE can be used to migrate all traffic back to EXTERNAL.
  /// Possible values are: `PREPARE`, `TEST_BY_PERCENTAGE`, `TEST_ALL_TRAFFIC`.
  final pulumi.Input<String>? externalManagedBackendBucketMigrationState;
  /// Determines the fraction of requests to backend buckets that should be processed by the Global
  /// external Application Load Balancer.
  /// The value of this field must be in the range [0, 100].
  /// This value can only be set if the loadBalancingScheme in the forwarding rule is set to
  /// EXTERNAL (when using the Classic ALB) and the migration state is TEST_BY_PERCENTAGE.
  final pulumi.Input<double>? externalManagedBackendBucketMigrationTestingPercentage;
  /// The unique identifier number for the resource. This identifier is defined by the server.
  final pulumi.Input<int>? forwardingRuleId;
  /// IP address for which this forwarding rule accepts traffic. When a client
  /// sends traffic to this IP address, the forwarding rule directs the traffic
  /// to the referenced `target`.
  /// While creating a forwarding rule, specifying an `IPAddress` is
  /// required under the following circumstances:
  /// * When the `target` is set to `targetGrpcProxy` and
  /// `validateForProxyless` is set to `true`, the
  /// `IPAddress` should be set to `0.0.0.0`.
  /// * When the `target` is a Private Service Connect Google APIs
  /// bundle, you must specify an `IPAddress`.
  /// Otherwise, you can optionally specify an IP address that references an
  /// existing static (reserved) IP address resource. When omitted, Google Cloud
  /// assigns an ephemeral IP address.
  /// Use one of the following formats to specify an IP address while creating a
  /// forwarding rule:
  /// * IP address number, as in `100.1.2.3`
  /// * IPv6 address range, as in `2600:1234::/96`
  /// * Full resource URL, as in
  /// `https://www.googleapis.com/compute/v1/projects/project_id/regions/region/addresses/address-name`
  /// * Partial URL or by name, as in:
  /// * `projects/project_id/regions/region/addresses/address-name`
  /// * `regions/region/addresses/address-name`
  /// * `global/addresses/address-name`
  /// * `address-name`
  /// The forwarding rule's `target`,
  /// and in most cases, also the `loadBalancingScheme`, determine the
  /// type of IP address that you can use. For detailed information, see
  /// [IP address
  /// specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// When reading an `IPAddress`, the API always returns the IP
  /// address number.
  final pulumi.Input<String>? ipAddress;
  /// The IP protocol to which this rule applies.
  /// For protocol forwarding, valid
  /// options are `TCP`, `UDP`, `ESP`,
  /// `AH`, `SCTP`, `ICMP` and
  /// `L3_DEFAULT`.
  /// The valid IP protocols are different for different load balancing products
  /// as described in [Load balancing
  /// features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  /// Possible values are: `TCP`, `UDP`, `ESP`, `AH`, `SCTP`, `ICMP`.
  final pulumi.Input<String>? ipProtocol;
  /// The IP Version that will be used by this global forwarding rule.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this forwarding rule.  A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Specifies the forwarding rule type.
  /// For more information about forwarding rules, refer to
  /// [Forwarding rule concepts](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts).
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `EXTERNAL_MANAGED`, `INTERNAL_MANAGED`, `INTERNAL_SELF_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;
  /// Opaque filter criteria used by Loadbalancer to restrict routing
  /// configuration to a limited set xDS compliant clients. In their xDS
  /// requests to Loadbalancer, xDS clients present node metadata. If a
  /// match takes place, the relevant routing configuration is made available
  /// to those proxies.
  /// For each metadataFilter in this list, if its filterMatchCriteria is set
  /// to MATCH_ANY, at least one of the filterLabels must match the
  /// corresponding label provided in the metadata. If its filterMatchCriteria
  /// is set to MATCH_ALL, then all of its filterLabels must match with
  /// corresponding labels in the provided metadata.
  /// metadataFilters specified here can be overridden by those specified in
  /// the UrlMap that this ForwardingRule references.
  /// metadataFilters only applies to Loadbalancers that have their
  /// loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// Structure is documented below.
  final pulumi.Input<List<GlobalForwardingRuleMetadataFilter>>? metadataFilters;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt).
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, the forwarding rule name must be a 1-20 characters string with
  /// lowercase letters and numbers and must start with a letter.
  final pulumi.Input<String>? name;
  /// This field is not used for external load balancing.
  /// For Internal TCP/UDP Load Balancing, this field identifies the network that
  /// the load balanced IP should belong to for this Forwarding Rule.
  /// If the subnetwork is specified, the network of the subnetwork will be used.
  /// If neither subnetwork nor this field is specified, the default network will
  /// be used.
  /// For Private Service Connect forwarding rules that forward traffic to Google
  /// APIs, a network must be provided.
  final pulumi.Input<String>? network;
  /// This signifies the networking tier used for configuring
  /// this load balancer and can only take the following values:
  /// `PREMIUM`, `STANDARD`.
  /// For regional ForwardingRule, the valid values are `PREMIUM` and
  /// `STANDARD`. For GlobalForwardingRule, the valid value is
  /// `PREMIUM`.
  /// If this field is not specified, it is assumed to be `PREMIUM`.
  /// If `IPAddress` is specified, this value must be equal to the
  /// networkTier of the Address.
  /// Possible values are: `PREMIUM`, `STANDARD`.
  final pulumi.Input<String>? networkTier;
  /// This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  final pulumi.Input<bool>? noAutomateDnsZone;
  /// The `portRange` field has the following limitations:
  /// * It requires that the forwarding rule `IPProtocol` be TCP, UDP, or SCTP,
  /// and
  /// * It's applicable only to the following products: external passthrough
  /// Network Load Balancers, internal and external proxy Network Load
  /// Balancers, internal and external Application Load Balancers, external
  /// protocol forwarding, and Classic VPN.
  /// * Some products have restrictions on what ports can be used. See
  /// [port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#port_specifications)
  /// for details.
  /// For external forwarding rules, two or more forwarding rules cannot use the
  /// same `[IPAddress, IPProtocol]` pair, and cannot have overlapping
  /// `portRange`s.
  /// For internal forwarding rules within the same VPC network, two or more
  /// forwarding rules cannot use the same `[IPAddress, IPProtocol]` pair, and
  /// cannot have overlapping `portRange`s.
  /// @pattern: \d+(?:-\d+)?
  final pulumi.Input<String>? portRange;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The PSC connection id of the PSC Forwarding Rule.
  final pulumi.Input<String>? pscConnectionId;
  /// The PSC connection status of the PSC Forwarding Rule. Possible values: `STATUS_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`
  final pulumi.Input<String>? pscConnectionStatus;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Service Directory resources to register this forwarding rule with.
  /// Currently, only supports a single Service Directory resource.
  /// Structure is documented below.
  final pulumi.Input<GlobalForwardingRuleServiceDirectoryRegistrations>? serviceDirectoryRegistrations;
  /// If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  final pulumi.Input<List<String>>? sourceIpRanges;
  /// This field identifies the subnetwork that the load balanced IP should
  /// belong to for this Forwarding Rule, used in internal load balancing and
  /// network load balancing with IPv6.
  /// If the network specified is in auto subnet mode, this field is optional.
  /// However, a subnetwork must be specified if the network is in custom subnet
  /// mode or when creating external forwarding rule with IPv6.
  final pulumi.Input<String>? subnetwork;
  /// The URL of the target resource to receive the matched traffic.  For
  /// regional forwarding rules, this target must be in the same region as the
  /// forwarding rule. For global forwarding rules, this target must be a global
  /// load balancing resource.
  /// The forwarded traffic must be of a type appropriate to the target object.
  /// *  For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications).
  /// *  For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle:
  /// *  `vpc-sc` - [ APIs that support VPC Service Controls](https://cloud.google.com/vpc-service-controls/docs/supported-products).
  /// *  `all-apis` - [All supported Google APIs](https://cloud.google.com/vpc/docs/private-service-connect#supported-apis).
  /// For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment.
  final pulumi.Input<String>? target;

  /// Creates a new [GlobalForwardingRuleState].
  /// [allowPscGlobalAccess] (Optional, Beta)
  /// [baseForwardingRule] [Output Only] The URL for the corresponding base Forwarding Rule. By base Forwarding Rule, we mean the Forwarding Rule that has the same IP address, protocol, and port settings with the current Forwarding Rule, but without sourceIPRanges specified. Always empty if the current Forwarding Rule does not have sourceIPRanges specified.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [externalManagedBackendBucketMigrationState] Specifies the canary migration state for the backend buckets attached to this forwarding rule.
  /// [externalManagedBackendBucketMigrationTestingPercentage] Determines the fraction of requests to backend buckets that should be processed by the Global
  /// [forwardingRuleId] The unique identifier number for the resource. This identifier is defined by the server.
  /// [ipAddress] IP address for which this forwarding rule accepts traffic. When a client
  /// [ipProtocol] The IP protocol to which this rule applies.
  /// [ipVersion] The IP Version that will be used by this global forwarding rule.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this forwarding rule.  A list of key-&gt;value pairs.
  /// [loadBalancingScheme] Specifies the forwarding rule type.
  /// [metadataFilters] Opaque filter criteria used by Loadbalancer to restrict routing
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [network] This field is not used for external load balancing.
  /// [networkTier] This signifies the networking tier used for configuring
  /// [noAutomateDnsZone] This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field.
  /// [portRange] The `portRange` field has the following limitations:
  /// [project] The ID of the project in which the resource belongs.
  /// [pscConnectionId] The PSC connection id of the PSC Forwarding Rule.
  /// [pscConnectionStatus] The PSC connection status of the PSC Forwarding Rule. Possible values: `STATUS_UNSPECIFIED`, `PENDING`, `ACCEPTED`, `REJECTED`, `CLOSED`
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [selfLink] The URI of the created resource.
  /// [serviceDirectoryRegistrations] Service Directory resources to register this forwarding rule with.
  /// [sourceIpRanges] If not empty, this Forwarding Rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a Forwarding Rule can only have up to 64 source IP ranges, and this field can only be used with a regional Forwarding Rule whose scheme is EXTERNAL. Each sourceIpRange entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  /// [subnetwork] This field identifies the subnetwork that the load balanced IP should
  /// [target] The URL of the target resource to receive the matched traffic.  For
  const GlobalForwardingRuleState({
    this.allowPscGlobalAccess,
    this.baseForwardingRule,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.externalManagedBackendBucketMigrationState,
    this.externalManagedBackendBucketMigrationTestingPercentage,
    this.forwardingRuleId,
    this.ipAddress,
    this.ipProtocol,
    this.ipVersion,
    this.labelFingerprint,
    this.labels,
    this.loadBalancingScheme,
    this.metadataFilters,
    this.name,
    this.network,
    this.networkTier,
    this.noAutomateDnsZone,
    this.portRange,
    this.project,
    this.pscConnectionId,
    this.pscConnectionStatus,
    this.pulumiLabels,
    this.selfLink,
    this.serviceDirectoryRegistrations,
    this.sourceIpRanges,
    this.subnetwork,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPscGlobalAccess': ?allowPscGlobalAccess,
      'baseForwardingRule': ?baseForwardingRule,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'externalManagedBackendBucketMigrationState': ?externalManagedBackendBucketMigrationState,
      'externalManagedBackendBucketMigrationTestingPercentage': ?externalManagedBackendBucketMigrationTestingPercentage,
      'forwardingRuleId': ?forwardingRuleId,
      'ipAddress': ?ipAddress,
      'ipProtocol': ?ipProtocol,
      'ipVersion': ?ipVersion,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'loadBalancingScheme': ?loadBalancingScheme,
      'metadataFilters': ?pulumi.Input.mapOptionalInputValue<List<GlobalForwardingRuleMetadataFilter>, List<Map<String, dynamic>>>(metadataFilters, (value) => pulumi.Input.encodeList<GlobalForwardingRuleMetadataFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'network': ?network,
      'networkTier': ?networkTier,
      'noAutomateDnsZone': ?noAutomateDnsZone,
      'portRange': ?portRange,
      'project': ?project,
      'pscConnectionId': ?pscConnectionId,
      'pscConnectionStatus': ?pscConnectionStatus,
      'pulumiLabels': ?pulumiLabels,
      'selfLink': ?selfLink,
      'serviceDirectoryRegistrations': ?pulumi.Input.mapOptionalInputValue<GlobalForwardingRuleServiceDirectoryRegistrations, Map<String, dynamic>>(serviceDirectoryRegistrations, (value) => value.toMap()),
      'sourceIpRanges': ?sourceIpRanges,
      'subnetwork': ?subnetwork,
      'target': ?target,
    };
  }

  factory GlobalForwardingRuleState.fromMap(Map<String, dynamic> map) {
    return GlobalForwardingRuleState(
      allowPscGlobalAccess: (() { final guardedValue = map['allowPscGlobalAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      baseForwardingRule: (() { final guardedValue = map['baseForwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      externalManagedBackendBucketMigrationState: (() { final guardedValue = map['externalManagedBackendBucketMigrationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalManagedBackendBucketMigrationTestingPercentage: (() { final guardedValue = map['externalManagedBackendBucketMigrationTestingPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      forwardingRuleId: (() { final guardedValue = map['forwardingRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataFilters: (() { final guardedValue = map['metadataFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalForwardingRuleMetadataFilter>(guardedValue, (value) => GlobalForwardingRuleMetadataFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noAutomateDnsZone: (() { final guardedValue = map['noAutomateDnsZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      portRange: (() { final guardedValue = map['portRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionId: (() { final guardedValue = map['pscConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConnectionStatus: (() { final guardedValue = map['pscConnectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryRegistrations: (() { final guardedValue = map['serviceDirectoryRegistrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalForwardingRuleServiceDirectoryRegistrations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
