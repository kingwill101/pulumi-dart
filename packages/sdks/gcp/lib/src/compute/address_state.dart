// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Address resources.
class AddressState {
  /// The static external IP address represented by this resource.
  /// The IP address must be inside the specified subnetwork,
  /// if any. Set by the API if undefined.
  final pulumi.Input<String>? address;
  /// The type of address to reserve.
  /// Note: if you set this argument's value as `INTERNAL` you need to leave the `network_tier` argument unset in that resource block.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `INTERNAL`, `EXTERNAL`.
  final pulumi.Input<String>? addressType;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Reference to the source of external IPv4 addresses, like a PublicDelegatedPrefix(PDP) for BYOIP.
  /// The PDP must support enhanced IPv4 allocations.
  /// Use one of the following formats to specify a PDP when reserving an external IPv4 address using BYOIP.
  /// Full resource URL, as in:
  /// * `https://www.googleapis.com/compute/v1/projects/{{projectId}}/regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}`
  /// Partial URL, as in:
  /// * `projects/{{projectId}}/regions/region/publicDelegatedPrefixes/{{pdp-name}}`
  /// * `regions/{{region}}/publicDelegatedPrefixes/{{pdp-name}}`
  final pulumi.Input<String>? ipCollection;
  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;
  /// The endpoint type of this address, which should be VM or NETLB. This is
  /// used for deciding which type of endpoint this address can be used after
  /// the external IPv6 address reservation.
  /// Possible values are: `VM`, `NETLB`.
  final pulumi.Input<String>? ipv6EndpointType;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this address.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The URL of the network in which to reserve the address. This field
  /// can only be used with INTERNAL type with the VPC_PEERING and
  /// IPSEC_INTERCONNECT purposes.
  final pulumi.Input<String>? network;
  /// The networking tier used for configuring this address. If this field is not
  /// specified, it is assumed to be PREMIUM.
  /// This argument should not be used when configuring Internal addresses, because [network tier cannot be set for internal traffic; it's always Premium](https://cloud.google.com/network-tiers/docs/overview).
  /// Possible values are: `PREMIUM`, `STANDARD`.
  final pulumi.Input<String>? networkTier;
  /// The prefix length if the resource represents an IP range.
  final pulumi.Input<int>? prefixLength;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The purpose of this resource, which can be one of the following values.
  /// * GCE_ENDPOINT for addresses that are used by VM instances, alias IP
  /// ranges, load balancers, and similar resources.
  /// * SHARED_LOADBALANCER_VIP for an address that can be used by multiple
  /// internal load balancers.
  /// * VPC_PEERING for addresses that are reserved for VPC peer networks.
  /// * IPSEC_INTERCONNECT for addresses created from a private IP range that
  /// are reserved for a VLAN attachment in an HA VPN over Cloud Interconnect
  /// configuration. These addresses are regional resources.
  /// * PRIVATE_SERVICE_CONNECT for a private network address that is used to
  /// configure Private Service Connect. Only global internal addresses can use
  /// this purpose.
  /// This should only be set when using an Internal address.
  final pulumi.Input<String>? purpose;
  /// The Region in which the created address should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The URL of the subnetwork in which to reserve the address. If an IP
  /// address is specified, it must be within the subnetwork's IP range.
  /// This field can only be used with INTERNAL type with
  /// GCE_ENDPOINT/DNS_RESOLVER purposes.
  final pulumi.Input<String>? subnetwork;
  /// The URLs of the resources that are using this address.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [AddressState].
  /// [address] The static external IP address represented by this resource.
  /// [addressType] The type of address to reserve.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipCollection] Reference to the source of external IPv4 addresses, like a PublicDelegatedPrefix(PDP) for BYOIP.
  /// [ipVersion] The IP Version that will be used by this address. The default value is `IPV4`.
  /// [ipv6EndpointType] The endpoint type of this address, which should be VM or NETLB. This is
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this address.  A list of key->value pairs.
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [network] The URL of the network in which to reserve the address. This field
  /// [networkTier] The networking tier used for configuring this address. If this field is not
  /// [prefixLength] The prefix length if the resource represents an IP range.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purpose] The purpose of this resource, which can be one of the following values.
  /// [region] The Region in which the created address should reside.
  /// [selfLink] The URI of the created resource.
  /// [subnetwork] The URL of the subnetwork in which to reserve the address. If an IP
  /// [users] The URLs of the resources that are using this address.
  AddressState({
    pulumi.Output<String>? address,
    pulumi.Output<String>? addressType,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? ipCollection,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? ipv6EndpointType,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? networkTier,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? purpose,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? subnetwork,
    pulumi.Output<List<String>>? users,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      ipCollection = pulumi.Input.asOptionalInput<String>(ipCollection),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      ipv6EndpointType = pulumi.Input.asOptionalInput<String>(ipv6EndpointType),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      networkTier = pulumi.Input.asOptionalInput<String>(networkTier),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
      users = pulumi.Input.asOptionalInput<List<String>>(users);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType': ?addressType,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'ipCollection': ?ipCollection,
      'ipVersion': ?ipVersion,
      'ipv6EndpointType': ?ipv6EndpointType,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'networkTier': ?networkTier,
      'prefixLength': ?prefixLength,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'purpose': ?purpose,
      'region': ?region,
      'selfLink': ?selfLink,
      'subnetwork': ?subnetwork,
      'users': ?users,
    };
  }

  factory AddressState.fromMap(Map<String, dynamic> map) {
    return AddressState(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      addressType: map['addressType'] == null ? null : pulumi.Output.create<String>(map['addressType'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      ipCollection: map['ipCollection'] == null ? null : pulumi.Output.create<String>(map['ipCollection'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      ipv6EndpointType: map['ipv6EndpointType'] == null ? null : pulumi.Output.create<String>(map['ipv6EndpointType'] as String),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      networkTier: map['networkTier'] == null ? null : pulumi.Output.create<String>(map['networkTier'] as String),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      subnetwork: map['subnetwork'] == null ? null : pulumi.Output.create<String>(map['subnetwork'] as String),
      users: map['users'] == null ? null : pulumi.Output.create<List<String>>((map['users'] as List).cast<String>()),
    );
  }
}

