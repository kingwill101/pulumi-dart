// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTargetInstance.
class GetTargetInstanceComputeBetaResult {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// A URL to the virtual machine instance that handles traffic for this target instance. When creating a target instance, you can provide the fully-qualified URL or a valid partial URL to the desired virtual machine. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance - zones/zone/instances/instance
  final String instance;
  /// The type of the resource. Always compute#targetInstance for target instances.
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
  final String natPolicy;
  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  final String network;
  /// The resource URL for the security policy associated with this target instance.
  final String securityPolicy;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// URL of the zone where the target instance resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String zone;

  /// Creates a new [GetTargetInstanceComputeBetaResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [instance] A URL to the virtual machine instance that handles traffic for this target instance. When creating a target instance, you can provide the fully-qualified URL or a valid partial URL to the desired virtual machine. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance - zones/zone/instances/instance
  /// [kind] The type of the resource. Always compute#targetInstance for target instances.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [natPolicy] Must have a value of NO_NAT. Protocol forwarding delivers packets while preserving the destination IP address of the forwarding rule referencing the target instance.
  /// [network] The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  /// [securityPolicy] The resource URL for the security policy associated with this target instance.
  /// [selfLink] Server-defined URL for the resource.
  /// [zone] URL of the zone where the target instance resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  const GetTargetInstanceComputeBetaResult({
    required this.creationTimestamp,
    required this.description,
    required this.instance,
    required this.kind,
    required this.name,
    required this.natPolicy,
    required this.network,
    required this.securityPolicy,
    required this.selfLink,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'instance': instance,
      'kind': kind,
      'name': name,
      'natPolicy': natPolicy,
      'network': network,
      'securityPolicy': securityPolicy,
      'selfLink': selfLink,
      'zone': zone,
    };
  }

  factory GetTargetInstanceComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceComputeBetaResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      natPolicy: map['natPolicy'] as String,
      network: map['network'] as String,
      securityPolicy: map['securityPolicy'] as String,
      selfLink: map['selfLink'] as String,
      zone: map['zone'] as String,
    );
  }
}
