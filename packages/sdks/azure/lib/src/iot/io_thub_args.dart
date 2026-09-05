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
  final pulumi.Input<IoTHubCloudToDevice?>? cloudToDevice;
  /// An `endpoint` block as defined below.
  final pulumi.Input<List<IoTHubEndpoint>?>? endpoints;
  final pulumi.Input<List<IoTHubEnrichment>?>? enrichments;
  /// The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. Defaults to `4`.
  final pulumi.Input<int?>? eventHubPartitionCount;
  /// The event hub retention to use in days. Must be between `1` and `7`. Defaults to `1`.
  final pulumi.Input<int?>? eventHubRetentionInDays;
  /// A `fallbackRoute` block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
  ///
  /// &gt; **Note:** If `fallbackRoute` isn't explicitly specified, the fallback route wouldn't be enabled by default.
  final pulumi.Input<IoTHubFallbackRoute?>? fallbackRoute;
  /// A `fileUpload` block as defined below.
  final pulumi.Input<IoTHubFileUpload?>? fileUpload;
  /// An `identity` block as defined below.
  final pulumi.Input<IoTHubIdentity?>? identity;
  /// If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`.
  final pulumi.Input<bool?>? localAuthenticationEnabled;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  final pulumi.Input<String?>? minTlsVersion;
  /// Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `networkRuleSet` block as defined below.
  final pulumi.Input<List<IoTHubNetworkRuleSet>?>? networkRuleSets;
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<List<IoTHubRoute>?>? routes;
  /// A `sku` block as defined below.
  final pulumi.Input<IoTHubSku> sku;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [IoTHubArgs].
  /// [cloudToDevice] Optional.
  /// [endpoints] An `endpoint` block as defined below.
  /// [enrichments] Optional.
  /// [eventHubPartitionCount] The number of device-to-cloud partitions used by backing event hubs. Must be between `2` and `128`. Defaults to `4`.
  /// [eventHubRetentionInDays] The event hub retention to use in days. Must be between `1` and `7`. Defaults to `1`.
  /// [fallbackRoute] A `fallbackRoute` block as defined below. If the fallback route is enabled, messages that don't match any of the supplied routes are automatically sent to this route. Defaults to messages/events.
  /// [fileUpload] A `fileUpload` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthenticationEnabled] If false, SAS tokens with Iot hub scoped SAS keys cannot be used for authentication. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [minTlsVersion] Optional.
  /// [name] Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
  /// [networkRuleSets] A `networkRuleSet` block as defined below.
  /// [publicNetworkAccessEnabled] Optional.
  /// [resourceGroupName] The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
  /// [routes] Optional.
  /// [sku] A `sku` block as defined below.
  /// [tags] Optional.
  const IoTHubArgs({
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
      cloudToDevice: (() { final guardedValue = map['cloudToDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubCloudToDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubEndpoint>(guardedValue, (value) => IoTHubEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enrichments: (() { final guardedValue = map['enrichments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubEnrichment>(guardedValue, (value) => IoTHubEnrichment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventHubPartitionCount: (() { final guardedValue = map['eventHubPartitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      eventHubRetentionInDays: (() { final guardedValue = map['eventHubRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      fallbackRoute: (() { final guardedValue = map['fallbackRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubFallbackRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileUpload: (() { final guardedValue = map['fileUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubFileUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IoTHubIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthenticationEnabled: (() { final guardedValue = map['localAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkRuleSets: (() { final guardedValue = map['networkRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubNetworkRuleSet>(guardedValue, (value) => IoTHubNetworkRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IoTHubRoute>(guardedValue, (value) => IoTHubRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: pulumi.Input.fromValue(IoTHubSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
