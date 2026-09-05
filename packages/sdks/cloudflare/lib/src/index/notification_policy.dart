import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_policy_args.dart';
import 'notification_policy_filters.dart';
import 'notification_policy_mechanisms.dart';
import 'notification_policy_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
/// - `Notifications Read`
/// - `Notifications Write`
/// - `Zero Trust: PII Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleNotificationPolicy = new cloudflare.NotificationPolicy("example_notification_policy", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     alertType: "universal_ssl_event_type",
///     enabled: true,
///     mechanisms: {
///         emails: [{
///             id: "id",
///         }],
///         pagerduties: [{
///             id: "f174e90afafe4643bbbc4a0ed4fc8415",
///         }],
///         webhooks: [{
///             id: "f174e90afafe4643bbbc4a0ed4fc8415",
///         }],
///     },
///     name: "SSL Notification Event Policy",
///     alertInterval: "30m",
///     description: "Something describing the policy.",
///     filters: {
///         actions: ["string"],
///         affectedAsns: ["string"],
///         affectedComponents: ["string"],
///         affectedLocations: ["string"],
///         airportCodes: ["string"],
///         alertTriggerPreferences: ["string"],
///         alertTriggerPreferencesValues: ["string"],
///         enableds: ["string"],
///         environments: ["string"],
///         events: ["string"],
///         eventSources: ["string"],
///         eventTypes: ["string"],
///         groupBies: ["string"],
///         healthCheckIds: ["string"],
///         incidentImpacts: ["INCIDENT_IMPACT_NONE"],
///         inputIds: ["string"],
///         insightClasses: ["string"],
///         limits: ["string"],
///         logoTags: ["string"],
///         megabitsPerSeconds: ["string"],
///         newHealths: ["string"],
///         newStatuses: ["string"],
///         packetsPerSeconds: ["string"],
///         poolIds: ["string"],
///         popNames: ["string"],
///         products: ["string"],
///         projectIds: ["string"],
///         protocols: ["string"],
///         queryTags: ["string"],
///         requestsPerSeconds: ["string"],
///         selectors: ["string"],
///         services: ["string"],
///         slos: ["99.9"],
///         statuses: ["string"],
///         targetHostnames: ["string"],
///         targetIps: ["string"],
///         targetZoneNames: ["string"],
///         trafficExclusions: ["security_events"],
///         tunnelIds: ["string"],
///         tunnelNames: ["string"],
///         types: ["string"],
///         wheres: ["string"],
///         zones: ["string"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_notification_policy = cloudflare.NotificationPolicy("example_notification_policy",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     alert_type="universal_ssl_event_type",
///     enabled=True,
///     mechanisms={
///         "emails": [{
///             "id": "id",
///         }],
///         "pagerduties": [{
///             "id": "f174e90afafe4643bbbc4a0ed4fc8415",
///         }],
///         "webhooks": [{
///             "id": "f174e90afafe4643bbbc4a0ed4fc8415",
///         }],
///     },
///     name="SSL Notification Event Policy",
///     alert_interval="30m",
///     description="Something describing the policy.",
///     filters={
///         "actions": ["string"],
///         "affected_asns": ["string"],
///         "affected_components": ["string"],
///         "affected_locations": ["string"],
///         "airport_codes": ["string"],
///         "alert_trigger_preferences": ["string"],
///         "alert_trigger_preferences_values": ["string"],
///         "enableds": ["string"],
///         "environments": ["string"],
///         "events": ["string"],
///         "event_sources": ["string"],
///         "event_types": ["string"],
///         "group_bies": ["string"],
///         "health_check_ids": ["string"],
///         "incident_impacts": ["INCIDENT_IMPACT_NONE"],
///         "input_ids": ["string"],
///         "insight_classes": ["string"],
///         "limits": ["string"],
///         "logo_tags": ["string"],
///         "megabits_per_seconds": ["string"],
///         "new_healths": ["string"],
///         "new_statuses": ["string"],
///         "packets_per_seconds": ["string"],
///         "pool_ids": ["string"],
///         "pop_names": ["string"],
///         "products": ["string"],
///         "project_ids": ["string"],
///         "protocols": ["string"],
///         "query_tags": ["string"],
///         "requests_per_seconds": ["string"],
///         "selectors": ["string"],
///         "services": ["string"],
///         "slos": ["99.9"],
///         "statuses": ["string"],
///         "target_hostnames": ["string"],
///         "target_ips": ["string"],
///         "target_zone_names": ["string"],
///         "traffic_exclusions": ["security_events"],
///         "tunnel_ids": ["string"],
///         "tunnel_names": ["string"],
///         "types": ["string"],
///         "wheres": ["string"],
///         "zones": ["string"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleNotificationPolicy = new Cloudflare.NotificationPolicy("example_notification_policy", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         AlertType = "universal_ssl_event_type",
///         Enabled = true,
///         Mechanisms = new Cloudflare.Inputs.NotificationPolicyMechanismsArgs
///         {
///             Emails = new[]
///             {
///                 new Cloudflare.Inputs.NotificationPolicyMechanismsEmailArgs
///                 {
///                     Id = "id",
///                 },
///             },
///             Pagerduties = new[]
///             {
///                 new Cloudflare.Inputs.NotificationPolicyMechanismsPagerdutyArgs
///                 {
///                     Id = "f174e90afafe4643bbbc4a0ed4fc8415",
///                 },
///             },
///             Webhooks = new[]
///             {
///                 new Cloudflare.Inputs.NotificationPolicyMechanismsWebhookArgs
///                 {
///                     Id = "f174e90afafe4643bbbc4a0ed4fc8415",
///                 },
///             },
///         },
///         Name = "SSL Notification Event Policy",
///         AlertInterval = "30m",
///         Description = "Something describing the policy.",
///         Filters = new Cloudflare.Inputs.NotificationPolicyFiltersArgs
///         {
///             Actions = new[]
///             {
///                 "string",
///             },
///             AffectedAsns = new[]
///             {
///                 "string",
///             },
///             AffectedComponents = new[]
///             {
///                 "string",
///             },
///             AffectedLocations = new[]
///             {
///                 "string",
///             },
///             AirportCodes = new[]
///             {
///                 "string",
///             },
///             AlertTriggerPreferences = new[]
///             {
///                 "string",
///             },
///             AlertTriggerPreferencesValues = new[]
///             {
///                 "string",
///             },
///             Enableds = new[]
///             {
///                 "string",
///             },
///             Environments = new[]
///             {
///                 "string",
///             },
///             Events = new[]
///             {
///                 "string",
///             },
///             EventSources = new[]
///             {
///                 "string",
///             },
///             EventTypes = new[]
///             {
///                 "string",
///             },
///             GroupBies = new[]
///             {
///                 "string",
///             },
///             HealthCheckIds = new[]
///             {
///                 "string",
///             },
///             IncidentImpacts = new[]
///             {
///                 "INCIDENT_IMPACT_NONE",
///             },
///             InputIds = new[]
///             {
///                 "string",
///             },
///             InsightClasses = new[]
///             {
///                 "string",
///             },
///             Limits = new[]
///             {
///                 "string",
///             },
///             LogoTags = new[]
///             {
///                 "string",
///             },
///             MegabitsPerSeconds = new[]
///             {
///                 "string",
///             },
///             NewHealths = new[]
///             {
///                 "string",
///             },
///             NewStatuses = new[]
///             {
///                 "string",
///             },
///             PacketsPerSeconds = new[]
///             {
///                 "string",
///             },
///             PoolIds = new[]
///             {
///                 "string",
///             },
///             PopNames = new[]
///             {
///                 "string",
///             },
///             Products = new[]
///             {
///                 "string",
///             },
///             ProjectIds = new[]
///             {
///                 "string",
///             },
///             Protocols = new[]
///             {
///                 "string",
///             },
///             QueryTags = new[]
///             {
///                 "string",
///             },
///             RequestsPerSeconds = new[]
///             {
///                 "string",
///             },
///             Selectors = new[]
///             {
///                 "string",
///             },
///             Services = new[]
///             {
///                 "string",
///             },
///             Slos = new[]
///             {
///                 "99.9",
///             },
///             Statuses = new[]
///             {
///                 "string",
///             },
///             TargetHostnames = new[]
///             {
///                 "string",
///             },
///             TargetIps = new[]
///             {
///                 "string",
///             },
///             TargetZoneNames = new[]
///             {
///                 "string",
///             },
///             TrafficExclusions = new[]
///             {
///                 "security_events",
///             },
///             TunnelIds = new[]
///             {
///                 "string",
///             },
///             TunnelNames = new[]
///             {
///                 "string",
///             },
///             Types = new[]
///             {
///                 "string",
///             },
///             Wheres = new[]
///             {
///                 "string",
///             },
///             Zones = new[]
///             {
///                 "string",
///             },
///         },
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
/// 		_, err := cloudflare.NewNotificationPolicy(ctx, "example_notification_policy", &cloudflare.NotificationPolicyArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			AlertType: pulumi.String("universal_ssl_event_type"),
/// 			Enabled:   pulumi.Bool(true),
/// 			Mechanisms: &cloudflare.NotificationPolicyMechanismsArgs{
/// 				Emails: cloudflare.NotificationPolicyMechanismsEmailArray{
/// 					&cloudflare.NotificationPolicyMechanismsEmailArgs{
/// 						Id: pulumi.String("id"),
/// 					},
/// 				},
/// 				Pagerduties: cloudflare.NotificationPolicyMechanismsPagerdutyArray{
/// 					&cloudflare.NotificationPolicyMechanismsPagerdutyArgs{
/// 						Id: pulumi.String("f174e90afafe4643bbbc4a0ed4fc8415"),
/// 					},
/// 				},
/// 				Webhooks: cloudflare.NotificationPolicyMechanismsWebhookArray{
/// 					&cloudflare.NotificationPolicyMechanismsWebhookArgs{
/// 						Id: pulumi.String("f174e90afafe4643bbbc4a0ed4fc8415"),
/// 					},
/// 				},
/// 			},
/// 			Name:          pulumi.String("SSL Notification Event Policy"),
/// 			AlertInterval: pulumi.String("30m"),
/// 			Description:   pulumi.String("Something describing the policy."),
/// 			Filters: &cloudflare.NotificationPolicyFiltersArgs{
/// 				Actions: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				AffectedAsns: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				AffectedComponents: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				AffectedLocations: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				AirportCodes: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				AlertTriggerPreferences: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				AlertTriggerPreferencesValues: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Enableds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Environments: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				EventSources: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				EventTypes: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				GroupBies: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				HealthCheckIds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				IncidentImpacts: pulumi.StringArray{
/// 					pulumi.String("INCIDENT_IMPACT_NONE"),
/// 				},
/// 				InputIds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				InsightClasses: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Limits: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				LogoTags: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				MegabitsPerSeconds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				NewHealths: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				NewStatuses: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				PacketsPerSeconds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				PoolIds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				PopNames: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Products: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				ProjectIds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Protocols: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				QueryTags: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				RequestsPerSeconds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Selectors: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Services: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Slos: pulumi.StringArray{
/// 					pulumi.String("99.9"),
/// 				},
/// 				Statuses: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				TargetHostnames: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				TargetIps: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				TargetZoneNames: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				TrafficExclusions: pulumi.StringArray{
/// 					pulumi.String("security_events"),
/// 				},
/// 				TunnelIds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				TunnelNames: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Types: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Wheres: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Zones: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 			},
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
/// resource "cloudflare_notificationpolicy" "example_notification_policy" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   alert_type = "universal_ssl_event_type"
///   enabled    = true
///   mechanisms = {
///     emails = [{
///       "id" = "id"
///     }]
///     pagerduties = [{
///       "id" = "f174e90afafe4643bbbc4a0ed4fc8415"
///     }]
///     webhooks = [{
///       "id" = "f174e90afafe4643bbbc4a0ed4fc8415"
///     }]
///   }
///   name           = "SSL Notification Event Policy"
///   alert_interval = "30m"
///   description    = "Something describing the policy."
///   filters = {
///     actions                          = ["string"]
///     affected_asns                    = ["string"]
///     affected_components              = ["string"]
///     affected_locations               = ["string"]
///     airport_codes                    = ["string"]
///     alert_trigger_preferences        = ["string"]
///     alert_trigger_preferences_values = ["string"]
///     enableds                         = ["string"]
///     environments                     = ["string"]
///     events                           = ["string"]
///     event_sources                    = ["string"]
///     event_types                      = ["string"]
///     group_bies                       = ["string"]
///     health_check_ids                 = ["string"]
///     incident_impacts                 = ["INCIDENT_IMPACT_NONE"]
///     input_ids                        = ["string"]
///     insight_classes                  = ["string"]
///     limits                           = ["string"]
///     logo_tags                        = ["string"]
///     megabits_per_seconds             = ["string"]
///     new_healths                      = ["string"]
///     new_statuses                     = ["string"]
///     packets_per_seconds              = ["string"]
///     pool_ids                         = ["string"]
///     pop_names                        = ["string"]
///     products                         = ["string"]
///     project_ids                      = ["string"]
///     protocols                        = ["string"]
///     query_tags                       = ["string"]
///     requests_per_seconds             = ["string"]
///     selectors                        = ["string"]
///     services                         = ["string"]
///     slos                             = ["99.9"]
///     statuses                         = ["string"]
///     target_hostnames                 = ["string"]
///     target_ips                       = ["string"]
///     target_zone_names                = ["string"]
///     traffic_exclusions               = ["security_events"]
///     tunnel_ids                       = ["string"]
///     tunnel_names                     = ["string"]
///     types                            = ["string"]
///     wheres                           = ["string"]
///     zones                            = ["string"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.NotificationPolicy;
/// import com.pulumi.cloudflare.NotificationPolicyArgs;
/// import com.pulumi.cloudflare.inputs.NotificationPolicyMechanismsArgs;
/// import com.pulumi.cloudflare.inputs.NotificationPolicyMechanismsEmailArgs;
/// import com.pulumi.cloudflare.inputs.NotificationPolicyMechanismsPagerdutyArgs;
/// import com.pulumi.cloudflare.inputs.NotificationPolicyMechanismsWebhookArgs;
/// import com.pulumi.cloudflare.inputs.NotificationPolicyFiltersArgs;
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
///         var exampleNotificationPolicy = new NotificationPolicy("exampleNotificationPolicy", NotificationPolicyArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .alertType("universal_ssl_event_type")
///             .enabled(true)
///             .mechanisms(NotificationPolicyMechanismsArgs.builder()
///                 .emails(NotificationPolicyMechanismsEmailArgs.builder()
///                     .id("id")
///                     .build())
///                 .pagerduties(NotificationPolicyMechanismsPagerdutyArgs.builder()
///                     .id("f174e90afafe4643bbbc4a0ed4fc8415")
///                     .build())
///                 .webhooks(NotificationPolicyMechanismsWebhookArgs.builder()
///                     .id("f174e90afafe4643bbbc4a0ed4fc8415")
///                     .build())
///                 .build())
///             .name("SSL Notification Event Policy")
///             .alertInterval("30m")
///             .description("Something describing the policy.")
///             .filters(NotificationPolicyFiltersArgs.builder()
///                 .actions("string")
///                 .affectedAsns("string")
///                 .affectedComponents("string")
///                 .affectedLocations("string")
///                 .airportCodes("string")
///                 .alertTriggerPreferences("string")
///                 .alertTriggerPreferencesValues("string")
///                 .enableds("string")
///                 .environments("string")
///                 .events("string")
///                 .eventSources("string")
///                 .eventTypes("string")
///                 .groupBies("string")
///                 .healthCheckIds("string")
///                 .incidentImpacts("INCIDENT_IMPACT_NONE")
///                 .inputIds("string")
///                 .insightClasses("string")
///                 .limits("string")
///                 .logoTags("string")
///                 .megabitsPerSeconds("string")
///                 .newHealths("string")
///                 .newStatuses("string")
///                 .packetsPerSeconds("string")
///                 .poolIds("string")
///                 .popNames("string")
///                 .products("string")
///                 .projectIds("string")
///                 .protocols("string")
///                 .queryTags("string")
///                 .requestsPerSeconds("string")
///                 .selectors("string")
///                 .services("string")
///                 .slos("99.9")
///                 .statuses("string")
///                 .targetHostnames("string")
///                 .targetIps("string")
///                 .targetZoneNames("string")
///                 .trafficExclusions("security_events")
///                 .tunnelIds("string")
///                 .tunnelNames("string")
///                 .types("string")
///                 .wheres("string")
///                 .zones("string")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNotificationPolicy:
///     type: cloudflare:NotificationPolicy
///     name: example_notification_policy
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       alertType: universal_ssl_event_type
///       enabled: true
///       mechanisms:
///         emails:
///           - id: id
///         pagerduties:
///           - id: f174e90afafe4643bbbc4a0ed4fc8415
///         webhooks:
///           - id: f174e90afafe4643bbbc4a0ed4fc8415
///       name: SSL Notification Event Policy
///       alertInterval: 30m
///       description: Something describing the policy.
///       filters:
///         actions:
///           - string
///         affectedAsns:
///           - string
///         affectedComponents:
///           - string
///         affectedLocations:
///           - string
///         airportCodes:
///           - string
///         alertTriggerPreferences:
///           - string
///         alertTriggerPreferencesValues:
///           - string
///         enableds:
///           - string
///         environments:
///           - string
///         events:
///           - string
///         eventSources:
///           - string
///         eventTypes:
///           - string
///         groupBies:
///           - string
///         healthCheckIds:
///           - string
///         incidentImpacts:
///           - INCIDENT_IMPACT_NONE
///         inputIds:
///           - string
///         insightClasses:
///           - string
///         limits:
///           - string
///         logoTags:
///           - string
///         megabitsPerSeconds:
///           - string
///         newHealths:
///           - string
///         newStatuses:
///           - string
///         packetsPerSeconds:
///           - string
///         poolIds:
///           - string
///         popNames:
///           - string
///         products:
///           - string
///         projectIds:
///           - string
///         protocols:
///           - string
///         queryTags:
///           - string
///         requestsPerSeconds:
///           - string
///         selectors:
///           - string
///         services:
///           - string
///         slos:
///           - '99.9'
///         statuses:
///           - string
///         targetHostnames:
///           - string
///         targetIps:
///           - string
///         targetZoneNames:
///           - string
///         trafficExclusions:
///           - security_events
///         tunnelIds:
///           - string
///         tunnelNames:
///           - string
///         types:
///           - string
///         wheres:
///           - string
///         zones:
///           - string
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/notificationPolicy:NotificationPolicy example '<account_id>/<policy_id>'
/// ```
class NotificationPolicy extends pulumi.CustomResource {
  /// The account id
  late final pulumi.Output<String> accountId;
  /// Optional specification of how often to re-alert from the same incident, not support on all alert types.
  late final pulumi.Output<String?> alertInterval;
  /// Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
  /// Available values: "abuse*report*alert", "access*custom*certificate*expiration*type", "advanced*ddos*attack*l4*alert", "advanced*ddos*attack*l7*alert", "advanced*http*alert*error", "bgp*hijack*notification", "billing*usage*alert", "block*notification*block*removed", "block*notification*new*block", "block*notification*review*rejected", "bot*traffic*basic*alert", "brand*protection*alert", "brand*protection*digest", "clickhouse*alert*fw*anomaly", "clickhouse*alert*fw*ent*anomaly", "cloudforce*one*request*notification", "cni*maintenance*notification", "custom*analytics", "custom*bot*detection*alert", "custom*ssl*certificate*event*type", "dedicated*ssl*certificate*event*type", "device*connectivity*anomaly*alert", "dos*attack*l4", "dos*attack*l7", "expiring*service*token*alert", "failing*logpush*job*disabled*alert", "fbm*auto*advertisement", "fbm*dosd*attack", "fbm*volumetric*attack", "health*check*status*notification", "hostname*aop*custom*certificate*expiration*type", "http*alert*edge*error", "http*alert*origin*error", "image*notification", "image*resizing*notification", "incident*alert", "load*balancing*health*alert", "load*balancing*pool*enablement*alert", "logo*match*alert", "magic*tunnel*health*check*event", "magic*wan*tunnel*health", "maintenance*event*notification", "mtls*certificate*store*certificate*expiration*type", "pages*event*alert", "radar*notification", "real*origin*monitoring", "scriptmonitor*alert*new*code*change*detections", "scriptmonitor*alert*new*hosts", "scriptmonitor*alert*new*malicious*hosts", "scriptmonitor*alert*new*malicious*scripts", "scriptmonitor*alert*new*malicious*url", "scriptmonitor*alert*new*max*length*resource*url", "scriptmonitor*alert*new*resources", "secondary*dns*all*primaries*failing", "secondary*dns*primaries*failing", "secondary*dns*warning", "secondary*dns*zone*successfully*updated", "secondary*dns*zone*validation*warning", "security*insights*alert", "sentinel*alert", "stream*live*notifications", "synthetic*test*latency*alert", "synthetic*test*low*availability*alert", "traffic*anomalies*alert", "tunnel*health*event", "tunnel*update*event", "universal*ssl*event*type", "web*analytics*metrics*update", "zone*aop*custom*certificate*expiration*type".
  late final pulumi.Output<String> alertType;
  late final pulumi.Output<String> created;
  /// Optional description for the Notification policy.
  late final pulumi.Output<String?> description;
  /// Whether or not the Notification policy is enabled.
  late final pulumi.Output<bool> enabled;
  /// Optional filters that allow you to be alerted only on a subset of events for that alert type based on some criteria. This is only available for select alert types. See alert type documentation for more details.
  late final pulumi.Output<NotificationPolicyFilters?> filters;
  /// List of IDs that will be used when dispatching a notification. IDs for email type will be the email address.
  late final pulumi.Output<NotificationPolicyMechanisms> mechanisms;
  late final pulumi.Output<String> modified;
  /// Name of the policy.
  late final pulumi.Output<String> name;

  /// Creates a new [NotificationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationPolicy]. {@macro pulumi_index_notification_policy_notification_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationPolicy(
    String name, {
    NotificationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/notificationPolicy:NotificationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    alertInterval = registerOutput<String?>('alertInterval');
    alertType = registerOutput<String>('alertType');
    created = registerOutput<String>('created');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    filters = registerOutput<NotificationPolicyFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationPolicyFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mechanisms = registerOutput<NotificationPolicyMechanisms>('mechanisms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationPolicyMechanisms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [NotificationPolicy] resource's state with the given [name] and [id].
  static NotificationPolicy get(
    String name,
    pulumi.Input<String> id, {
    NotificationPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NotificationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NotificationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/notificationPolicy:NotificationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    alertInterval = registerOutput<String?>('alertInterval');
    alertType = registerOutput<String>('alertType');
    created = registerOutput<String>('created');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    filters = registerOutput<NotificationPolicyFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationPolicyFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mechanisms = registerOutput<NotificationPolicyMechanisms>('mechanisms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationPolicyMechanisms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [NotificationPolicy] resource.
  NotificationPolicy.reference(String urn)
    : super(
        'cloudflare:index/notificationPolicy:NotificationPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    alertInterval = registerOutput<String?>('alertInterval');
    alertType = registerOutput<String>('alertType');
    created = registerOutput<String>('created');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    filters = registerOutput<NotificationPolicyFilters?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationPolicyFilters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    mechanisms = registerOutput<NotificationPolicyMechanisms>('mechanisms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationPolicyMechanisms.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
  }
}
