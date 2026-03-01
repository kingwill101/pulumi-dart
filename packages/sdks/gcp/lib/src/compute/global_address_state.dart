// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalAddress resources.
class GlobalAddressState {
  /// The IP address or beginning of the address range represented by this
  /// resource. This can be supplied as an input to reserve a specific
  /// address or omitted to allow GCP to choose a valid one for you.
  final pulumi.Input<String>? address;
  /// The type of the address to reserve.
  /// * EXTERNAL indicates public/external single IP address.
  /// * INTERNAL indicates internal IP ranges belonging to some network.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? addressType;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String>? ipVersion;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this address.  A list of key->value pairs.
  ///
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
  /// The URL of the network in which to reserve the IP range. The IP range
  /// must be in RFC1918 space. The network cannot be deleted if there are
  /// any reserved IP ranges referring to it.
  /// This should only be set when using an Internal address.
  final pulumi.Input<String>? network;
  /// The prefix length of the IP range. If not present, it means the
  /// address field is a single IP address.
  /// This field is not applicable to addresses with addressType=INTERNAL
  /// when purpose=PRIVATE_SERVICE_CONNECT
  final pulumi.Input<int>? prefixLength;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The purpose of the resource. Possible values include:
  /// * VPC_PEERING - for peer networks
  /// * PRIVATE_SERVICE_CONNECT - for  Private Service Connect networks
  final pulumi.Input<String>? purpose;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;

  /// Creates a new [GlobalAddressState].
  /// [address] The IP address or beginning of the address range represented by this
  /// [addressType] The type of the address to reserve.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipVersion] The IP Version that will be used by this address. The default value is `IPV4`.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this address.  A list of key->value pairs.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The URL of the network in which to reserve the IP range. The IP range
  /// [prefixLength] The prefix length of the IP range. If not present, it means the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purpose] The purpose of the resource. Possible values include:
  /// [selfLink] The URI of the created resource.
  GlobalAddressState({
    pulumi.Output<String>? address,
    pulumi.Output<String>? addressType,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? purpose,
    pulumi.Output<String>? selfLink,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      purpose = pulumi.Input.asOptionalInput<String>(purpose),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType': ?addressType,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'ipVersion': ?ipVersion,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'prefixLength': ?prefixLength,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'purpose': ?purpose,
      'selfLink': ?selfLink,
    };
  }

  factory GlobalAddressState.fromMap(Map<String, dynamic> map) {
    return GlobalAddressState(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      addressType: map['addressType'] == null ? null : pulumi.Output.create<String>(map['addressType'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      purpose: map['purpose'] == null ? null : pulumi.Output.create<String>(map['purpose'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
    );
  }
}

