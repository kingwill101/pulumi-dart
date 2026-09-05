import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_additional_route.dart';
import 'waiting_room_args.dart';
import 'waiting_room_cookie_attributes.dart';
import 'waiting_room_state.dart';

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
/// const exampleWaitingRoom = new cloudflare.WaitingRoom("example_waiting_room", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     host: "shop.example.com",
///     name: "production_webinar",
///     newUsersPerMinute: 200,
///     totalActiveUsers: 200,
///     additionalRoutes: [{
///         host: "shop2.example.com",
///         path: "/shop2/checkout",
///     }],
///     cookieAttributes: {
///         samesite: "auto",
///         secure: "auto",
///     },
///     cookieSuffix: "abcd",
///     customPageHtml: "{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}",
///     defaultTemplateLanguage: "es-ES",
///     description: "Production - DO NOT MODIFY",
///     disableSessionRenewal: false,
///     enabledOriginCommands: ["revoke"],
///     jsonResponseEnabled: false,
///     path: "/shop/checkout",
///     queueAll: true,
///     queueingMethod: "fifo",
///     queueingStatusCode: 202,
///     sessionDuration: 1,
///     suspended: true,
///     turnstileAction: "log",
///     turnstileMode: "off",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_waiting_room = cloudflare.WaitingRoom("example_waiting_room",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     host="shop.example.com",
///     name="production_webinar",
///     new_users_per_minute=200,
///     total_active_users=200,
///     additional_routes=[{
///         "host": "shop2.example.com",
///         "path": "/shop2/checkout",
///     }],
///     cookie_attributes={
///         "samesite": "auto",
///         "secure": "auto",
///     },
///     cookie_suffix="abcd",
///     custom_page_html="{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}",
///     default_template_language="es-ES",
///     description="Production - DO NOT MODIFY",
///     disable_session_renewal=False,
///     enabled_origin_commands=["revoke"],
///     json_response_enabled=False,
///     path="/shop/checkout",
///     queue_all=True,
///     queueing_method="fifo",
///     queueing_status_code=202,
///     session_duration=1,
///     suspended=True,
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
///     var exampleWaitingRoom = new Cloudflare.WaitingRoom("example_waiting_room", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Host = "shop.example.com",
///         Name = "production_webinar",
///         NewUsersPerMinute = 200,
///         TotalActiveUsers = 200,
///         AdditionalRoutes = new[]
///         {
///             new Cloudflare.Inputs.WaitingRoomAdditionalRouteArgs
///             {
///                 Host = "shop2.example.com",
///                 Path = "/shop2/checkout",
///             },
///         },
///         CookieAttributes = new Cloudflare.Inputs.WaitingRoomCookieAttributesArgs
///         {
///             Samesite = "auto",
///             Secure = "auto",
///         },
///         CookieSuffix = "abcd",
///         CustomPageHtml = "{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}",
///         DefaultTemplateLanguage = "es-ES",
///         Description = "Production - DO NOT MODIFY",
///         DisableSessionRenewal = false,
///         EnabledOriginCommands = new[]
///         {
///             "revoke",
///         },
///         JsonResponseEnabled = false,
///         Path = "/shop/checkout",
///         QueueAll = true,
///         QueueingMethod = "fifo",
///         QueueingStatusCode = 202,
///         SessionDuration = 1,
///         Suspended = true,
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
/// 		_, err := cloudflare.NewWaitingRoom(ctx, "example_waiting_room", &cloudflare.WaitingRoomArgs{
/// 			ZoneId:            pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Host:              pulumi.String("shop.example.com"),
/// 			Name:              pulumi.String("production_webinar"),
/// 			NewUsersPerMinute: pulumi.Int(200),
/// 			TotalActiveUsers:  pulumi.Int(200),
/// 			AdditionalRoutes: cloudflare.WaitingRoomAdditionalRouteArray{
/// 				&cloudflare.WaitingRoomAdditionalRouteArgs{
/// 					Host: pulumi.String("shop2.example.com"),
/// 					Path: pulumi.String("/shop2/checkout"),
/// 				},
/// 			},
/// 			CookieAttributes: &cloudflare.WaitingRoomCookieAttributesArgs{
/// 				Samesite: pulumi.String("auto"),
/// 				Secure:   pulumi.String("auto"),
/// 			},
/// 			CookieSuffix:            pulumi.String("abcd"),
/// 			CustomPageHtml:          pulumi.String("{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}"),
/// 			DefaultTemplateLanguage: pulumi.String("es-ES"),
/// 			Description:             pulumi.String("Production - DO NOT MODIFY"),
/// 			DisableSessionRenewal:   pulumi.Bool(false),
/// 			EnabledOriginCommands: pulumi.StringArray{
/// 				pulumi.String("revoke"),
/// 			},
/// 			JsonResponseEnabled: pulumi.Bool(false),
/// 			Path:                pulumi.String("/shop/checkout"),
/// 			QueueAll:            pulumi.Bool(true),
/// 			QueueingMethod:      pulumi.String("fifo"),
/// 			QueueingStatusCode:  pulumi.Int(202),
/// 			SessionDuration:     pulumi.Int(1),
/// 			Suspended:           pulumi.Bool(true),
/// 			TurnstileAction:     pulumi.String("log"),
/// 			TurnstileMode:       pulumi.String("off"),
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
/// resource "cloudflare_waitingroom" "example_waiting_room" {
///   zone_id              = "023e105f4ecef8ad9ca31a8372d0c353"
///   host                 = "shop.example.com"
///   name                 = "production_webinar"
///   new_users_per_minute = 200
///   total_active_users   = 200
///   additional_routes {
///     host = "shop2.example.com"
///     path = "/shop2/checkout"
///   }
///   cookie_attributes = {
///     samesite = "auto"
///     secure   = "auto"
///   }
///   cookie_suffix             = "abcd"
///   custom_page_html          = "{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}"
///   default_template_language = "es-ES"
///   description               = "Production - DO NOT MODIFY"
///   disable_session_renewal   = false
///   enabled_origin_commands   = ["revoke"]
///   json_response_enabled     = false
///   path                      = "/shop/checkout"
///   queue_all                 = true
///   queueing_method           = "fifo"
///   queueing_status_code      = 202
///   session_duration          = 1
///   suspended                 = true
///   turnstile_action          = "log"
///   turnstile_mode            = "off"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.WaitingRoom;
/// import com.pulumi.cloudflare.WaitingRoomArgs;
/// import com.pulumi.cloudflare.inputs.WaitingRoomAdditionalRouteArgs;
/// import com.pulumi.cloudflare.inputs.WaitingRoomCookieAttributesArgs;
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
///         var exampleWaitingRoom = new WaitingRoom("exampleWaitingRoom", WaitingRoomArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .host("shop.example.com")
///             .name("production_webinar")
///             .newUsersPerMinute(200)
///             .totalActiveUsers(200)
///             .additionalRoutes(WaitingRoomAdditionalRouteArgs.builder()
///                 .host("shop2.example.com")
///                 .path("/shop2/checkout")
///                 .build())
///             .cookieAttributes(WaitingRoomCookieAttributesArgs.builder()
///                 .samesite("auto")
///                 .secure("auto")
///                 .build())
///             .cookieSuffix("abcd")
///             .customPageHtml("{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}")
///             .defaultTemplateLanguage("es-ES")
///             .description("Production - DO NOT MODIFY")
///             .disableSessionRenewal(false)
///             .enabledOriginCommands("revoke")
///             .jsonResponseEnabled(false)
///             .path("/shop/checkout")
///             .queueAll(true)
///             .queueingMethod("fifo")
///             .queueingStatusCode(202)
///             .sessionDuration(1)
///             .suspended(true)
///             .turnstileAction("log")
///             .turnstileMode("off")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWaitingRoom:
///     type: cloudflare:WaitingRoom
///     name: example_waiting_room
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       host: shop.example.com
///       name: production_webinar
///       newUsersPerMinute: 200
///       totalActiveUsers: 200
///       additionalRoutes:
///         - host: shop2.example.com
///           path: /shop2/checkout
///       cookieAttributes:
///         samesite: auto
///         secure: auto
///       cookieSuffix: abcd
///       customPageHtml: '{{#waitTimeKnown}} {{waitTime}} mins {{/waitTimeKnown}} {{^waitTimeKnown}} Queue all enabled {{/waitTimeKnown}}'
///       defaultTemplateLanguage: es-ES
///       description: Production - DO NOT MODIFY
///       disableSessionRenewal: false
///       enabledOriginCommands:
///         - revoke
///       jsonResponseEnabled: false
///       path: /shop/checkout
///       queueAll: true
///       queueingMethod: fifo
///       queueingStatusCode: 202
///       sessionDuration: 1
///       suspended: true
///       turnstileAction: log
///       turnstileMode: off
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/waitingRoom:WaitingRoom example '<zone_id>/<waiting_room_id>'
/// ```
class WaitingRoom extends pulumi.CustomResource {
  /// Only available for the Waiting Room Advanced subscription. Additional hostname and path combinations to which this waiting room will be applied. There is an implied wildcard at the end of the path. The hostname and path combination must be unique to this and all other waiting rooms.
  late final pulumi.Output<List<WaitingRoomAdditionalRoute>> additionalRoutes;
  /// Configures cookie attributes for the waiting room cookie. This encrypted cookie stores a user's status in the waiting room, such as queue position.
  late final pulumi.Output<WaitingRoomCookieAttributes> cookieAttributes;
  /// Appends a '_' + a custom suffix to the end of Cloudflare Waiting Room's cookie name(_*cf*waitingroom). If `cookieSuffix` is "abcd", the cookie name will be `__cf_waitingroom_abcd`. This field is required if using `additionalRoutes`.
  late final pulumi.Output<String> cookieSuffix;
  late final pulumi.Output<String> createdOn;
  /// Only available for the Waiting Room Advanced subscription. This is a template html file that will be rendered at the edge. If no custom*page*html is provided, the default waiting room will be used. The template is based on mustache ( https://mustache.github.io/ ). There are several variables that are evaluated by the Cloudflare edge:
  late final pulumi.Output<String> customPageHtml;
  /// The language of the default page template. If no defaultTemplateLanguage is provided, then `en-US` (English) will be used.
  /// Available values: "en-US", "es-ES", "de-DE", "fr-FR", "it-IT", "ja-JP", "ko-KR", "pt-BR", "zh-CN", "zh-TW", "nl-NL", "pl-PL", "id-ID", "tr-TR", "ar-EG", "ru-RU", "fa-IR", "bg-BG", "hr-HR", "cs-CZ", "da-DK", "fi-FI", "lt-LT", "lv-LV", "ms-MY", "nb-NO", "ro-RO", "el-GR", "he-IL", "hi-IN", "hu-HU", "sr-BA", "sk-SK", "sl-SI", "sv-SE", "tl-PH", "th-TH", "uk-UA", "vi-VN".
  late final pulumi.Output<String> defaultTemplateLanguage;
  /// A note that you can use to add more details about the waiting room.
  late final pulumi.Output<String> description;
  /// Only available for the Waiting Room Advanced subscription. Disables automatic renewal of session cookies. If `true`, an accepted user will have sessionDuration minutes to browse the site. After that, they will have to go through the waiting room again. If `false`, a user's session cookie will be automatically renewed on every request.
  late final pulumi.Output<bool> disableSessionRenewal;
  /// A list of enabled origin commands.
  late final pulumi.Output<List<String>> enabledOriginCommands;
  /// The host name to which the waiting room will be applied (no wildcards). Please do not include the scheme (http:// or https://). The host and path combination must be unique.
  late final pulumi.Output<String> host;
  /// Only available for the Waiting Room Advanced subscription. If `true`, requests to the waiting room with the header `Accept: application/json` will receive a JSON response object with information on the user's status in the waiting room as opposed to the configured static HTML page. This JSON response object has one property `cfWaitingRoom` which is an object containing the following fields:
  /// 1. `inWaitingRoom`: Boolean indicating if the user is in the waiting room (always **true**).
  /// 2. `waitTimeKnown`: Boolean indicating if the current estimated wait times are accurate. If **false**, they are not available.
  /// 3. `waitTime`: Valid only when `waitTimeKnown` is **true**. Integer indicating the current estimated time in minutes the user will wait in the waiting room. When `queueingMethod` is **random**, this is set to `waitTime50Percentile`.
  /// 4. `waitTime25Percentile`: Valid only when `queueingMethod` is **random** and `waitTimeKnown` is **true**. Integer indicating the current estimated maximum wait time for the 25% of users that gain entry the fastest (25th percentile).
  /// 5. `waitTime50Percentile`: Valid only when `queueingMethod` is **random** and `waitTimeKnown` is **true**. Integer indicating the current estimated maximum wait time for the 50% of users that gain entry the fastest (50th percentile). In other words, half of the queued users are expected to let into the origin website before `waitTime50Percentile` and half are expected to be let in after it.
  /// 6. `waitTime75Percentile`: Valid only when `queueingMethod` is **random** and `waitTimeKnown` is **true**. Integer indicating the current estimated maximum wait time for the 75% of users that gain entry the fastest (75th percentile).
  /// 7. `waitTimeFormatted`: String displaying the `waitTime` formatted in English for users. If `waitTimeKnown` is **false**, `waitTimeFormatted` will display **unavailable**.
  /// 8. `queueIsFull`: Boolean indicating if the waiting room's queue is currently full and not accepting new users at the moment.
  /// 9. `queueAll`: Boolean indicating if all users will be queued in the waiting room and no one will be let into the origin website.
  /// 10. `lastUpdated`: String displaying the timestamp as an ISO 8601 string of the user's last attempt to leave the waiting room and be let into the origin website. The user is able to make another attempt after `refreshIntervalSeconds` past this time. If the user makes a request too soon, it will be ignored and `lastUpdated` will not change.
  /// 11. `refreshIntervalSeconds`: Integer indicating the number of seconds after `lastUpdated` until the user is able to make another attempt to leave the waiting room and be let into the origin website. When the `queueingMethod` is `reject`, there is no specified refresh time —\_it will always be **zero**.
  /// 12. `queueingMethod`: The queueing method currently used by the waiting room. It is either **fifo**, **random**, **passthrough**, or **reject**.
  /// 13. `isFIFOQueue`: Boolean indicating if the waiting room uses a FIFO (First-In-First-Out) queue.
  /// 14. `isRandomQueue`: Boolean indicating if the waiting room uses a Random queue where users gain access randomly.
  /// 15. `isPassthroughQueue`: Boolean indicating if the waiting room uses a passthrough queue. Keep in mind that when passthrough is enabled, this JSON response will only exist when `queueAll` is **true** or `isEventPrequeueing` is **true** because in all other cases requests will go directly to the origin.
  /// 16. `isRejectQueue`: Boolean indicating if the waiting room uses a reject queue.
  /// 17. `isEventActive`: Boolean indicating if an event is currently occurring. Events are able to change a waiting room's behavior during a specified period of time. For additional information, look at the event properties `prequeueStartTime`, `eventStartTime`, and `eventEndTime` in the documentation for creating waiting room events. Events are considered active between these start and end times, as well as during the prequeueing period if it exists.
  /// 18. `isEventPrequeueing`: Valid only when `isEventActive` is **true**. Boolean indicating if an event is currently prequeueing users before it starts.
  /// 19. `timeUntilEventStart`: Valid only when `isEventPrequeueing` is **true**. Integer indicating the number of minutes until the event starts.
  /// 20. `timeUntilEventStartFormatted`: String displaying the `timeUntilEventStart` formatted in English for users. If `isEventPrequeueing` is **false**, `timeUntilEventStartFormatted` will display **unavailable**.
  /// 21. `timeUntilEventEnd`: Valid only when `isEventActive` is **true**. Integer indicating the number of minutes until the event ends.
  /// 22. `timeUntilEventEndFormatted`: String displaying the `timeUntilEventEnd` formatted in English for users. If `isEventActive` is **false**, `timeUntilEventEndFormatted` will display **unavailable**.
  /// 23. `shuffleAtEventStart`: Valid only when `isEventActive` is **true**. Boolean indicating if the users in the prequeue are shuffled randomly when the event starts.
  /// 24. `turnstile`: Empty when turnstile isn't enabled. String displaying an html tag to display the Turnstile widget. Please add the `{{{turnstile}}}` tag to the `customHtml` template to ensure the Turnstile widget appears.
  /// 25. `infiniteQueue`: Boolean indicating whether the response is for a user in the infinite queue.
  ///
  /// An example cURL to a waiting room could be:
  ///
  /// curl -X GET "https://example.com/waitingroom" \
  /// -H "Accept: application/json"
  ///
  /// If `jsonResponseEnabled` is **true** and the request hits the waiting room, an example JSON response when `queueingMethod` is **fifo** and no event is active could be:
  ///
  /// {
  /// "cfWaitingRoom": {
  /// "inWaitingRoom": true,
  /// "waitTimeKnown": true,
  /// "waitTime": 10,
  /// "waitTime25Percentile": 0,
  /// "waitTime50Percentile": 0,
  /// "waitTime75Percentile": 0,
  /// "waitTimeFormatted": "10 minutes",
  /// "queueIsFull": false,
  /// "queueAll": false,
  /// "lastUpdated": "2020-08-03T23:46:00.000Z",
  /// "refreshIntervalSeconds": 20,
  /// "queueingMethod": "fifo",
  /// "isFIFOQueue": true,
  /// "isRandomQueue": false,
  /// "isPassthroughQueue": false,
  /// "isRejectQueue": false,
  /// "isEventActive": false,
  /// "isEventPrequeueing": false,
  /// "timeUntilEventStart": 0,
  /// "timeUntilEventStartFormatted": "unavailable",
  /// "timeUntilEventEnd": 0,
  /// "timeUntilEventEndFormatted": "unavailable",
  /// "shuffleAtEventStart": false
  /// }
  /// }
  ///
  /// If `jsonResponseEnabled` is **true** and the request hits the waiting room, an example JSON response when `queueingMethod` is **random** and an event is active could be:
  ///
  /// {
  /// "cfWaitingRoom": {
  /// "inWaitingRoom": true,
  /// "waitTimeKnown": true,
  /// "waitTime": 10,
  /// "waitTime25Percentile": 5,
  /// "waitTime50Percentile": 10,
  /// "waitTime75Percentile": 15,
  /// "waitTimeFormatted": "5 minutes to 15 minutes",
  /// "queueIsFull": false,
  /// "queueAll": false,
  /// "lastUpdated": "2020-08-03T23:46:00.000Z",
  /// "refreshIntervalSeconds": 20,
  /// "queueingMethod": "random",
  /// "isFIFOQueue": false,
  /// "isRandomQueue": true,
  /// "isPassthroughQueue": false,
  /// "isRejectQueue": false,
  /// "isEventActive": true,
  /// "isEventPrequeueing": false,
  /// "timeUntilEventStart": 0,
  /// "timeUntilEventStartFormatted": "unavailable",
  /// "timeUntilEventEnd": 15,
  /// "timeUntilEventEndFormatted": "15 minutes",
  /// "shuffleAtEventStart": true
  /// }
  /// }
  late final pulumi.Output<bool> jsonResponseEnabled;
  late final pulumi.Output<String> modifiedOn;
  /// A unique name to identify the waiting room. Only alphanumeric characters, hyphens and underscores are allowed.
  late final pulumi.Output<String> name;
  /// Sets the number of new users that will be let into the route every minute. This value is used as baseline for the number of users that are let in per minute. So it is possible that there is a little more or little less traffic coming to the route based on the traffic patterns at that time around the world.
  late final pulumi.Output<int> newUsersPerMinute;
  /// An ISO 8601 timestamp that marks when the next event will begin queueing.
  late final pulumi.Output<String> nextEventPrequeueStartTime;
  /// An ISO 8601 timestamp that marks when the next event will start.
  late final pulumi.Output<String> nextEventStartTime;
  /// Sets the path within the host to enable the waiting room on. The waiting room will be enabled for all subpaths as well. If there are two waiting rooms on the same subpath, the waiting room for the most specific path will be chosen. Wildcards and query parameters are not supported.
  late final pulumi.Output<String> path;
  /// If queueAll is `true`, all the traffic that is coming to a route will be sent to the waiting room. No new traffic can get to the route once this field is set and estimated time will become unavailable.
  late final pulumi.Output<bool> queueAll;
  /// Sets the queueing method used by the waiting room. Changing this parameter from the **default** queueing method is only available for the Waiting Room Advanced subscription. Regardless of the queueing method, if `queueAll` is enabled or an event is prequeueing, users in the waiting room will not be accepted to the origin. These users will always see a waiting room page that refreshes automatically. The valid queueing methods are:
  /// 1. `fifo` **(default)**: First-In-First-Out queue where customers gain access in the order they arrived.
  /// 2. `random`: Random queue where customers gain access randomly, regardless of arrival time.
  /// 3. `passthrough`: Users will pass directly through the waiting room and into the origin website. As a result, any configured limits will not be respected while this is enabled. This method can be used as an alternative to disabling a waiting room (with `suspended`) so that analytics are still reported. This can be used if you wish to allow all traffic normally, but want to restrict traffic during a waiting room event, or vice versa.
  /// 4. `reject`: Users will be immediately rejected from the waiting room. As a result, no users will reach the origin website while this is enabled. This can be used if you wish to reject all traffic while performing maintenance, block traffic during a specified period of time (an event), or block traffic while events are not occurring. Consider a waiting room used for vaccine distribution that only allows traffic during sign-up events, and otherwise blocks all traffic. For this case, the waiting room uses `reject`, and its events override this with `fifo`, `random`, or `passthrough`. When this queueing method is enabled and neither `queueAll` is enabled nor an event is prequeueing, the waiting room page **will not refresh automatically**.
  /// Available values: "fifo", "random", "passthrough", "reject".
  late final pulumi.Output<String> queueingMethod;
  /// HTTP status code returned to a user while in the queue.
  /// Available values: 200, 202, 429.
  late final pulumi.Output<int> queueingStatusCode;
  /// Lifetime of a cookie (in minutes) set by Cloudflare for users who get access to the route. If a user is not seen by Cloudflare again in that time period, they will be treated as a new user that visits the route.
  late final pulumi.Output<int> sessionDuration;
  /// Suspends or allows traffic going to the waiting room. If set to `true`, the traffic will not go to the waiting room.
  late final pulumi.Output<bool> suspended;
  /// Sets the total number of active user sessions on the route at a point in time. A route is a combination of host and path on which a waiting room is available. This value is used as a baseline for the total number of active user sessions on the route. It is possible to have a situation where there are more or less active users sessions on the route based on the traffic patterns at that time around the world.
  late final pulumi.Output<int> totalActiveUsers;
  /// Which action to take when a bot is detected using Turnstile. `log` will
  /// have no impact on queueing behavior, simply keeping track of how many
  /// bots are detected in Waiting Room Analytics. `infiniteQueue` will send
  /// bots to a false queueing state, where they will never reach your
  /// origin. `infiniteQueue` requires Advanced Waiting Room.
  /// Available values: "log", "infiniteQueue".
  late final pulumi.Output<String> turnstileAction;
  /// Which Turnstile widget type to use for detecting bot traffic. See
  /// [the Turnstile documentation](https://developers.cloudflare.com/turnstile/concepts/widget/#widget-types)
  /// for the definitions of these widget types. Set to `off` to disable the
  /// Turnstile integration entirely. Setting this to anything other than
  /// `off` or `invisible` requires Advanced Waiting Room.
  /// Available values: "off", "invisible", "visibleNonInteractive", "visibleManaged".
  late final pulumi.Output<String> turnstileMode;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [WaitingRoom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WaitingRoom]. {@macro pulumi_index_waiting_room_waiting_room_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WaitingRoom(
    String name, {
    WaitingRoomArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoom:WaitingRoom',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    additionalRoutes = registerOutput<List<WaitingRoomAdditionalRoute>>('additionalRoutes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WaitingRoomAdditionalRoute>(guardedValue, (value) => WaitingRoomAdditionalRoute.fromMap((value as Map).cast<String, dynamic>())); });
    cookieAttributes = registerOutput<WaitingRoomCookieAttributes>('cookieAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WaitingRoomCookieAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cookieSuffix = registerOutput<String>('cookieSuffix');
    createdOn = registerOutput<String>('createdOn');
    customPageHtml = registerOutput<String>('customPageHtml');
    defaultTemplateLanguage = registerOutput<String>('defaultTemplateLanguage');
    description = registerOutput<String>('description');
    disableSessionRenewal = registerOutput<bool>('disableSessionRenewal');
    enabledOriginCommands = registerOutput<List<String>>('enabledOriginCommands', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    host = registerOutput<String>('host');
    jsonResponseEnabled = registerOutput<bool>('jsonResponseEnabled');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    newUsersPerMinute = registerOutput<int>('newUsersPerMinute');
    nextEventPrequeueStartTime = registerOutput<String>('nextEventPrequeueStartTime');
    nextEventStartTime = registerOutput<String>('nextEventStartTime');
    path = registerOutput<String>('path');
    queueAll = registerOutput<bool>('queueAll');
    queueingMethod = registerOutput<String>('queueingMethod');
    queueingStatusCode = registerOutput<int>('queueingStatusCode');
    sessionDuration = registerOutput<int>('sessionDuration');
    suspended = registerOutput<bool>('suspended');
    totalActiveUsers = registerOutput<int>('totalActiveUsers');
    turnstileAction = registerOutput<String>('turnstileAction');
    turnstileMode = registerOutput<String>('turnstileMode');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [WaitingRoom] resource's state with the given [name] and [id].
  static WaitingRoom get(
    String name,
    pulumi.Input<String> id, {
    WaitingRoomState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WaitingRoom._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WaitingRoom._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/waitingRoom:WaitingRoom',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalRoutes = registerOutput<List<WaitingRoomAdditionalRoute>>('additionalRoutes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WaitingRoomAdditionalRoute>(guardedValue, (value) => WaitingRoomAdditionalRoute.fromMap((value as Map).cast<String, dynamic>())); });
    cookieAttributes = registerOutput<WaitingRoomCookieAttributes>('cookieAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WaitingRoomCookieAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cookieSuffix = registerOutput<String>('cookieSuffix');
    createdOn = registerOutput<String>('createdOn');
    customPageHtml = registerOutput<String>('customPageHtml');
    defaultTemplateLanguage = registerOutput<String>('defaultTemplateLanguage');
    description = registerOutput<String>('description');
    disableSessionRenewal = registerOutput<bool>('disableSessionRenewal');
    enabledOriginCommands = registerOutput<List<String>>('enabledOriginCommands', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    host = registerOutput<String>('host');
    jsonResponseEnabled = registerOutput<bool>('jsonResponseEnabled');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    newUsersPerMinute = registerOutput<int>('newUsersPerMinute');
    nextEventPrequeueStartTime = registerOutput<String>('nextEventPrequeueStartTime');
    nextEventStartTime = registerOutput<String>('nextEventStartTime');
    path = registerOutput<String>('path');
    queueAll = registerOutput<bool>('queueAll');
    queueingMethod = registerOutput<String>('queueingMethod');
    queueingStatusCode = registerOutput<int>('queueingStatusCode');
    sessionDuration = registerOutput<int>('sessionDuration');
    suspended = registerOutput<bool>('suspended');
    totalActiveUsers = registerOutput<int>('totalActiveUsers');
    turnstileAction = registerOutput<String>('turnstileAction');
    turnstileMode = registerOutput<String>('turnstileMode');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [WaitingRoom] resource.
  WaitingRoom.reference(String urn)
    : super(
        'cloudflare:index/waitingRoom:WaitingRoom',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    additionalRoutes = registerOutput<List<WaitingRoomAdditionalRoute>>('additionalRoutes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WaitingRoomAdditionalRoute>(guardedValue, (value) => WaitingRoomAdditionalRoute.fromMap((value as Map).cast<String, dynamic>())); });
    cookieAttributes = registerOutput<WaitingRoomCookieAttributes>('cookieAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WaitingRoomCookieAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cookieSuffix = registerOutput<String>('cookieSuffix');
    createdOn = registerOutput<String>('createdOn');
    customPageHtml = registerOutput<String>('customPageHtml');
    defaultTemplateLanguage = registerOutput<String>('defaultTemplateLanguage');
    description = registerOutput<String>('description');
    disableSessionRenewal = registerOutput<bool>('disableSessionRenewal');
    enabledOriginCommands = registerOutput<List<String>>('enabledOriginCommands', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    host = registerOutput<String>('host');
    jsonResponseEnabled = registerOutput<bool>('jsonResponseEnabled');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    newUsersPerMinute = registerOutput<int>('newUsersPerMinute');
    nextEventPrequeueStartTime = registerOutput<String>('nextEventPrequeueStartTime');
    nextEventStartTime = registerOutput<String>('nextEventStartTime');
    path = registerOutput<String>('path');
    queueAll = registerOutput<bool>('queueAll');
    queueingMethod = registerOutput<String>('queueingMethod');
    queueingStatusCode = registerOutput<int>('queueingStatusCode');
    sessionDuration = registerOutput<int>('sessionDuration');
    suspended = registerOutput<bool>('suspended');
    totalActiveUsers = registerOutput<int>('totalActiveUsers');
    turnstileAction = registerOutput<String>('turnstileAction');
    turnstileMode = registerOutput<String>('turnstileMode');
    zoneId = registerOutput<String>('zoneId');
  }
}
