// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespace.
class GetNamespaceResult {
  /// Is Auto Inflate enabled for the EventHub Namespace?
  final bool autoInflateEnabled;
  /// The Capacity / Throughput Units for a `Standard` SKU namespace.
  final int capacity;
  /// The ID of the EventHub Dedicated Cluster where this Namespace exists.
  final String dedicatedClusterId;
  /// The primary connection string for the authorization
  /// rule `RootManageSharedAccessKey`.
  final String defaultPrimaryConnectionString;
  /// The alias of the primary connection string for the authorization
  /// rule `RootManageSharedAccessKey`.
  final String defaultPrimaryConnectionStringAlias;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final String defaultPrimaryKey;
  /// The secondary connection string for the
  /// authorization rule `RootManageSharedAccessKey`.
  final String defaultSecondaryConnectionString;
  /// The alias of the secondary connection string for the
  /// authorization rule `RootManageSharedAccessKey`.
  final String defaultSecondaryConnectionStringAlias;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final String defaultSecondaryKey;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool kafkaEnabled;
  /// The Azure location where the EventHub Namespace exists
  final String location;
  /// Specifies the maximum number of throughput units when Auto Inflate is Enabled.
  final int maximumThroughputUnits;
  final String name;
  final String resourceGroupName;
  /// Defines which tier to use.
  final String sku;
  /// A mapping of tags to assign to the EventHub Namespace.
  final Map<String, String> tags;

  /// Creates a new [GetNamespaceResult].
  /// [autoInflateEnabled] Is Auto Inflate enabled for the EventHub Namespace?
  /// [capacity] The Capacity / Throughput Units for a `Standard` SKU namespace.
  /// [dedicatedClusterId] The ID of the EventHub Dedicated Cluster where this Namespace exists.
  /// [defaultPrimaryConnectionString] The primary connection string for the authorization
  /// [defaultPrimaryConnectionStringAlias] The alias of the primary connection string for the authorization
  /// [defaultPrimaryKey] The primary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [defaultSecondaryConnectionString] The secondary connection string for the
  /// [defaultSecondaryConnectionStringAlias] The alias of the secondary connection string for the
  /// [defaultSecondaryKey] The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kafkaEnabled] Required.
  /// [location] The Azure location where the EventHub Namespace exists
  /// [maximumThroughputUnits] Specifies the maximum number of throughput units when Auto Inflate is Enabled.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sku] Defines which tier to use.
  /// [tags] A mapping of tags to assign to the EventHub Namespace.
  const GetNamespaceResult({
    required this.autoInflateEnabled,
    required this.capacity,
    required this.dedicatedClusterId,
    required this.defaultPrimaryConnectionString,
    required this.defaultPrimaryConnectionStringAlias,
    required this.defaultPrimaryKey,
    required this.defaultSecondaryConnectionString,
    required this.defaultSecondaryConnectionStringAlias,
    required this.defaultSecondaryKey,
    required this.id,
    required this.kafkaEnabled,
    required this.location,
    required this.maximumThroughputUnits,
    required this.name,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInflateEnabled': autoInflateEnabled,
      'capacity': capacity,
      'dedicatedClusterId': dedicatedClusterId,
      'defaultPrimaryConnectionString': defaultPrimaryConnectionString,
      'defaultPrimaryConnectionStringAlias': defaultPrimaryConnectionStringAlias,
      'defaultPrimaryKey': defaultPrimaryKey,
      'defaultSecondaryConnectionString': defaultSecondaryConnectionString,
      'defaultSecondaryConnectionStringAlias': defaultSecondaryConnectionStringAlias,
      'defaultSecondaryKey': defaultSecondaryKey,
      'id': id,
      'kafkaEnabled': kafkaEnabled,
      'location': location,
      'maximumThroughputUnits': maximumThroughputUnits,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
    };
  }

  factory GetNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceResult(
      autoInflateEnabled: map['autoInflateEnabled'] as bool,
      capacity: map['capacity'] as int,
      dedicatedClusterId: map['dedicatedClusterId'] as String,
      defaultPrimaryConnectionString: map['defaultPrimaryConnectionString'] as String,
      defaultPrimaryConnectionStringAlias: map['defaultPrimaryConnectionStringAlias'] as String,
      defaultPrimaryKey: map['defaultPrimaryKey'] as String,
      defaultSecondaryConnectionString: map['defaultSecondaryConnectionString'] as String,
      defaultSecondaryConnectionStringAlias: map['defaultSecondaryConnectionStringAlias'] as String,
      defaultSecondaryKey: map['defaultSecondaryKey'] as String,
      id: map['id'] as String,
      kafkaEnabled: map['kafkaEnabled'] as bool,
      location: map['location'] as String,
      maximumThroughputUnits: map['maximumThroughputUnits'] as int,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
