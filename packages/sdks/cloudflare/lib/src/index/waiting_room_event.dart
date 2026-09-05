import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_event_args.dart';
import 'waiting_room_event_state.dart';

/// Accepted Permissions
///
/// - `Waiting Rooms Read`
/// - `Waiting Rooms Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWaitingRoomEvent = new cloudflare.WaitingRoomEvent("example_waiting_room_event", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     waitingRoomId: "699d98642c564d2e855e9661899b7252",
///     eventEndTime: "2021-09-28T17:00:00.000Z",
///     eventStartTime: "2021-09-28T15:30:00.000Z",
///     name: "production_webinar_event",
///     customPageHtml: "{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}",
///     description: "Production event - DO NOT MODIFY",
///     disableSessionRenewal: true,
///     newUsersPerMinute: 200,
///     prequeueStartTime: "2021-09-28T15:00:00.000Z",
///     queueingMethod: "random",
///     sessionDuration: 1,
///     shuffleAtEventStart: true,
///     suspended: true,
///     totalActiveUsers: 200,
///     turnstileAction: "log",
///     turnstileMode: "off",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_waiting_room_event = cloudflare.WaitingRoomEvent("example_waiting_room_event",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     waiting_room_id="699d98642c564d2e855e9661899b7252",
///     event_end_time="2021-09-28T17:00:00.000Z",
///     event_start_time="2021-09-28T15:30:00.000Z",
///     name="production_webinar_event",
///     custom_page_html="{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}",
///     description="Production event - DO NOT MODIFY",
///     disable_session_renewal=True,
///     new_users_per_minute=200,
///     prequeue_start_time="2021-09-28T15:00:00.000Z",
///     queueing_method="random",
///     session_duration=1,
///     shuffle_at_event_start=True,
///     suspended=True,
///     total_active_users=200,
///     turnstile_action="log",
///     turnstile_mode="off")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWaitingRoomEvent = new Cloudflare.WaitingRoomEvent("example_waiting_room_event", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         WaitingRoomId = "699d98642c564d2e855e9661899b7252",
///         EventEndTime = "2021-09-28T17:00:00.000Z",
///         EventStartTime = "2021-09-28T15:30:00.000Z",
///         Name = "production_webinar_event",
///         CustomPageHtml = "{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}",
///         Description = "Production event - DO NOT MODIFY",
///         DisableSessionRenewal = true,
///         NewUsersPerMinute = 200,
///         PrequeueStartTime = "2021-09-28T15:00:00.000Z",
///         QueueingMethod = "random",
///         SessionDuration = 1,
///         ShuffleAtEventStart = true,
///         Suspended = true,
///         TotalActiveUsers = 200,
///         TurnstileAction = "log",
///         TurnstileMode = "off",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewWaitingRoomEvent(ctx, "example_waiting_room_event", &cloudflare.WaitingRoomEventArgs{
/// 			ZoneId:                pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			WaitingRoomId:         pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			EventEndTime:          pulumi.String("2021-09-28T17:00:00.000Z"),
/// 			EventStartTime:        pulumi.String("2021-09-28T15:30:00.000Z"),
/// 			Name:                  pulumi.String("production_webinar_event"),
/// 			CustomPageHtml:        pulumi.String("{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}"),
/// 			Description:           pulumi.String("Production event - DO NOT MODIFY"),
/// 			DisableSessionRenewal: pulumi.Bool(true),
/// 			NewUsersPerMinute:     pulumi.Int(200),
/// 			PrequeueStartTime:     pulumi.String("2021-09-28T15:00:00.000Z"),
/// 			QueueingMethod:        pulumi.String("random"),
/// 			SessionDuration:       pulumi.Int(1),
/// 			ShuffleAtEventStart:   pulumi.Bool(true),
/// 			Suspended:             pulumi.Bool(true),
/// 			TotalActiveUsers:      pulumi.Int(200),
/// 			TurnstileAction:       pulumi.String("log"),
/// 			TurnstileMode:         pulumi.String("off"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_waitingroomevent" "example_waiting_room_event" {
///   zone_id                 = "023e105f4ecef8ad9ca31a8372d0c353"
///   waiting_room_id         = "699d98642c564d2e855e9661899b7252"
///   event_end_time          = "2021-09-28T17:00:00.000Z"
///   event_start_time        = "2021-09-28T15:30:00.000Z"
///   name                    = "production_webinar_event"
///   custom_page_html        = "{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}"
///   description             = "Production event - DO NOT MODIFY"
///   disable_session_renewal = true
///   new_users_per_minute    = 200
///   prequeue_start_time     = "2021-09-28T15:00:00.000Z"
///   queueing_method         = "random"
///   session_duration        = 1
///   shuffle_at_event_start  = true
///   suspended               = true
///   total_active_users      = 200
///   turnstile_action        = "log"
///   turnstile_mode          = "off"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WaitingRoomEvent;
/// import com.pulumi.cloudflare.WaitingRoomEventArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleWaitingRoomEvent = new WaitingRoomEvent("exampleWaitingRoomEvent", WaitingRoomEventArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .waitingRoomId("699d98642c564d2e855e9661899b7252")
///             .eventEndTime("2021-09-28T17:00:00.000Z")
///             .eventStartTime("2021-09-28T15:30:00.000Z")
///             .name("production_webinar_event")
///             .customPageHtml("{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}")
///             .description("Production event - DO NOT MODIFY")
///             .disableSessionRenewal(true)
///             .newUsersPerMinute(200)
///             .prequeueStartTime("2021-09-28T15:00:00.000Z")
///             .queueingMethod("random")
///             .sessionDuration(1)
///             .shuffleAtEventStart(true)
///             .suspended(true)
///             .totalActiveUsers(200)
///             .turnstileAction("log")
///             .turnstileMode("off")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWaitingRoomEvent:
///     type: cloudflare:WaitingRoomEvent
///     name: example_waiting_room_event
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       waitingRoomId: 699d98642c564d2e855e9661899b7252
///       eventEndTime: 2021-09-28T17:00:00.000Z
///       eventStartTime: 2021-09-28T15:30:00.000Z
///       name: production_webinar_event
///       customPageHtml: '{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Event is prequeueing / Queue all enabled {{/waitTimeKnown}}'
///       description: Production event - DO NOT MODIFY
///       disableSessionRenewal: true
///       newUsersPerMinute: 200
///       prequeueStartTime: 2021-09-28T15:00:00.000Z
///       queueingMethod: random
///       sessionDuration: 1
///       shuffleAtEventStart: true
///       suspended: true
///       totalActiveUsers: 200
///       turnstileAction: log
///       turnstileMode: off
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/waitingRoomEvent:WaitingRoomEvent example '<zone_id>/<waiting_room_id>/<event_id>'
/// ```
class WaitingRoomEvent extends pulumi.CustomResource {
  late final pulumi.Output<String> createdOn;
  /// If set, the event will override the waiting room's `customPageHtml` property while it is active. If null, the event will inherit it.
  late final pulumi.Output<String?> customPageHtml;
  /// A note that you can use to add more details about the event.
  late final pulumi.Output<String> description;
  /// If set, the event will override the waiting room's `disableSessionRenewal` property while it is active. If null, the event will inherit it.
  late final pulumi.Output<bool?> disableSessionRenewal;
  /// An ISO 8601 timestamp that marks the end of the event.
  late final pulumi.Output<String> eventEndTime;
  /// An ISO 8601 timestamp that marks the start of the event. At this time, queued users will be processed with the event's configuration. The start time must be at least one minute before `eventEndTime`.
  late final pulumi.Output<String> eventStartTime;
  late final pulumi.Output<String> modifiedOn;
  /// A unique name to identify the event. Only alphanumeric characters, hyphens and underscores are allowed.
  late final pulumi.Output<String> name;
  /// If set, the event will override the waiting room's `newUsersPerMinute` property while it is active. If null, the event will inherit it. This can only be set if the event's `totalActiveUsers` property is also set.
  late final pulumi.Output<int?> newUsersPerMinute;
  /// An ISO 8601 timestamp that marks when to begin queueing all users before the event starts. The prequeue must start at least five minutes before `eventStartTime`.
  late final pulumi.Output<String?> prequeueStartTime;
  /// If set, the event will override the waiting room's `queueingMethod` property while it is active. If null, the event will inherit it.
  late final pulumi.Output<String?> queueingMethod;
  /// If set, the event will override the waiting room's `sessionDuration` property while it is active. If null, the event will inherit it.
  late final pulumi.Output<int?> sessionDuration;
  /// If enabled, users in the prequeue will be shuffled randomly at the `eventStartTime`. Requires that `prequeueStartTime` is not null. This is useful for situations when many users will join the event prequeue at the same time and you want to shuffle them to ensure fairness. Naturally, it makes the most sense to enable this feature when the `queueingMethod` during the event respects ordering such as **fifo**, or else the shuffling may be unnecessary.
  late final pulumi.Output<bool> shuffleAtEventStart;
  /// Suspends or allows an event. If set to `true`, the event is ignored and traffic will be handled based on the waiting room configuration.
  late final pulumi.Output<bool> suspended;
  /// If set, the event will override the waiting room's `totalActiveUsers` property while it is active. If null, the event will inherit it. This can only be set if the event's `newUsersPerMinute` property is also set.
  late final pulumi.Output<int?> totalActiveUsers;
  /// If set, the event will override the waiting room's `turnstileAction` property while it is active. If null, the event will inherit it.
  /// Available values: "log", "infiniteQueue".
  late final pulumi.Output<String?> turnstileAction;
  /// If set, the event will override the waiting room's `turnstileMode` property while it is active. If null, the event will inherit it.
  /// Available values: "off", "invisible", "visible*non*interactive", "visibleManaged".
  late final pulumi.Output<String?> turnstileMode;
  late final pulumi.Output<String> waitingRoomId;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [WaitingRoomEvent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoomEvent]. {@macro pulumi_index_waiting_room_event_waiting_room_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoomEvent(
    String name, {
    WaitingRoomEventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoomEvent:WaitingRoomEvent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    createdOn = registerOutput<String>('createdOn');
    customPageHtml = registerOutput<String?>('customPageHtml');
    description = registerOutput<String>('description');
    disableSessionRenewal = registerOutput<bool?>('disableSessionRenewal');
    eventEndTime = registerOutput<String>('eventEndTime');
    eventStartTime = registerOutput<String>('eventStartTime');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    newUsersPerMinute = registerOutput<int?>('newUsersPerMinute');
    prequeueStartTime = registerOutput<String?>('prequeueStartTime');
    queueingMethod = registerOutput<String?>('queueingMethod');
    sessionDuration = registerOutput<int?>('sessionDuration');
    shuffleAtEventStart = registerOutput<bool>('shuffleAtEventStart');
    suspended = registerOutput<bool>('suspended');
    totalActiveUsers = registerOutput<int?>('totalActiveUsers');
    turnstileAction = registerOutput<String?>('turnstileAction');
    turnstileMode = registerOutput<String?>('turnstileMode');
    waitingRoomId = registerOutput<String>('waitingRoomId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [WaitingRoomEvent] resource's state with the given [name] and [id].
  static WaitingRoomEvent get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomEventState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WaitingRoomEvent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WaitingRoomEvent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoomEvent:WaitingRoomEvent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdOn = registerOutput<String>('createdOn');
    customPageHtml = registerOutput<String?>('customPageHtml');
    description = registerOutput<String>('description');
    disableSessionRenewal = registerOutput<bool?>('disableSessionRenewal');
    eventEndTime = registerOutput<String>('eventEndTime');
    eventStartTime = registerOutput<String>('eventStartTime');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    newUsersPerMinute = registerOutput<int?>('newUsersPerMinute');
    prequeueStartTime = registerOutput<String?>('prequeueStartTime');
    queueingMethod = registerOutput<String?>('queueingMethod');
    sessionDuration = registerOutput<int?>('sessionDuration');
    shuffleAtEventStart = registerOutput<bool>('shuffleAtEventStart');
    suspended = registerOutput<bool>('suspended');
    totalActiveUsers = registerOutput<int?>('totalActiveUsers');
    turnstileAction = registerOutput<String?>('turnstileAction');
    turnstileMode = registerOutput<String?>('turnstileMode');
    waitingRoomId = registerOutput<String>('waitingRoomId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [WaitingRoomEvent] resource.
  WaitingRoomEvent.reference(String urn)
    : super(
        'cloudflare:index/waitingRoomEvent:WaitingRoomEvent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdOn = registerOutput<String>('createdOn');
    customPageHtml = registerOutput<String?>('customPageHtml');
    description = registerOutput<String>('description');
    disableSessionRenewal = registerOutput<bool?>('disableSessionRenewal');
    eventEndTime = registerOutput<String>('eventEndTime');
    eventStartTime = registerOutput<String>('eventStartTime');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    newUsersPerMinute = registerOutput<int?>('newUsersPerMinute');
    prequeueStartTime = registerOutput<String?>('prequeueStartTime');
    queueingMethod = registerOutput<String?>('queueingMethod');
    sessionDuration = registerOutput<int?>('sessionDuration');
    shuffleAtEventStart = registerOutput<bool>('shuffleAtEventStart');
    suspended = registerOutput<bool>('suspended');
    totalActiveUsers = registerOutput<int?>('totalActiveUsers');
    turnstileAction = registerOutput<String?>('turnstileAction');
    turnstileMode = registerOutput<String?>('turnstileMode');
    waitingRoomId = registerOutput<String>('waitingRoomId');
    zoneId = registerOutput<String>('zoneId');
  }
}
