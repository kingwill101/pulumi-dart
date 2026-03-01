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
    pulumi.Output<IoTHubCloudToDevice>? cloudToDevice,
    pulumi.Output<List<IoTHubEndpoint>>? endpoints,
    pulumi.Output<List<IoTHubEnrichment>>? enrichments,
    pulumi.Output<String>? eventHubEventsEndpoint,
    pulumi.Output<String>? eventHubEventsNamespace,
    pulumi.Output<String>? eventHubEventsPath,
    pulumi.Output<String>? eventHubOperationsEndpoint,
    pulumi.Output<String>? eventHubOperationsPath,
    pulumi.Output<int>? eventHubPartitionCount,
    pulumi.Output<int>? eventHubRetentionInDays,
    pulumi.Output<IoTHubFallbackRoute>? fallbackRoute,
    pulumi.Output<IoTHubFileUpload>? fileUpload,
    pulumi.Output<String>? hostname,
    pulumi.Output<IoTHubIdentity>? identity,
    pulumi.Output<bool>? localAuthenticationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minTlsVersion,
    pulumi.Output<String>? name,
    pulumi.Output<List<IoTHubNetworkRuleSet>>? networkRuleSets,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<IoTHubRoute>>? routes,
    pulumi.Output<List<IoTHubSharedAccessPolicy>>? sharedAccessPolicies,
    pulumi.Output<IoTHubSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      cloudToDevice = pulumi.Input.asOptionalInput<IoTHubCloudToDevice>(cloudToDevice),
      endpoints = pulumi.Input.asOptionalInput<List<IoTHubEndpoint>>(endpoints),
      enrichments = pulumi.Input.asOptionalInput<List<IoTHubEnrichment>>(enrichments),
      eventHubEventsEndpoint = pulumi.Input.asOptionalInput<String>(eventHubEventsEndpoint),
      eventHubEventsNamespace = pulumi.Input.asOptionalInput<String>(eventHubEventsNamespace),
      eventHubEventsPath = pulumi.Input.asOptionalInput<String>(eventHubEventsPath),
      eventHubOperationsEndpoint = pulumi.Input.asOptionalInput<String>(eventHubOperationsEndpoint),
      eventHubOperationsPath = pulumi.Input.asOptionalInput<String>(eventHubOperationsPath),
      eventHubPartitionCount = pulumi.Input.asOptionalInput<int>(eventHubPartitionCount),
      eventHubRetentionInDays = pulumi.Input.asOptionalInput<int>(eventHubRetentionInDays),
      fallbackRoute = pulumi.Input.asOptionalInput<IoTHubFallbackRoute>(fallbackRoute),
      fileUpload = pulumi.Input.asOptionalInput<IoTHubFileUpload>(fileUpload),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      identity = pulumi.Input.asOptionalInput<IoTHubIdentity>(identity),
      localAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(localAuthenticationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      minTlsVersion = pulumi.Input.asOptionalInput<String>(minTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkRuleSets = pulumi.Input.asOptionalInput<List<IoTHubNetworkRuleSet>>(networkRuleSets),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routes = pulumi.Input.asOptionalInput<List<IoTHubRoute>>(routes),
      sharedAccessPolicies = pulumi.Input.asOptionalInput<List<IoTHubSharedAccessPolicy>>(sharedAccessPolicies),
      sku = pulumi.Input.asOptionalInput<IoTHubSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      cloudToDevice: map['cloudToDevice'] == null ? null : pulumi.Output.create<IoTHubCloudToDevice>(IoTHubCloudToDevice.fromMap((map['cloudToDevice'] as Map).cast<String, dynamic>())),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<IoTHubEndpoint>>(pulumi.Input.decodeList<IoTHubEndpoint>(map['endpoints'], (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      enrichments: map['enrichments'] == null ? null : pulumi.Output.create<List<IoTHubEnrichment>>(pulumi.Input.decodeList<IoTHubEnrichment>(map['enrichments'], (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>()))),
      eventHubEventsEndpoint: map['eventHubEventsEndpoint'] == null ? null : pulumi.Output.create<String>(map['eventHubEventsEndpoint'] as String),
      eventHubEventsNamespace: map['eventHubEventsNamespace'] == null ? null : pulumi.Output.create<String>(map['eventHubEventsNamespace'] as String),
      eventHubEventsPath: map['eventHubEventsPath'] == null ? null : pulumi.Output.create<String>(map['eventHubEventsPath'] as String),
      eventHubOperationsEndpoint: map['eventHubOperationsEndpoint'] == null ? null : pulumi.Output.create<String>(map['eventHubOperationsEndpoint'] as String),
      eventHubOperationsPath: map['eventHubOperationsPath'] == null ? null : pulumi.Output.create<String>(map['eventHubOperationsPath'] as String),
      eventHubPartitionCount: map['eventHubPartitionCount'] == null ? null : pulumi.Output.create<int>(map['eventHubPartitionCount'] as int),
      eventHubRetentionInDays: map['eventHubRetentionInDays'] == null ? null : pulumi.Output.create<int>(map['eventHubRetentionInDays'] as int),
      fallbackRoute: map['fallbackRoute'] == null ? null : pulumi.Output.create<IoTHubFallbackRoute>(IoTHubFallbackRoute.fromMap((map['fallbackRoute'] as Map).cast<String, dynamic>())),
      fileUpload: map['fileUpload'] == null ? null : pulumi.Output.create<IoTHubFileUpload>(IoTHubFileUpload.fromMap((map['fileUpload'] as Map).cast<String, dynamic>())),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<IoTHubIdentity>(IoTHubIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthenticationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minTlsVersion: map['minTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkRuleSets: map['networkRuleSets'] == null ? null : pulumi.Output.create<List<IoTHubNetworkRuleSet>>(pulumi.Input.decodeList<IoTHubNetworkRuleSet>(map['networkRuleSets'], (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routes: map['routes'] == null ? null : pulumi.Output.create<List<IoTHubRoute>>(pulumi.Input.decodeList<IoTHubRoute>(map['routes'], (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>()))),
      sharedAccessPolicies: map['sharedAccessPolicies'] == null ? null : pulumi.Output.create<List<IoTHubSharedAccessPolicy>>(pulumi.Input.decodeList<IoTHubSharedAccessPolicy>(map['sharedAccessPolicies'], (value) => IoTHubSharedAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      sku: map['sku'] == null ? null : pulumi.Output.create<IoTHubSku>(IoTHubSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

