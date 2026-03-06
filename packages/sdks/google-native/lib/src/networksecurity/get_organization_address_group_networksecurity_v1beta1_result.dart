// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOrganizationAddressGroup.
class GetOrganizationAddressGroupNetworksecurityV1beta1Result {
  /// Capacity of the Address Group
  final int capacity;
  /// The timestamp when the resource was created.
  final String createTime;
  /// Optional. Free-text description of the resource.
  final String description;
  /// Optional. List of items.
  final List<String> items;
  /// Optional. Set of label tags associated with the AddressGroup resource.
  final Map<String, String> labels;
  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  final String name;
  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;
  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  final String type;
  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetOrganizationAddressGroupNetworksecurityV1beta1Result].
  /// [capacity] Capacity of the Address Group
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [items] Optional. List of items.
  /// [labels] Optional. Set of label tags associated with the AddressGroup resource.
  /// [name] Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [type] The type of the Address Group. Possible values are "IPv4" or "IPV6".
  /// [updateTime] The timestamp when the resource was updated.
  const GetOrganizationAddressGroupNetworksecurityV1beta1Result({
    required this.capacity,
    required this.createTime,
    required this.description,
    required this.items,
    required this.labels,
    required this.name,
    required this.selfLink,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'createTime': createTime,
      'description': description,
      'items': items,
      'labels': labels,
      'name': name,
      'selfLink': selfLink,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetOrganizationAddressGroupNetworksecurityV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetOrganizationAddressGroupNetworksecurityV1beta1Result(
      capacity: map['capacity'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      items: (map['items'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

