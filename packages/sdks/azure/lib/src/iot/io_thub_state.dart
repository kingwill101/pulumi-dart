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
  /// &gt; **Note:** If `fallback_route` isn't explicitly specified, the fallback route wouldn't be enabled by default.
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
      cloudToDevice: (() { final guardedValue = map['cloudToDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubCloudToDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubEndpoint>(guardedValue, (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enrichments: (() { final guardedValue = map['enrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubEnrichment>(guardedValue, (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventHubEventsEndpoint: (() { final guardedValue = map['eventHubEventsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubEventsNamespace: (() { final guardedValue = map['eventHubEventsNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubEventsPath: (() { final guardedValue = map['eventHubEventsPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubOperationsEndpoint: (() { final guardedValue = map['eventHubOperationsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubOperationsPath: (() { final guardedValue = map['eventHubOperationsPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubPartitionCount: (() { final guardedValue = map['eventHubPartitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      eventHubRetentionInDays: (() { final guardedValue = map['eventHubRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fallbackRoute: (() { final guardedValue = map['fallbackRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubFallbackRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileUpload: (() { final guardedValue = map['fileUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubFileUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleSets: (() { final guardedValue = map['networkRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubNetworkRuleSet>(guardedValue, (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubRoute>(guardedValue, (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sharedAccessPolicies: (() { final guardedValue = map['sharedAccessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubSharedAccessPolicy>(guardedValue, (value) => IoTHubSharedAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

