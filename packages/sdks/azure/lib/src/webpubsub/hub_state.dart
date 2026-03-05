// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_event_handler.dart';
import 'hub_event_listener.dart';

/// Input properties used for looking up and filtering Hub resources.
class HubState {
  /// Is anonymous connections are allowed for this hub? Defaults to `false`.
  /// Possible values are `true`, `false`.
  final pulumi.Input<bool>? anonymousConnectionsEnabled;
  /// An `event_handler` block as defined below.
  ///
  /// &gt; **Note:** User can change the order of `event_handler` to change the priority accordingly.
  final pulumi.Input<List<HubEventHandler>>? eventHandlers;
  /// An `event_listener` block as defined below.
  ///
  /// &gt; **Note:** The managed identity of Web PubSub service must be enabled and the identity must have the "Azure Event Hubs Data sender" role to access the Event Hub.
  final pulumi.Input<List<HubEventListener>>? eventListeners;
  /// The name of the Web Pubsub hub service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the id of the Web Pubsub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? webPubsubId;

  /// Creates a new [HubState].
  /// [anonymousConnectionsEnabled] Is anonymous connections are allowed for this hub? Defaults to `false`.
  /// [eventHandlers] An `event_handler` block as defined below.
  /// [eventListeners] An `event_listener` block as defined below.
  /// [name] The name of the Web Pubsub hub service. Changing this forces a new resource to be created.
  /// [webPubsubId] Specifies the id of the Web Pubsub. Changing this forces a new resource to be created.
  HubState({
    this.anonymousConnectionsEnabled,
    this.eventHandlers,
    this.eventListeners,
    this.name,
    this.webPubsubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousConnectionsEnabled': ?anonymousConnectionsEnabled,
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<HubEventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<HubEventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eventListeners': ?pulumi.Input.mapOptionalInputValue<List<HubEventListener>, List<Map<String, dynamic>>>(eventListeners, (value) => pulumi.Input.encodeList<HubEventListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'webPubsubId': ?webPubsubId,
    };
  }

  factory HubState.fromMap(Map<String, dynamic> map) {
    return HubState(
      anonymousConnectionsEnabled: (() { final guardedValue = map['anonymousConnectionsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventHandlers: (() { final guardedValue = map['eventHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HubEventHandler>(guardedValue, (value) => HubEventHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eventListeners: (() { final guardedValue = map['eventListeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HubEventListener>(guardedValue, (value) => HubEventListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webPubsubId: (() { final guardedValue = map['webPubsubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

