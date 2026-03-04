// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_managed_key.dart';
import 'get_default_database.dart';
import 'get_identity.dart';

/// Result data returned by get.
class GetResult {
  /// A `customer_managed_key` block as defined below.
  final List<GetCustomerManagedKey> customerManagedKeys;

  /// A `default_database` block as defined below.
  final List<GetDefaultDatabase> defaultDatabases;

  /// Whether high availability is enabled for the Managed Redis instance.
  final bool highAvailabilityEnabled;

  /// The DNS hostname of the Managed Redis instance.
  final String hostname;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// An `identity` block as defined below.
  final List<GetIdentity> identities;

  /// The Azure Region where the Managed Redis instance exists.
  final String location;

  /// The name of the Redis module.
  final String name;

  /// The public network access setting for the Managed Redis instance.
  final String publicNetworkAccess;
  final String resourceGroupName;

  /// The SKU name of the Managed Redis instance.
  final String skuName;

  /// A mapping of tags assigned to the Managed Redis instance.
  final Map<String, String> tags;

  /// Creates a new [GetResult].
  /// [customerManagedKeys] A `customer_managed_key` block as defined below.
  /// [defaultDatabases] A `default_database` block as defined below.
  /// [highAvailabilityEnabled] Whether high availability is enabled for the Managed Redis instance.
  /// [hostname] The DNS hostname of the Managed Redis instance.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Managed Redis instance exists.
  /// [name] The name of the Redis module.
  /// [publicNetworkAccess] The public network access setting for the Managed Redis instance.
  /// [resourceGroupName] Required.
  /// [skuName] The SKU name of the Managed Redis instance.
  /// [tags] A mapping of tags assigned to the Managed Redis instance.
  GetResult({
    required this.customerManagedKeys,
    required this.defaultDatabases,
    required this.highAvailabilityEnabled,
    required this.hostname,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeys':
          pulumi.Input.encodeList<GetCustomerManagedKey, Map<String, dynamic>>(
            customerManagedKeys,
            (value) => value.toMap(),
          ),
      'defaultDatabases':
          pulumi.Input.encodeList<GetDefaultDatabase, Map<String, dynamic>>(
            defaultDatabases,
            (value) => value.toMap(),
          ),
      'highAvailabilityEnabled': highAvailabilityEnabled,
      'hostname': hostname,
      'id': id,
      'identities': pulumi.Input.encodeList<GetIdentity, Map<String, dynamic>>(
        identities,
        (value) => value.toMap(),
      ),
      'location': location,
      'name': name,
      'publicNetworkAccess': publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      customerManagedKeys: pulumi.Input.decodeList<GetCustomerManagedKey>(
        map['customerManagedKeys']!,
        (value) => GetCustomerManagedKey.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      defaultDatabases: pulumi.Input.decodeList<GetDefaultDatabase>(
        map['defaultDatabases']!,
        (value) =>
            GetDefaultDatabase.fromMap((value as Map).cast<String, dynamic>()),
      ),
      highAvailabilityEnabled: map['highAvailabilityEnabled'] as bool,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetIdentity>(
        map['identities']!,
        (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>()),
      ),
      location: map['location'] as String,
      name: map['name'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
