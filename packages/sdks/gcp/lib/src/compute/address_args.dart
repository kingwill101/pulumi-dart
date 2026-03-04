// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_address_address_args_doc}
/// The set of arguments for Address.
/// {@endtemplate}
/// {@macro pulumi_compute_address_address_args_doc}
class AddressArgs {
  /// The static external IP address represented by this resource.
  /// The IP address must be inside the specified subnetwork,
  /// if any. Set by the API if undefined.
  final pulumi.Input<String>? address;

  /// The type of address to reserve.
  /// Note: if you set this argument's value as `INTERNAL` you need to leave the `network_tier` argument unset in that resource block.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `INTERNAL`, `EXTERNAL`.
  final pulumi.Input<String>? addressType;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

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

  /// Labels to apply to this address.  A list of key-&gt;value pairs.
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

  /// The URL of the subnetwork in which to reserve the address. If an IP
  /// address is specified, it must be within the subnetwork's IP range.
  /// This field can only be used with INTERNAL type with
  /// GCE_ENDPOINT/DNS_RESOLVER purposes.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [AddressArgs].
  /// [address] The static external IP address represented by this resource.
  /// [addressType] The type of address to reserve.
  /// [description] An optional description of this resource.
  /// [ipCollection] Reference to the source of external IPv4 addresses, like a PublicDelegatedPrefix(PDP) for BYOIP.
  /// [ipVersion] The IP Version that will be used by this address. The default value is `IPV4`.
  /// [ipv6EndpointType] The endpoint type of this address, which should be VM or NETLB. This is
  /// [labels] Labels to apply to this address.  A list of key-&gt;value pairs.
  /// [name] Name of the resource. The name must be 1-63 characters long, and
  /// [network] The URL of the network in which to reserve the address. This field
  /// [networkTier] The networking tier used for configuring this address. If this field is not
  /// [prefixLength] The prefix length if the resource represents an IP range.
  /// [project] The ID of the project in which the resource belongs.
  /// [purpose] The purpose of this resource, which can be one of the following values.
  /// [region] The Region in which the created address should reside.
  /// [subnetwork] The URL of the subnetwork in which to reserve the address. If an IP
  AddressArgs({
    this.address,
    this.addressType,
    this.description,
    this.ipCollection,
    this.ipVersion,
    this.ipv6EndpointType,
    this.labels,
    this.name,
    this.network,
    this.networkTier,
    this.prefixLength,
    this.project,
    this.purpose,
    this.region,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType': ?addressType,
      'description': ?description,
      'ipCollection': ?ipCollection,
      'ipVersion': ?ipVersion,
      'ipv6EndpointType': ?ipv6EndpointType,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'networkTier': ?networkTier,
      'prefixLength': ?prefixLength,
      'project': ?project,
      'purpose': ?purpose,
      'region': ?region,
      'subnetwork': ?subnetwork,
    };
  }

  factory AddressArgs.fromMap(Map<String, dynamic> map) {
    return AddressArgs(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressType: (() {
        final guardedValue = map['addressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipCollection: (() {
        final guardedValue = map['ipCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6EndpointType: (() {
        final guardedValue = map['ipv6EndpointType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkTier: (() {
        final guardedValue = map['networkTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefixLength: (() {
        final guardedValue = map['prefixLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      purpose: (() {
        final guardedValue = map['purpose'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
