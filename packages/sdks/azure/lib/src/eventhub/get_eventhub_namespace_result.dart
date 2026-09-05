// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventhubNamespace.
class GetEventhubNamespaceResult {
  /// Is Auto Inflate enabled for the EventHub Namespace?
  final bool? autoInflateEnabled;
  /// The Capacity / Throughput Units for a `Standard` SKU namespace.
  final int? capacity;
  /// The ID of the EventHub Dedicated Cluster where this Namespace exists.
  final String? dedicatedClusterId;
  /// The primary connection string for the authorization
  /// rule `RootManageSharedAccessKey`.
  final String? defaultPrimaryConnectionString;
  /// The alias of the primary connection string for the authorization
  /// rule `RootManageSharedAccessKey`.
  final String? defaultPrimaryConnectionStringAlias;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  final String? defaultPrimaryKey;
  /// The secondary connection string for the
  /// authorization rule `RootManageSharedAccessKey`.
  final String? defaultSecondaryConnectionString;
  /// The alias of the secondary connection string for the
  /// authorization rule `RootManageSharedAccessKey`.
  final String? defaultSecondaryConnectionStringAlias;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  final String? defaultSecondaryKey;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? kafkaEnabled;
  /// The Azure location where the EventHub Namespace exists
  final String? location;
  /// Specifies the maximum number of throughput units when Auto Inflate is Enabled.
  final int? maximumThroughputUnits;
  final String? name;
  final String? resourceGroupName;
  /// Defines which tier to use.
  final String? sku;
  /// A mapping of tags to assign to the EventHub Namespace.
  final Map<String, String>? tags;

  /// Creates a new [GetEventhubNamespaceResult].
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
  /// [kafkaEnabled] Optional.
  /// [location] The Azure location where the EventHub Namespace exists
  /// [maximumThroughputUnits] Specifies the maximum number of throughput units when Auto Inflate is Enabled.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sku] Defines which tier to use.
  /// [tags] A mapping of tags to assign to the EventHub Namespace.
  const GetEventhubNamespaceResult({
    this.autoInflateEnabled,
    this.capacity,
    this.dedicatedClusterId,
    this.defaultPrimaryConnectionString,
    this.defaultPrimaryConnectionStringAlias,
    this.defaultPrimaryKey,
    this.defaultSecondaryConnectionString,
    this.defaultSecondaryConnectionStringAlias,
    this.defaultSecondaryKey,
    this.id,
    this.kafkaEnabled,
    this.location,
    this.maximumThroughputUnits,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoInflateEnabled': ?autoInflateEnabled,
      'capacity': ?capacity,
      'dedicatedClusterId': ?dedicatedClusterId,
      'defaultPrimaryConnectionString': ?defaultPrimaryConnectionString,
      'defaultPrimaryConnectionStringAlias': ?defaultPrimaryConnectionStringAlias,
      'defaultPrimaryKey': ?defaultPrimaryKey,
      'defaultSecondaryConnectionString': ?defaultSecondaryConnectionString,
      'defaultSecondaryConnectionStringAlias': ?defaultSecondaryConnectionStringAlias,
      'defaultSecondaryKey': ?defaultSecondaryKey,
      'id': ?id,
      'kafkaEnabled': ?kafkaEnabled,
      'location': ?location,
      'maximumThroughputUnits': ?maximumThroughputUnits,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory GetEventhubNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetEventhubNamespaceResult(
      autoInflateEnabled: (() { final guardedValue = map['autoInflateEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dedicatedClusterId: (() { final guardedValue = map['dedicatedClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPrimaryConnectionString: (() { final guardedValue = map['defaultPrimaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPrimaryConnectionStringAlias: (() { final guardedValue = map['defaultPrimaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPrimaryKey: (() { final guardedValue = map['defaultPrimaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryConnectionString: (() { final guardedValue = map['defaultSecondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryConnectionStringAlias: (() { final guardedValue = map['defaultSecondaryConnectionStringAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryKey: (() { final guardedValue = map['defaultSecondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kafkaEnabled: (() { final guardedValue = map['kafkaEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumThroughputUnits: (() { final guardedValue = map['maximumThroughputUnits']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
