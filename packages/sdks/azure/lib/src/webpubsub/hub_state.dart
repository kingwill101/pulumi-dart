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
  /// > **Note:** User can change the order of `event_handler` to change the priority accordingly.
  final pulumi.Input<List<HubEventHandler>>? eventHandlers;
  /// An `event_listener` block as defined below.
  ///
  /// > **Note:** The managed identity of Web PubSub service must be enabled and the identity must have the "Azure Event Hubs Data sender" role to access the Event Hub.
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
    pulumi.Output<bool>? anonymousConnectionsEnabled,
    pulumi.Output<List<HubEventHandler>>? eventHandlers,
    pulumi.Output<List<HubEventListener>>? eventListeners,
    pulumi.Output<String>? name,
    pulumi.Output<String>? webPubsubId,
  }) :
      anonymousConnectionsEnabled = pulumi.Input.asOptionalInput<bool>(anonymousConnectionsEnabled),
      eventHandlers = pulumi.Input.asOptionalInput<List<HubEventHandler>>(eventHandlers),
      eventListeners = pulumi.Input.asOptionalInput<List<HubEventListener>>(eventListeners),
      name = pulumi.Input.asOptionalInput<String>(name),
      webPubsubId = pulumi.Input.asOptionalInput<String>(webPubsubId);

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
      anonymousConnectionsEnabled: map['anonymousConnectionsEnabled'] == null ? null : pulumi.Output.create<bool>(map['anonymousConnectionsEnabled'] as bool),
      eventHandlers: map['eventHandlers'] == null ? null : pulumi.Output.create<List<HubEventHandler>>(pulumi.Input.decodeList<HubEventHandler>(map['eventHandlers'], (value) => HubEventHandler.fromMap((value as Map).cast<String, dynamic>()))),
      eventListeners: map['eventListeners'] == null ? null : pulumi.Output.create<List<HubEventListener>>(pulumi.Input.decodeList<HubEventListener>(map['eventListeners'], (value) => HubEventListener.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      webPubsubId: map['webPubsubId'] == null ? null : pulumi.Output.create<String>(map['webPubsubId'] as String),
    );
  }
}

