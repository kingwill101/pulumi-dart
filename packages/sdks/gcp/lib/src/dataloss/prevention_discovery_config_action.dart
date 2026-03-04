// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_export_data.dart';
import 'prevention_discovery_config_action_pub_sub_notification.dart';
import 'prevention_discovery_config_action_tag_resources.dart';

class PreventionDiscoveryConfigAction {
  /// Export data profiles into a provided location
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionExportData>? exportData;

  /// Publish a message into the Pub/Sub topic.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionPubSubNotification>?
  pubSubNotification;

  /// Publish a portion of each profile to Dataplex Universal Catalog with the aspect type Sensitive Data Protection Profile.
  final pulumi.Input<Map<String, dynamic>>? publishToDataplexCatalog;

  /// Tag the profiled resources with the specified tag values.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionTagResources>? tagResources;

  /// Creates a new [PreventionDiscoveryConfigAction].
  /// [exportData] Export data profiles into a provided location
  /// [pubSubNotification] Publish a message into the Pub/Sub topic.
  /// [publishToDataplexCatalog] Publish a portion of each profile to Dataplex Universal Catalog with the aspect type Sensitive Data Protection Profile.
  /// [tagResources] Tag the profiled resources with the specified tag values.
  PreventionDiscoveryConfigAction({
    this.exportData,
    this.pubSubNotification,
    this.publishToDataplexCatalog,
    this.tagResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportData':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigActionExportData,
            Map<String, dynamic>
          >(exportData, (value) => value.toMap()),
      'pubSubNotification':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigActionPubSubNotification,
            Map<String, dynamic>
          >(pubSubNotification, (value) => value.toMap()),
      'publishToDataplexCatalog': ?publishToDataplexCatalog,
      'tagResources':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigActionTagResources,
            Map<String, dynamic>
          >(tagResources, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigAction.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigAction(
      exportData: (() {
        final guardedValue = map['exportData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigActionExportData.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pubSubNotification: (() {
        final guardedValue = map['pubSubNotification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigActionPubSubNotification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      publishToDataplexCatalog: (() {
        final guardedValue = map['publishToDataplexCatalog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      tagResources: (() {
        final guardedValue = map['tagResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigActionTagResources.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
