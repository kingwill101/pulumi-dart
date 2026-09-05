// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_managed_key.dart';
import 'get_default_database.dart';
import 'get_identity.dart';

/// Result data returned by get.
class GetResult {
  /// A `customerManagedKey` block as defined below.
  final List<GetCustomerManagedKey>? customerManagedKeys;
  /// A `defaultDatabase` block as defined below.
  final List<GetDefaultDatabase>? defaultDatabases;
  /// Whether high availability is enabled for the Managed Redis instance.
  final bool? highAvailabilityEnabled;
  /// The DNS hostname of the Managed Redis instance.
  final String? hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetIdentity>? identities;
  /// The Azure Region where the Managed Redis instance exists.
  final String? location;
  /// The name of the Redis module.
  final String? name;
  /// The public network access setting for the Managed Redis instance.
  final String? publicNetworkAccess;
  final String? resourceGroupName;
  /// The SKU name of the Managed Redis instance.
  final String? skuName;
  /// A mapping of tags assigned to the Managed Redis instance.
  final Map<String, String>? tags;

  /// Creates a new [GetResult].
  /// [customerManagedKeys] A `customerManagedKey` block as defined below.
  /// [defaultDatabases] A `defaultDatabase` block as defined below.
  /// [highAvailabilityEnabled] Whether high availability is enabled for the Managed Redis instance.
  /// [hostname] The DNS hostname of the Managed Redis instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Managed Redis instance exists.
  /// [name] The name of the Redis module.
  /// [publicNetworkAccess] The public network access setting for the Managed Redis instance.
  /// [resourceGroupName] Optional.
  /// [skuName] The SKU name of the Managed Redis instance.
  /// [tags] A mapping of tags assigned to the Managed Redis instance.
  const GetResult({
    this.customerManagedKeys,
    this.defaultDatabases,
    this.highAvailabilityEnabled,
    this.hostname,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeys': ?(() { final guardedValue = customerManagedKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomerManagedKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultDatabases': ?(() { final guardedValue = defaultDatabases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDefaultDatabase, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'highAvailabilityEnabled': ?highAvailabilityEnabled,
      'hostname': ?hostname,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      customerManagedKeys: (() { final guardedValue = map['customerManagedKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomerManagedKey>(guardedValue, (value) => GetCustomerManagedKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultDatabases: (() { final guardedValue = map['defaultDatabases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDefaultDatabase>(guardedValue, (value) => GetDefaultDatabase.fromMap((value as Map).cast<String, dynamic>())); })(),
      highAvailabilityEnabled: (() { final guardedValue = map['highAvailabilityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIdentity>(guardedValue, (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
