// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_thub_cloud_to_device.dart';
import 'io_thub_endpoint.dart';
import 'io_thub_enrichment.dart';
import 'io_thub_fallback_route.dart';
import 'io_thub_file_upload.dart';
import 'io_thub_identity.dart';
import 'io_thub_network_rule_set.dart';
import 'io_thub_route.dart';
import 'io_thub_shared_access_policy.dart';
import 'io_thub_sku.dart';

/// Input properties used for looking up and filtering IoTHub resources.
class IoTHubState {
  final pulumi.Input<IoTHubCloudToDevice>? cloudToDevice;
  /// An `endpoint` block as defined below.
  final pulumi.Input<List<IoTHubEndpoint>>? endpoints;
  final pulumi.Input<List<IoTHubEnrichment>>? enrichments;
  /// The EventHub compatible endpoint for events data
  final pulumi.Input<String>? eventHubEventsEndpoint;
  /// The EventHub namespace for events data
  final pulumi.Input<String>? eventHubEventsNamespace;
  /// The EventHub compatible path for events data
  final pulumi.Input<String>? eventHubEventsPath;
  /// The EventHub compatible endpoint for operational data
  final pulumi.Input<String>? eventHubOperationsEndpoint;
  /// The EventHub compatible path for operational data
  final pulumi.Input<String>? eventHubOperationsPath;
  /// The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. Defaults to `4`.
  final pulumi.Input<int>? eventHubPartitionCount;
  /// The event hub retention to use in days. Must be between `1` and `7`. Defaults to `1`.
  final pulumi.Input<int>? eventHubRetentionInDays;
  /// A `fallback_route` block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
  ///
  /// > **Note:** If `fallback_route` isn't explicitly specified, the fallback route wouldn't be enabled by default.
  final pulumi.Input<IoTHubFallbackRoute>? fallbackRoute;
  /// A `file_upload` block as defined below.
  final pulumi.Input<IoTHubFileUpload>? fileUpload;
  /// The hostname of the IotHub Resource.
  final pulumi.Input<String>? hostname;
  /// An `identity` block as defined below.
  final pulumi.Input<IoTHubIdentity>? identity;
  /// If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`.
  final pulumi.Input<bool>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? minTlsVersion;
  /// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_rule_set` block as defined below.
  final pulumi.Input<List<IoTHubNetworkRuleSet>>? networkRuleSets;
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  final pulumi.Input<List<IoTHubRoute>>? routes;
  /// One or more `shared_access_policy` blocks as defined below.
  final pulumi.Input<List<IoTHubSharedAccessPolicy>>? sharedAccessPolicies;
  /// A `sku` block as defined below.
  final pulumi.Input<IoTHubSku>? sku;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? type;

  /// Creates a new [IoTHubState].
  /// [cloudToDevice] Optional.
  /// [endpoints] An `endpoint` block as defined below.
  /// [enrichments] Optional.
  /// [eventHubEventsEndpoint] The EventHub compatible endpoint for events data
  /// [eventHubEventsNamespace] The EventHub namespace for events data
  /// [eventHubEventsPath] The EventHub compatible path for events data
  /// [eventHubOperationsEndpoint] The EventHub compatible endpoint for operational data
  /// [eventHubOperationsPath] The EventHub compatible path for operational data
  /// [eventHubPartitionCount] The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. Defaults to `4`.
  /// [eventHubRetentionInDays] The event hub retention to use in days. Must be between `1` and `7`. Defaults to `1`.
  /// [fallbackRoute] A `fallback_route` block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
  /// [fileUpload] A `file_upload` block as defined below.
  /// [hostname] The hostname of the IotHub Resource.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [minTlsVersion] Optional.
  /// [name] Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  /// [networkRuleSets] A `network_rule_set` block as defined below.
  /// [publicNetworkAccessEnabled] Optional.
  /// [resourceGroupName] The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  /// [routes] Optional.
  /// [sharedAccessPolicies] One or more `shared_access_policy` blocks as defined below.
  /// [sku] A `sku` block as defined below.
  /// [tags] Optional.
  /// [type] Optional.
  IoTHubState({
    this.cloudToDevice,
    this.endpoints,
    this.enrichments,
    this.eventHubEventsEndpoint,
    this.eventHubEventsNamespace,
    this.eventHubEventsPath,
    this.eventHubOperationsEndpoint,
    this.eventHubOperationsPath,
    this.eventHubPartitionCount,
    this.eventHubRetentionInDays,
    this.fallbackRoute,
    this.fileUpload,
    this.hostname,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.minTlsVersion,
    this.name,
    this.networkRuleSets,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.routes,
    this.sharedAccessPolicies,
    this.sku,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudToDevice': ?pulumi.Input.mapOptionalInputValue<IoTHubCloudToDevice, Map<String, dynamic>>(cloudToDevice, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<IoTHubEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<IoTHubEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enrichments': ?pulumi.Input.mapOptionalInputValue<List<IoTHubEnrichment>, List<Map<String, dynamic>>>(enrichments, (value) => pulumi.Input.encodeList<IoTHubEnrichment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHubEventsEndpoint': ?eventHubEventsEndpoint,
      'eventHubEventsNamespace': ?eventHubEventsNamespace,
      'eventHubEventsPath': ?eventHubEventsPath,
      'eventHubOperationsEndpoint': ?eventHubOperationsEndpoint,
      'eventHubOperationsPath': ?eventHubOperationsPath,
      'eventHubPartitionCount': ?eventHubPartitionCount,
      'eventHubRetentionInDays': ?eventHubRetentionInDays,
      'fallbackRoute': ?pulumi.Input.mapOptionalInputValue<IoTHubFallbackRoute, Map<String, dynamic>>(fallbackRoute, (value) => value.toMap()),
      'fileUpload': ?pulumi.Input.mapOptionalInputValue<IoTHubFileUpload, Map<String, dynamic>>(fileUpload, (value) => value.toMap()),
      'hostname': ?hostname,
      'identity': ?pulumi.Input.mapOptionalInputValue<IoTHubIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'networkRuleSets': ?pulumi.Input.mapOptionalInputValue<List<IoTHubNetworkRuleSet>, List<Map<String, dynamic>>>(networkRuleSets, (value) => pulumi.Input.encodeList<IoTHubNetworkRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<IoTHubRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<IoTHubRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharedAccessPolicies': ?pulumi.Input.mapOptionalInputValue<List<IoTHubSharedAccessPolicy>, List<Map<String, dynamic>>>(sharedAccessPolicies, (value) => pulumi.Input.encodeList<IoTHubSharedAccessPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?pulumi.Input.mapOptionalInputValue<IoTHubSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory IoTHubState.fromMap(Map<String, dynamic> map) {
    return IoTHubState(
      cloudToDevice: map['cloudToDevice'] == null ? null : (IoTHubCloudToDevice.fromMap((map['cloudToDevice'] as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<IoTHubEndpoint>(map['endpoints'], (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enrichments: map['enrichments'] == null ? null : (pulumi.Input.decodeList<IoTHubEnrichment>(map['enrichments'], (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventHubEventsEndpoint: map['eventHubEventsEndpoint'] == null ? null : (map['eventHubEventsEndpoint'] as String).input(),
      eventHubEventsNamespace: map['eventHubEventsNamespace'] == null ? null : (map['eventHubEventsNamespace'] as String).input(),
      eventHubEventsPath: map['eventHubEventsPath'] == null ? null : (map['eventHubEventsPath'] as String).input(),
      eventHubOperationsEndpoint: map['eventHubOperationsEndpoint'] == null ? null : (map['eventHubOperationsEndpoint'] as String).input(),
      eventHubOperationsPath: map['eventHubOperationsPath'] == null ? null : (map['eventHubOperationsPath'] as String).input(),
      eventHubPartitionCount: map['eventHubPartitionCount'] == null ? null : (map['eventHubPartitionCount'] as int).input(),
      eventHubRetentionInDays: map['eventHubRetentionInDays'] == null ? null : (map['eventHubRetentionInDays'] as int).input(),
      fallbackRoute: map['fallbackRoute'] == null ? null : (IoTHubFallbackRoute.fromMap((map['fallbackRoute'] as Map).cast<String, dynamic>())).input(),
      fileUpload: map['fileUpload'] == null ? null : (IoTHubFileUpload.fromMap((map['fileUpload'] as Map).cast<String, dynamic>())).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      identity: map['identity'] == null ? null : (IoTHubIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkRuleSets: map['networkRuleSets'] == null ? null : (pulumi.Input.decodeList<IoTHubNetworkRuleSet>(map['networkRuleSets'], (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<IoTHubRoute>(map['routes'], (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sharedAccessPolicies: map['sharedAccessPolicies'] == null ? null : (pulumi.Input.decodeList<IoTHubSharedAccessPolicy>(map['sharedAccessPolicies'], (value) => IoTHubSharedAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (IoTHubSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

