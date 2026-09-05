// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The capacity of the ServiceBus Namespace.
  final int? capacity;
  /// The primary connection string for the authorization
  /// rule `RootManageSharedAccessKey`.
  final String? defaultPrimaryConnectionString;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final String? defaultPrimaryKey;
  /// The secondary connection string for the
  /// authorization rule `RootManageSharedAccessKey`.
  final String? defaultSecondaryConnectionString;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final String? defaultSecondaryKey;
  /// The URL to access the ServiceBus Namespace.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The location of the Resource Group in which the ServiceBus Namespace exists.
  final String? location;
  final String? name;
  /// The messaging partitions of the ServiceBus Namespace.
  final int? premiumMessagingPartitions;
  final String? resourceGroupName;
  /// The Tier used for the ServiceBus Namespace.
  final String? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetNamespaceResult].
  /// [capacity] The capacity of the ServiceBus Namespace.
  /// [defaultPrimaryConnectionString] The primary connection string for the authorization
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryConnectionString] The secondary connection string for the
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [endpoint] The URL to access the ServiceBus Namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the Resource Group in which the ServiceBus Namespace exists.
  /// [name] Optional.
  /// [premiumMessagingPartitions] The messaging partitions of the ServiceBus Namespace.
  /// [resourceGroupName] Optional.
  /// [sku] The Tier used for the ServiceBus Namespace.
  /// [tags] A mapping of tags assigned to the resource.
  const GetNamespaceResult({
    this.capacity,
    this.defaultPrimaryConnectionString,
    this.defaultPrimaryKey,
    this.defaultSecondaryConnectionString,
    this.defaultSecondaryKey,
    this.endpoint,
    this.id,
    this.location,
    this.name,
    this.premiumMessagingPartitions,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'defaultPrimaryConnectionString': ?defaultPrimaryConnectionString,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryConnectionString': ?defaultSecondaryConnectionString,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'endpoint': ?endpoint,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'premiumMessagingPartitions': ?premiumMessagingPartitions,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultPrimaryConnectionString: (() { final guardedValue = map['defaultPrimaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPrimaryKey: (() { final guardedValue = map['defaultPrimaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryConnectionString: (() { final guardedValue = map['defaultSecondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryKey: (() { final guardedValue = map['defaultSecondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      premiumMessagingPartitions: (() { final guardedValue = map['premiumMessagingPartitions']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
