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
import 'io_thub_sku.dart';

/// {@template pulumi_iot_io_thub_io_thub_args_doc}
/// The set of arguments for IoTHub.
/// {@endtemplate}
/// {@macro pulumi_iot_io_thub_io_thub_args_doc}
class IoTHubArgs {
  final pulumi.Input<IoTHubCloudToDevice>? cloudToDevice;
  /// An `endpoint` block as defined below.
  final pulumi.Input<List<IoTHubEndpoint>>? endpoints;
  final pulumi.Input<List<IoTHubEnrichment>>? enrichments;
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
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<List<IoTHubRoute>>? routes;
  /// A `sku` block as defined below.
  final pulumi.Input<IoTHubSku> sku;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IoTHubArgs].
  /// [cloudToDevice] Optional.
  /// [endpoints] An `endpoint` block as defined below.
  /// [enrichments] Optional.
  /// [eventHubPartitionCount] The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. Defaults to `4`.
  /// [eventHubRetentionInDays] The event hub retention to use in days. Must be between `1` and `7`. Defaults to `1`.
  /// [fallbackRoute] A `fallback_route` block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
  /// [fileUpload] A `file_upload` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [minTlsVersion] Optional.
  /// [name] Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  /// [networkRuleSets] A `network_rule_set` block as defined below.
  /// [publicNetworkAccessEnabled] Optional.
  /// [resourceGroupName] The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  /// [routes] Optional.
  /// [sku] A `sku` block as defined below.
  /// [tags] Optional.
  IoTHubArgs({
    this.cloudToDevice,
    this.endpoints,
    this.enrichments,
    this.eventHubPartitionCount,
    this.eventHubRetentionInDays,
    this.fallbackRoute,
    this.fileUpload,
    this.identity,
    this.localAuthenticationEnabled,
    this.location,
    this.minTlsVersion,
    this.name,
    this.networkRuleSets,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.routes,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudToDevice': ?pulumi.Input.mapOptionalInputValue<IoTHubCloudToDevice, Map<String, dynamic>>(cloudToDevice, (value) => value.toMap()),
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<IoTHubEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<IoTHubEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enrichments': ?pulumi.Input.mapOptionalInputValue<List<IoTHubEnrichment>, List<Map<String, dynamic>>>(enrichments, (value) => pulumi.Input.encodeList<IoTHubEnrichment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventHubPartitionCount': ?eventHubPartitionCount,
      'eventHubRetentionInDays': ?eventHubRetentionInDays,
      'fallbackRoute': ?pulumi.Input.mapOptionalInputValue<IoTHubFallbackRoute, Map<String, dynamic>>(fallbackRoute, (value) => value.toMap()),
      'fileUpload': ?pulumi.Input.mapOptionalInputValue<IoTHubFileUpload, Map<String, dynamic>>(fileUpload, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<IoTHubIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthenticationEnabled': ?localAuthenticationEnabled,
      'location': ?location,
      'minTlsVersion': ?minTlsVersion,
      'name': ?name,
      'networkRuleSets': ?pulumi.Input.mapOptionalInputValue<List<IoTHubNetworkRuleSet>, List<Map<String, dynamic>>>(networkRuleSets, (value) => pulumi.Input.encodeList<IoTHubNetworkRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<IoTHubRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<IoTHubRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': pulumi.Input.mapInputValue<IoTHubSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IoTHubArgs.fromMap(Map<String, dynamic> map) {
    return IoTHubArgs(
      cloudToDevice: map['cloudToDevice'] == null ? null : (IoTHubCloudToDevice.fromMap((map['cloudToDevice']! as Map).cast<String, dynamic>())).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<IoTHubEndpoint>(map['endpoints']!, (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enrichments: map['enrichments'] == null ? null : (pulumi.Input.decodeList<IoTHubEnrichment>(map['enrichments']!, (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      eventHubPartitionCount: map['eventHubPartitionCount'] == null ? null : (map['eventHubPartitionCount']! as int).input(),
      eventHubRetentionInDays: map['eventHubRetentionInDays'] == null ? null : (map['eventHubRetentionInDays']! as int).input(),
      fallbackRoute: map['fallbackRoute'] == null ? null : (IoTHubFallbackRoute.fromMap((map['fallbackRoute']! as Map).cast<String, dynamic>())).input(),
      fileUpload: map['fileUpload'] == null ? null : (IoTHubFileUpload.fromMap((map['fileUpload']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (IoTHubIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      localAuthenticationEnabled: map['localAuthenticationEnabled'] == null ? null : (map['localAuthenticationEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkRuleSets: map['networkRuleSets'] == null ? null : (pulumi.Input.decodeList<IoTHubNetworkRuleSet>(map['networkRuleSets']!, (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<IoTHubRoute>(map['routes']!, (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: (IoTHubSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

