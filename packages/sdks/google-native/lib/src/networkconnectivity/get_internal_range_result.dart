// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInternalRange.
class GetInternalRangeResult {
  /// Time when the internal range was created.
  final String createTime;
  /// A description of this resource.
  final String description;
  /// The IP range that this internal range defines.
  final String ipCidrRange;
  /// User-defined labels.
  final Map<String, String> labels;
  /// Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  final String name;
  /// The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  final String network;
  /// Optional. Types of resources that are allowed to overlap with the current internal range.
  final List<String> overlaps;
  /// The type of peering set for this internal range.
  final String peering;
  /// An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  final int prefixLength;
  /// Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  final List<String> targetCidrRange;
  /// Time when the internal range was updated.
  final String updateTime;
  /// The type of usage set for this InternalRange.
  final String usage;
  /// The list of resources that refer to this internal range. Resources that use the internal range for their range allocation are referred to as users of the range. Other resources mark themselves as users while doing so by creating a reference to this internal range. Having a user, based on this reference, prevents deletion of the internal range referred to. Can be empty.
  final List<String> users;

  /// Creates a new [GetInternalRangeResult].
  /// [createTime] Time when the internal range was created.
  /// [description] A description of this resource.
  /// [ipCidrRange] The IP range that this internal range defines.
  /// [labels] User-defined labels.
  /// [name] Immutable. The name of an internal range. Format: projects/{project}/locations/{location}/internalRanges/{internal_range} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The URL or resource ID of the network in which to reserve the internal range. The network cannot be deleted if there are any reserved internal ranges referring to it. Legacy networks are not supported. This can only be specified for a global internal address. Example: - URL: /compute/v1/projects/{project}/global/networks/{resourceId} - ID: network123
  /// [overlaps] Optional. Types of resources that are allowed to overlap with the current internal range.
  /// [peering] The type of peering set for this internal range.
  /// [prefixLength] An alternate to ip_cidr_range. Can be set when trying to create a reservation that automatically finds a free range of the given size. If both ip_cidr_range and prefix_length are set, there is an error if the range sizes do not match. Can also be used during updates to change the range size.
  /// [targetCidrRange] Optional. Can be set to narrow down or pick a different address space while searching for a free range. If not set, defaults to the "10.0.0.0/8" address space. This can be used to search in other rfc-1918 address spaces like "172.16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  /// [updateTime] Time when the internal range was updated.
  /// [usage] The type of usage set for this InternalRange.
  /// [users] The list of resources that refer to this internal range. Resources that use the internal range for their range allocation are referred to as users of the range. Other resources mark themselves as users while doing so by creating a reference to this internal range. Having a user, based on this reference, prevents deletion of the internal range referred to. Can be empty.
  GetInternalRangeResult({
    required this.createTime,
    required this.description,
    required this.ipCidrRange,
    required this.labels,
    required this.name,
    required this.network,
    required this.overlaps,
    required this.peering,
    required this.prefixLength,
    required this.targetCidrRange,
    required this.updateTime,
    required this.usage,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'ipCidrRange': ipCidrRange,
      'labels': labels,
      'name': name,
      'network': network,
      'overlaps': overlaps,
      'peering': peering,
      'prefixLength': prefixLength,
      'targetCidrRange': targetCidrRange,
      'updateTime': updateTime,
      'usage': usage,
      'users': users,
    };
  }

  factory GetInternalRangeResult.fromMap(Map<String, dynamic> map) {
    return GetInternalRangeResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      ipCidrRange: map['ipCidrRange'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      overlaps: (map['overlaps'] as List).cast<String>(),
      peering: map['peering'] as String,
      prefixLength: map['prefixLength'] as int,
      targetCidrRange: (map['targetCidrRange'] as List).cast<String>(),
      updateTime: map['updateTime'] as String,
      usage: map['usage'] as String,
      users: (map['users'] as List).cast<String>(),
    );
  }
}

