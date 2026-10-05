// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAddressGroup.
class GetAddressGroupResult {
  /// Capacity of the Address Group
  final int? capacity;
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. Free-text description of the resource.
  final String? description;
  /// Optional. List of items.
  final List<String>? items;
  /// Optional. Set of label tags associated with the AddressGroup resource.
  final Map<String, String>? labels;
  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  final String? name;
  /// Server-defined fully-qualified URL for this resource.
  final String? selfLink;
  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  final String? type;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetAddressGroupResult].
  /// [capacity] Capacity of the Address Group
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [items] Optional. List of items.
  /// [labels] Optional. Set of label tags associated with the AddressGroup resource.
  /// [name] Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [type] The type of the Address Group. Possible values are "IPv4" or "IPV6".
  /// [updateTime] The timestamp when the resource was updated.
  const GetAddressGroupResult({
    this.capacity,
    this.createTime,
    this.description,
    this.items,
    this.labels,
    this.name,
    this.selfLink,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'createTime': ?createTime,
      'description': ?description,
      'items': ?items,
      'labels': ?labels,
      'name': ?name,
      'selfLink': ?selfLink,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetAddressGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupResult(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
