// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalAddress resources.
class GlobalAddressState {
  /// The IP address or beginning of the address range represented by this
  /// resource. This can be supplied as an input to reserve a specific
  /// address or omitted to allow GCP to choose a valid one for you.
  final pulumi.Input<String?>? address;
  /// The type of the address to reserve.
  /// * EXTERNAL indicates public/external single IP address.
  /// * INTERNAL indicates internal IP ranges belonging to some network.
  /// Default value is `EXTERNAL`.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String?>? addressType;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
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
  /// The IP Version that will be used by this address. The default value is `IPV4`.
  /// Possible values are: `IPV4`, `IPV6`.
  final pulumi.Input<String?>? ipVersion;
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String?>? labelFingerprint;
  /// Labels to apply to this address.  A list of key-&gt;value pairs.
  ///
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
  /// The URL of the network in which to reserve the IP range. The IP range
  /// must be in RFC1918 space. The network cannot be deleted if there are
  /// any reserved IP ranges referring to it.
  /// This should only be set when using an Internal address.
  final pulumi.Input<String?>? network;
  /// The prefix length of the IP range. If not present, it means the
  /// address field is a single IP address.
  /// This field is not applicable to addresses with addressType=INTERNAL
  /// when purpose=PRIVATE_SERVICE_CONNECT
  final pulumi.Input<int?>? prefixLength;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The purpose of the resource. Possible values include:
  /// * VPC_PEERING - for peer networks
  /// * PRIVATE_SERVICE_CONNECT - for (Beta) only) Private Service Connect networks
  final pulumi.Input<String?>? purpose;
  /// The URI of the created resource.
  final pulumi.Input<String?>? selfLink;

  /// Creates a new [GlobalAddressState].
  /// [address] The IP address or beginning of the address range represented by this
  /// [addressType] The type of the address to reserve.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ipVersion] The IP Version that will be used by this address. The default value is `IPV4`.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [labels] Labels to apply to this address.  A list of key-&gt;value pairs.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [network] The URL of the network in which to reserve the IP range. The IP range
  /// [prefixLength] The prefix length of the IP range. If not present, it means the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [purpose] The purpose of the resource. Possible values include:
  /// [selfLink] The URI of the created resource.
  const GlobalAddressState({
    this.address,
    this.addressType,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.ipVersion,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.network,
    this.prefixLength,
    this.project,
    this.pulumiLabels,
    this.purpose,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType': ?addressType,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixLength: (() { final guardedValue = map['prefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
