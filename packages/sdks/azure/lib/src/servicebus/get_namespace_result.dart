// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// The capacity of the ServiceBus Namespace.
  final int capacity;
  /// The primary connection string for the authorization
  /// rule `RootManageSharedAccessKey`.
  final String defaultPrimaryConnectionString;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final String defaultPrimaryKey;
  /// The secondary connection string for the
  /// authorization rule `RootManageSharedAccessKey`.
  final String defaultSecondaryConnectionString;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final String defaultSecondaryKey;
  /// The URL to access the ServiceBus Namespace.
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location of the Resource Group in which the ServiceBus Namespace exists.
  final String location;
  final String name;
  /// The messaging partitions of the ServiceBus Namespace.
  final int premiumMessagingPartitions;
  final String resourceGroupName;
  /// The Tier used for the ServiceBus Namespace.
  final String sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetNamespaceResult].
  /// [capacity] The capacity of the ServiceBus Namespace.
  /// [defaultPrimaryConnectionString] The primary connection string for the authorization
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryConnectionString] The secondary connection string for the
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [endpoint] The URL to access the ServiceBus Namespace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the Resource Group in which the ServiceBus Namespace exists.
  /// [name] Required.
  /// [premiumMessagingPartitions] The messaging partitions of the ServiceBus Namespace.
  /// [resourceGroupName] Required.
  /// [sku] The Tier used for the ServiceBus Namespace.
  /// [tags] A mapping of tags assigned to the resource.
  const GetNamespaceResult({
    required this.capacity,
    required this.defaultPrimaryConnectionString,
    required this.defaultPrimaryKey,
    required this.defaultSecondaryConnectionString,
    required this.defaultSecondaryKey,
    required this.endpoint,
    required this.id,
    required this.location,
    required this.name,
    required this.premiumMessagingPartitions,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'defaultPrimaryConnectionString': defaultPrimaryConnectionString,
      'defaultPrimaryKey': defaultPrimaryKey,
      'defaultSecondaryConnectionString': defaultSecondaryConnectionString,
      'defaultSecondaryKey': defaultSecondaryKey,
      'endpoint': endpoint,
      'id': id,
      'location': location,
      'name': name,
      'premiumMessagingPartitions': premiumMessagingPartitions,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      capacity: map['capacity'] as int,
      defaultPrimaryConnectionString: map['defaultPrimaryConnectionString'] as String,
      defaultPrimaryKey: map['defaultPrimaryKey'] as String,
      defaultSecondaryConnectionString: map['defaultSecondaryConnectionString'] as String,
      defaultSecondaryKey: map['defaultSecondaryKey'] as String,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      premiumMessagingPartitions: map['premiumMessagingPartitions'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
