// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegionalEndpoint resources.
class RegionalEndpointState {
  /// The access type of this regional endpoint. This field is reflected in the PSC Forwarding Rule configuration to enable global access.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  final pulumi.Input<String>? accessType;
  /// The IP Address of the Regional Endpoint. When no address is provided, an IP from the subnetwork is allocated. Use one of the following formats: * IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/{project}/regions/{region}/addresses/{address_name}`
  /// > **Note:** This field accepts both a reference to a Compute Address resource, which is the resource name of which format is given in the description, and IP literal value. If the user chooses to input a reserved address value; they need to make sure that the reserved address is in IPv4 version, its purpose is GCE_ENDPOINT, its type is INTERNAL and its status is RESERVED. If the user chooses to input an IP literal, they need to make sure that it's a valid IPv4 address (x.x.x.x) within the subnetwork.
  final pulumi.Input<String>? address;
  /// Time when the RegionalEndpoint was created.
  final pulumi.Input<String>? createTime;
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the RegionalEndpoint.
  final pulumi.Input<String>? location;
  /// The name of the RegionalEndpoint.
  final pulumi.Input<String>? name;
  /// The name of the VPC network for this private regional endpoint. Format: `projects/{project}/global/networks/{network}`
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource reference of the PSC Forwarding Rule created on behalf of the customer. Format: `//compute.googleapis.com/projects/{project}/regions/{region}/forwardingRules/{forwarding_rule_name}`
  final pulumi.Input<String>? pscForwardingRule;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The name of the subnetwork from which the IP address will be allocated. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  final pulumi.Input<String>? subnetwork;
  /// The service endpoint this private regional endpoint connects to. Format: `{apiname}.{region}.rep.googleapis.com` Example: \"cloudkms.us-central1.rep.googleapis.com\".
  final pulumi.Input<String>? targetGoogleApi;
  /// Time when the RegionalEndpoint was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RegionalEndpointState].
  /// [accessType] The access type of this regional endpoint. This field is reflected in the PSC Forwarding Rule configuration to enable global access.
  /// [address] The IP Address of the Regional Endpoint. When no address is provided, an IP from the subnetwork is allocated. Use one of the following formats: * IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/{project}/regions/{region}/addresses/{address_name}`
  /// [createTime] Time when the RegionalEndpoint was created.
  /// [description] A description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] User-defined labels.
  /// [location] The location of the RegionalEndpoint.
  /// [name] The name of the RegionalEndpoint.
  /// [network] The name of the VPC network for this private regional endpoint. Format: `projects/{project}/global/networks/{network}`
  /// [project] The ID of the project in which the resource belongs.
  /// [pscForwardingRule] The resource reference of the PSC Forwarding Rule created on behalf of the customer. Format: `//compute.googleapis.com/projects/{project}/regions/{region}/forwardingRules/{forwarding_rule_name}`
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [subnetwork] The name of the subnetwork from which the IP address will be allocated. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  /// [targetGoogleApi] The service endpoint this private regional endpoint connects to. Format: `{apiname}.{region}.rep.googleapis.com` Example: \"cloudkms.us-central1.rep.googleapis.com\".
  /// [updateTime] Time when the RegionalEndpoint was updated.
  RegionalEndpointState({
    this.accessType,
    this.address,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pscForwardingRule,
    this.pulumiLabels,
    this.subnetwork,
    this.targetGoogleApi,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'address': ?address,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pscForwardingRule': ?pscForwardingRule,
      'pulumiLabels': ?pulumiLabels,
      'subnetwork': ?subnetwork,
      'targetGoogleApi': ?targetGoogleApi,
      'updateTime': ?updateTime,
    };
  }

  factory RegionalEndpointState.fromMap(Map<String, dynamic> map) {
    return RegionalEndpointState(
      accessType: map['accessType'] == null ? null : (map['accessType']! as String).input(),
      address: map['address'] == null ? null : (map['address']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pscForwardingRule: map['pscForwardingRule'] == null ? null : (map['pscForwardingRule']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
      targetGoogleApi: map['targetGoogleApi'] == null ? null : (map['targetGoogleApi']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

