import 'package:pulumi/pulumi.dart' as pulumi;
import 'teams_rule_args.dart';
import 'teams_rule_expiration.dart';
import 'teams_rule_rule_settings.dart';
import 'teams_rule_schedule.dart';
import 'teams_rule_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustGatewayPolicy = new cloudflare.ZeroTrustGatewayPolicy("example_zero_trust_gateway_policy", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     action: "allow",
///     name: "block bad websites",
///     description: "Block bad websites based on their host name.",
///     devicePosture: "any(device_posture.checks.passed[*] in {\"1308749e-fcfb-4ebc-b051-fe022b632644\"})",
///     enabled: true,
///     expiration: {
///         expiresAt: "2014-01-01T05:20:20Z",
///         duration: 10,
///     },
///     filters: ["http"],
///     identity: "any(identity.groups.name[*] in {\"finance\"})",
///     precedence: 0,
///     ruleSettings: {
///         addHeaders: {
///             "My-Next-Header": [
///                 "foo",
///                 "bar",
///             ],
///             "X-Custom-Header-Name": ["somecustomvalue"],
///         },
///         allowChildBypass: false,
///         auditSsh: {
///             commandLogging: false,
///         },
///         bisoAdminControls: {
///             copy: "remote_only",
///             dcp: true,
///             dd: true,
///             dk: true,
///             download: "enabled",
///             dp: false,
///             du: true,
///             keyboard: "enabled",
///             paste: "enabled",
///             printing: "enabled",
///             upload: "enabled",
///             version: "v1",
///             wmId: "475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a",
///         },
///         blockPage: {
///             targetUri: "https://example.com",
///             includeContext: true,
///         },
///         blockPageEnabled: true,
///         blockReason: "This website is a security risk",
///         bypassParentRule: false,
///         checkSession: {
///             duration: "300s",
///             enforce: true,
///         },
///         deleteHeaders: [
///             "X-Old-Header",
///             "X-Remove-Me",
///         ],
///         dnsResolvers: {
///             ipv4s: [{
///                 ip: "2.2.2.2",
///                 port: 5053,
///                 routeThroughPrivateNetwork: true,
///                 vnetId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///             }],
///             ipv6s: [{
///                 ip: "2001:DB8::",
///                 port: 5053,
///                 routeThroughPrivateNetwork: true,
///                 vnetId: "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///             }],
///         },
///         egress: {
///             ipv4: "192.0.2.2",
///             ipv4Fallback: "192.0.2.3",
///             ipv6: "2001:DB8::/64",
///         },
///         forensicCopy: {
///             enabled: true,
///         },
///         ignoreCnameCategoryMatches: true,
///         insecureDisableDnssecValidation: false,
///         ipCategories: true,
///         ipIndicatorFeeds: true,
///         l4override: {
///             ip: "1.1.1.1",
///             port: 0,
///         },
///         notificationSettings: {
///             enabled: true,
///             includeContext: true,
///             msg: "msg",
///             supportUrl: "support_url",
///         },
///         overrideHost: "example.com",
///         overrideIps: [
///             "1.1.1.1",
///             "2.2.2.2",
///         ],
///         payloadLog: {
///             enabled: true,
///         },
///         quarantine: {
///             fileTypes: ["exe"],
///         },
///         redirect: {
///             targetUri: "https://example.com",
///             includeContext: true,
///             preservePathAndQuery: true,
///         },
///         resolveDnsInternally: {
///             fallback: "none",
///             viewId: "view_id",
///         },
///         resolveDnsThroughCloudflare: true,
///         setHeaders: {
///             "X-User-Identity": ["user=@{identity.name}"],
///         },
///         untrustedCert: {
///             action: "error",
///         },
///     },
///     schedule: {
///         fri: "08:00-12:30,13:30-17:00",
///         mon: "08:00-12:30,13:30-17:00",
///         sat: "08:00-12:30,13:30-17:00",
///         sun: "08:00-12:30,13:30-17:00",
///         thu: "08:00-12:30,13:30-17:00",
///         timeZone: "America/New York",
///         tue: "08:00-12:30,13:30-17:00",
///         wed: "08:00-12:30,13:30-17:00",
///     },
///     traffic: "http.request.uri matches \".*a/partial/uri.*\" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_gateway_policy = cloudflare.ZeroTrustGatewayPolicy("example_zero_trust_gateway_policy",
///     account_id="699d98642c564d2e855e9661899b7252",
///     action="allow",
///     name="block bad websites",
///     description="Block bad websites based on their host name.",
///     device_posture="any(device_posture.checks.passed[*] in {\"1308749e-fcfb-4ebc-b051-fe022b632644\"})",
///     enabled=True,
///     expiration={
///         "expires_at": "2014-01-01T05:20:20Z",
///         "duration": 10,
///     },
///     filters=["http"],
///     identity="any(identity.groups.name[*] in {\"finance\"})",
///     precedence=0,
///     rule_settings={
///         "add_headers": {
///             "My-Next-Header": [
///                 "foo",
///                 "bar",
///             ],
///             "X-Custom-Header-Name": ["somecustomvalue"],
///         },
///         "allow_child_bypass": False,
///         "audit_ssh": {
///             "command_logging": False,
///         },
///         "biso_admin_controls": {
///             "copy": "remote_only",
///             "dcp": True,
///             "dd": True,
///             "dk": True,
///             "download": "enabled",
///             "dp": False,
///             "du": True,
///             "keyboard": "enabled",
///             "paste": "enabled",
///             "printing": "enabled",
///             "upload": "enabled",
///             "version": "v1",
///             "wm_id": "475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a",
///         },
///         "block_page": {
///             "target_uri": "https://example.com",
///             "include_context": True,
///         },
///         "block_page_enabled": True,
///         "block_reason": "This website is a security risk",
///         "bypass_parent_rule": False,
///         "check_session": {
///             "duration": "300s",
///             "enforce": True,
///         },
///         "delete_headers": [
///             "X-Old-Header",
///             "X-Remove-Me",
///         ],
///         "dns_resolvers": {
///             "ipv4s": [{
///                 "ip": "2.2.2.2",
///                 "port": 5053,
///                 "route_through_private_network": True,
///                 "vnet_id": "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///             }],
///             "ipv6s": [{
///                 "ip": "2001:DB8::",
///                 "port": 5053,
///                 "route_through_private_network": True,
///                 "vnet_id": "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///             }],
///         },
///         "egress": {
///             "ipv4": "192.0.2.2",
///             "ipv4_fallback": "192.0.2.3",
///             "ipv6": "2001:DB8::/64",
///         },
///         "forensic_copy": {
///             "enabled": True,
///         },
///         "ignore_cname_category_matches": True,
///         "insecure_disable_dnssec_validation": False,
///         "ip_categories": True,
///         "ip_indicator_feeds": True,
///         "l4override": {
///             "ip": "1.1.1.1",
///             "port": 0,
///         },
///         "notification_settings": {
///             "enabled": True,
///             "include_context": True,
///             "msg": "msg",
///             "support_url": "support_url",
///         },
///         "override_host": "example.com",
///         "override_ips": [
///             "1.1.1.1",
///             "2.2.2.2",
///         ],
///         "payload_log": {
///             "enabled": True,
///         },
///         "quarantine": {
///             "file_types": ["exe"],
///         },
///         "redirect": {
///             "target_uri": "https://example.com",
///             "include_context": True,
///             "preserve_path_and_query": True,
///         },
///         "resolve_dns_internally": {
///             "fallback": "none",
///             "view_id": "view_id",
///         },
///         "resolve_dns_through_cloudflare": True,
///         "set_headers": {
///             "X-User-Identity": ["user=@{identity.name}"],
///         },
///         "untrusted_cert": {
///             "action": "error",
///         },
///     },
///     schedule={
///         "fri": "08:00-12:30,13:30-17:00",
///         "mon": "08:00-12:30,13:30-17:00",
///         "sat": "08:00-12:30,13:30-17:00",
///         "sun": "08:00-12:30,13:30-17:00",
///         "thu": "08:00-12:30,13:30-17:00",
///         "time_zone": "America/New York",
///         "tue": "08:00-12:30,13:30-17:00",
///         "wed": "08:00-12:30,13:30-17:00",
///     },
///     traffic="http.request.uri matches \".*a/partial/uri.*\" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustGatewayPolicy = new Cloudflare.ZeroTrustGatewayPolicy("example_zero_trust_gateway_policy", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Action = "allow",
///         Name = "block bad websites",
///         Description = "Block bad websites based on their host name.",
///         DevicePosture = "any(device_posture.checks.passed[*] in {\"1308749e-fcfb-4ebc-b051-fe022b632644\"})",
///         Enabled = true,
///         Expiration = new Cloudflare.Inputs.ZeroTrustGatewayPolicyExpirationArgs
///         {
///             ExpiresAt = "2014-01-01T05:20:20Z",
///             Duration = 10,
///         },
///         Filters = new[]
///         {
///             "http",
///         },
///         Identity = "any(identity.groups.name[*] in {\"finance\"})",
///         Precedence = 0,
///         RuleSettings = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsArgs
///         {
///             AddHeaders =
///             {
///                 { "My-Next-Header", new[]
///                 {
///                     "foo",
///                     "bar",
///                 } },
///                 { "X-Custom-Header-Name", new[]
///                 {
///                     "somecustomvalue",
///                 } },
///             },
///             AllowChildBypass = false,
///             AuditSsh = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsAuditSshArgs
///             {
///                 CommandLogging = false,
///             },
///             BisoAdminControls = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsBisoAdminControlsArgs
///             {
///                 Copy = "remote_only",
///                 Dcp = true,
///                 Dd = true,
///                 Dk = true,
///                 Download = "enabled",
///                 Dp = false,
///                 Du = true,
///                 Keyboard = "enabled",
///                 Paste = "enabled",
///                 Printing = "enabled",
///                 Upload = "enabled",
///                 Version = "v1",
///                 WmId = "475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a",
///             },
///             BlockPage = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsBlockPageArgs
///             {
///                 TargetUri = "https://example.com",
///                 IncludeContext = true,
///             },
///             BlockPageEnabled = true,
///             BlockReason = "This website is a security risk",
///             BypassParentRule = false,
///             CheckSession = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsCheckSessionArgs
///             {
///                 Duration = "300s",
///                 Enforce = true,
///             },
///             DeleteHeaders = new[]
///             {
///                 "X-Old-Header",
///                 "X-Remove-Me",
///             },
///             DnsResolvers = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsDnsResolversArgs
///             {
///                 Ipv4s = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4Args
///                     {
///                         Ip = "2.2.2.2",
///                         Port = 5053,
///                         RouteThroughPrivateNetwork = true,
///                         VnetId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///                     },
///                 },
///                 Ipv6s = new[]
///                 {
///                     new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6Args
///                     {
///                         Ip = "2001:DB8::",
///                         Port = 5053,
///                         RouteThroughPrivateNetwork = true,
///                         VnetId = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415",
///                     },
///                 },
///             },
///             Egress = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsEgressArgs
///             {
///                 Ipv4 = "192.0.2.2",
///                 Ipv4Fallback = "192.0.2.3",
///                 Ipv6 = "2001:DB8::/64",
///             },
///             ForensicCopy = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsForensicCopyArgs
///             {
///                 Enabled = true,
///             },
///             IgnoreCnameCategoryMatches = true,
///             InsecureDisableDnssecValidation = false,
///             IpCategories = true,
///             IpIndicatorFeeds = true,
///             L4override = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsL4overrideArgs
///             {
///                 Ip = "1.1.1.1",
///                 Port = 0,
///             },
///             NotificationSettings = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsNotificationSettingsArgs
///             {
///                 Enabled = true,
///                 IncludeContext = true,
///                 Msg = "msg",
///                 SupportUrl = "support_url",
///             },
///             OverrideHost = "example.com",
///             OverrideIps = new[]
///             {
///                 "1.1.1.1",
///                 "2.2.2.2",
///             },
///             PayloadLog = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsPayloadLogArgs
///             {
///                 Enabled = true,
///             },
///             Quarantine = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsQuarantineArgs
///             {
///                 FileTypes = new[]
///                 {
///                     "exe",
///                 },
///             },
///             Redirect = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsRedirectArgs
///             {
///                 TargetUri = "https://example.com",
///                 IncludeContext = true,
///                 PreservePathAndQuery = true,
///             },
///             ResolveDnsInternally = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternallyArgs
///             {
///                 Fallback = "none",
///                 ViewId = "view_id",
///             },
///             ResolveDnsThroughCloudflare = true,
///             SetHeaders =
///             {
///                 { "X-User-Identity", new[]
///                 {
///                     "user=@{identity.name}",
///                 } },
///             },
///             UntrustedCert = new Cloudflare.Inputs.ZeroTrustGatewayPolicyRuleSettingsUntrustedCertArgs
///             {
///                 Action = "error",
///             },
///         },
///         Schedule = new Cloudflare.Inputs.ZeroTrustGatewayPolicyScheduleArgs
///         {
///             Fri = "08:00-12:30,13:30-17:00",
///             Mon = "08:00-12:30,13:30-17:00",
///             Sat = "08:00-12:30,13:30-17:00",
///             Sun = "08:00-12:30,13:30-17:00",
///             Thu = "08:00-12:30,13:30-17:00",
///             TimeZone = "America/New York",
///             Tue = "08:00-12:30,13:30-17:00",
///             Wed = "08:00-12:30,13:30-17:00",
///         },
///         Traffic = "http.request.uri matches \".*a/partial/uri.*\" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10",
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
/// 		_, err := cloudflare.NewZeroTrustGatewayPolicy(ctx, "example_zero_trust_gateway_policy", &cloudflare.ZeroTrustGatewayPolicyArgs{
/// 			AccountId:     pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Action:        pulumi.String("allow"),
/// 			Name:          pulumi.String("block bad websites"),
/// 			Description:   pulumi.String("Block bad websites based on their host name."),
/// 			DevicePosture: pulumi.String("any(device_posture.checks.passed[*] in {\"1308749e-fcfb-4ebc-b051-fe022b632644\"})"),
/// 			Enabled:       pulumi.Bool(true),
/// 			Expiration: &cloudflare.ZeroTrustGatewayPolicyExpirationArgs{
/// 				ExpiresAt: pulumi.String("2014-01-01T05:20:20Z"),
/// 				Duration:  pulumi.Int(10),
/// 			},
/// 			Filters: pulumi.StringArray{
/// 				pulumi.String("http"),
/// 			},
/// 			Identity:   pulumi.String("any(identity.groups.name[*] in {\"finance\"})"),
/// 			Precedence: pulumi.Int(0),
/// 			RuleSettings: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsArgs{
/// 				AddHeaders: pulumi.StringArrayMap{
/// 					"My-Next-Header": pulumi.StringArray{
/// 						pulumi.String("foo"),
/// 						pulumi.String("bar"),
/// 					},
/// 					"X-Custom-Header-Name": pulumi.StringArray{
/// 						pulumi.String("somecustomvalue"),
/// 					},
/// 				},
/// 				AllowChildBypass: pulumi.Bool(false),
/// 				AuditSsh: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsAuditSshArgs{
/// 					CommandLogging: pulumi.Bool(false),
/// 				},
/// 				BisoAdminControls: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsBisoAdminControlsArgs{
/// 					Copy:     pulumi.String("remote_only"),
/// 					Dcp:      pulumi.Bool(true),
/// 					Dd:       pulumi.Bool(true),
/// 					Dk:       pulumi.Bool(true),
/// 					Download: pulumi.String("enabled"),
/// 					Dp:       pulumi.Bool(false),
/// 					Du:       pulumi.Bool(true),
/// 					Keyboard: pulumi.String("enabled"),
/// 					Paste:    pulumi.String("enabled"),
/// 					Printing: pulumi.String("enabled"),
/// 					Upload:   pulumi.String("enabled"),
/// 					Version:  pulumi.String("v1"),
/// 					WmId:     pulumi.String("475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a"),
/// 				},
/// 				BlockPage: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsBlockPageArgs{
/// 					TargetUri:      pulumi.String("https://example.com"),
/// 					IncludeContext: pulumi.Bool(true),
/// 				},
/// 				BlockPageEnabled: pulumi.Bool(true),
/// 				BlockReason:      pulumi.String("This website is a security risk"),
/// 				BypassParentRule: pulumi.Bool(false),
/// 				CheckSession: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsCheckSessionArgs{
/// 					Duration: pulumi.String("300s"),
/// 					Enforce:  pulumi.Bool(true),
/// 				},
/// 				DeleteHeaders: pulumi.StringArray{
/// 					pulumi.String("X-Old-Header"),
/// 					pulumi.String("X-Remove-Me"),
/// 				},
/// 				DnsResolvers: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsDnsResolversArgs{
/// 					Ipv4s: cloudflare.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4Array{
/// 						&cloudflare.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4Args{
/// 							Ip:                         pulumi.String("2.2.2.2"),
/// 							Port:                       pulumi.Int(5053),
/// 							RouteThroughPrivateNetwork: pulumi.Bool(true),
/// 							VnetId:                     pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 						},
/// 					},
/// 					Ipv6s: cloudflare.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6Array{
/// 						&cloudflare.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6Args{
/// 							Ip:                         pulumi.String("2001:DB8::"),
/// 							Port:                       pulumi.Int(5053),
/// 							RouteThroughPrivateNetwork: pulumi.Bool(true),
/// 							VnetId:                     pulumi.String("f174e90a-fafe-4643-bbbc-4a0ed4fc8415"),
/// 						},
/// 					},
/// 				},
/// 				Egress: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsEgressArgs{
/// 					Ipv4:         pulumi.String("192.0.2.2"),
/// 					Ipv4Fallback: pulumi.String("192.0.2.3"),
/// 					Ipv6:         pulumi.String("2001:DB8::/64"),
/// 				},
/// 				ForensicCopy: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsForensicCopyArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				IgnoreCnameCategoryMatches:      pulumi.Bool(true),
/// 				InsecureDisableDnssecValidation: pulumi.Bool(false),
/// 				IpCategories:                    pulumi.Bool(true),
/// 				IpIndicatorFeeds:                pulumi.Bool(true),
/// 				L4override: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsL4overrideArgs{
/// 					Ip:   pulumi.String("1.1.1.1"),
/// 					Port: pulumi.Int(0),
/// 				},
/// 				NotificationSettings: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsNotificationSettingsArgs{
/// 					Enabled:        pulumi.Bool(true),
/// 					IncludeContext: pulumi.Bool(true),
/// 					Msg:            pulumi.String("msg"),
/// 					SupportUrl:     pulumi.String("support_url"),
/// 				},
/// 				OverrideHost: pulumi.String("example.com"),
/// 				OverrideIps: pulumi.StringArray{
/// 					pulumi.String("1.1.1.1"),
/// 					pulumi.String("2.2.2.2"),
/// 				},
/// 				PayloadLog: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsPayloadLogArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				Quarantine: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsQuarantineArgs{
/// 					FileTypes: pulumi.StringArray{
/// 						pulumi.String("exe"),
/// 					},
/// 				},
/// 				Redirect: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsRedirectArgs{
/// 					TargetUri:            pulumi.String("https://example.com"),
/// 					IncludeContext:       pulumi.Bool(true),
/// 					PreservePathAndQuery: pulumi.Bool(true),
/// 				},
/// 				ResolveDnsInternally: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternallyArgs{
/// 					Fallback: pulumi.String("none"),
/// 					ViewId:   pulumi.String("view_id"),
/// 				},
/// 				ResolveDnsThroughCloudflare: pulumi.Bool(true),
/// 				SetHeaders: pulumi.StringArrayMap{
/// 					"X-User-Identity": pulumi.StringArray{
/// 						pulumi.String("user=@{identity.name}"),
/// 					},
/// 				},
/// 				UntrustedCert: &cloudflare.ZeroTrustGatewayPolicyRuleSettingsUntrustedCertArgs{
/// 					Action: pulumi.String("error"),
/// 				},
/// 			},
/// 			Schedule: &cloudflare.ZeroTrustGatewayPolicyScheduleArgs{
/// 				Fri:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 				Mon:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 				Sat:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 				Sun:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 				Thu:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 				TimeZone: pulumi.String("America/New York"),
/// 				Tue:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 				Wed:      pulumi.String("08:00-12:30,13:30-17:00"),
/// 			},
/// 			Traffic: pulumi.String("http.request.uri matches \".*a/partial/uri.*\" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10"),
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
/// resource "cloudflare_zerotrustgatewaypolicy" "example_zero_trust_gateway_policy" {
///   account_id     = "699d98642c564d2e855e9661899b7252"
///   action         = "allow"
///   name           = "block bad websites"
///   description    = "Block bad websites based on their host name."
///   device_posture = "any(device_posture.checks.passed[*] in {\"1308749e-fcfb-4ebc-b051-fe022b632644\"})"
///   enabled        = true
///   expiration = {
///     expires_at = "2014-01-01T05:20:20Z"
///     duration   = 10
///   }
///   filters    = ["http"]
///   identity   = "any(identity.groups.name[*] in {\"finance\"})"
///   precedence = 0
///   rule_settings = {
///     add_headers = {
///       "My-Next-Header"       = ["foo", "bar"]
///       "X-Custom-Header-Name" = ["somecustomvalue"]
///     }
///     allow_child_bypass = false
///     audit_ssh = {
///       command_logging = false
///     }
///     biso_admin_controls = {
///       copy     = "remote_only"
///       dcp      = true
///       dd       = true
///       dk       = true
///       download = "enabled"
///       dp       = false
///       du       = true
///       keyboard = "enabled"
///       paste    = "enabled"
///       printing = "enabled"
///       upload   = "enabled"
///       version  = "v1"
///       wm_id    = "475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a"
///     }
///     block_page = {
///       target_uri      = "https://example.com"
///       include_context = true
///     }
///     block_page_enabled = true
///     block_reason       = "This website is a security risk"
///     bypass_parent_rule = false
///     check_session = {
///       duration = "300s"
///       enforce  = true
///     }
///     delete_headers = ["X-Old-Header", "X-Remove-Me"]
///     dns_resolvers = {
///       ipv4s = [{
///         "ip"                         = "2.2.2.2"
///         "port"                       = 5053
///         "routeThroughPrivateNetwork" = true
///         "vnetId"                     = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///       }]
///       ipv6s = [{
///         "ip"                         = "2001:DB8::"
///         "port"                       = 5053
///         "routeThroughPrivateNetwork" = true
///         "vnetId"                     = "f174e90a-fafe-4643-bbbc-4a0ed4fc8415"
///       }]
///     }
///     egress = {
///       ipv4          = "192.0.2.2"
///       ipv4_fallback = "192.0.2.3"
///       ipv6          = "2001:DB8::/64"
///     }
///     forensic_copy = {
///       enabled = true
///     }
///     ignore_cname_category_matches      = true
///     insecure_disable_dnssec_validation = false
///     ip_categories                      = true
///     ip_indicator_feeds                 = true
///     l4override = {
///       ip   = "1.1.1.1"
///       port = 0
///     }
///     notification_settings = {
///       enabled         = true
///       include_context = true
///       msg             = "msg"
///       support_url     = "support_url"
///     }
///     override_host = "example.com"
///     override_ips  = ["1.1.1.1", "2.2.2.2"]
///     payload_log = {
///       enabled = true
///     }
///     quarantine = {
///       file_types = ["exe"]
///     }
///     redirect = {
///       target_uri              = "https://example.com"
///       include_context         = true
///       preserve_path_and_query = true
///     }
///     resolve_dns_internally = {
///       fallback = "none"
///       view_id  = "view_id"
///     }
///     resolve_dns_through_cloudflare = true
///     set_headers = {
///       "X-User-Identity" = ["user=@{identity.name}"]
///     }
///     untrusted_cert = {
///       action = "error"
///     }
///   }
///   schedule = {
///     fri       = "08:00-12:30,13:30-17:00"
///     mon       = "08:00-12:30,13:30-17:00"
///     sat       = "08:00-12:30,13:30-17:00"
///     sun       = "08:00-12:30,13:30-17:00"
///     thu       = "08:00-12:30,13:30-17:00"
///     time_zone = "America/New York"
///     tue       = "08:00-12:30,13:30-17:00"
///     wed       = "08:00-12:30,13:30-17:00"
///   }
///   traffic = "http.request.uri matches \".*a/partial/uri.*\" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustGatewayPolicy;
/// import com.pulumi.cloudflare.ZeroTrustGatewayPolicyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyExpirationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsAuditSshArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsBisoAdminControlsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsBlockPageArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsCheckSessionArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsDnsResolversArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4Args;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6Args;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsEgressArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsForensicCopyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsL4overrideArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsNotificationSettingsArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsPayloadLogArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsQuarantineArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsRedirectArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternallyArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyRuleSettingsUntrustedCertArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustGatewayPolicyScheduleArgs;
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
///         var exampleZeroTrustGatewayPolicy = new ZeroTrustGatewayPolicy("exampleZeroTrustGatewayPolicy", ZeroTrustGatewayPolicyArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .action("allow")
///             .name("block bad websites")
///             .description("Block bad websites based on their host name.")
///             .devicePosture("any(device_posture.checks.passed[*] in {\"1308749e-fcfb-4ebc-b051-fe022b632644\"})")
///             .enabled(true)
///             .expiration(ZeroTrustGatewayPolicyExpirationArgs.builder()
///                 .expiresAt("2014-01-01T05:20:20Z")
///                 .duration(10)
///                 .build())
///             .filters("http")
///             .identity("any(identity.groups.name[*] in {\"finance\"})")
///             .precedence(0)
///             .ruleSettings(ZeroTrustGatewayPolicyRuleSettingsArgs.builder()
///                 .addHeaders(Map.ofEntries(
///                     Map.entry("My-Next-Header", Arrays.asList(
///                         "foo",
///                         "bar")),
///                     Map.entry("X-Custom-Header-Name", Arrays.asList("somecustomvalue"))
///                 ))
///                 .allowChildBypass(false)
///                 .auditSsh(ZeroTrustGatewayPolicyRuleSettingsAuditSshArgs.builder()
///                     .commandLogging(false)
///                     .build())
///                 .bisoAdminControls(ZeroTrustGatewayPolicyRuleSettingsBisoAdminControlsArgs.builder()
///                     .copy("remote_only")
///                     .dcp(true)
///                     .dd(true)
///                     .dk(true)
///                     .download("enabled")
///                     .dp(false)
///                     .du(true)
///                     .keyboard("enabled")
///                     .paste("enabled")
///                     .printing("enabled")
///                     .upload("enabled")
///                     .version("v1")
///                     .wmId("475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a")
///                     .build())
///                 .blockPage(ZeroTrustGatewayPolicyRuleSettingsBlockPageArgs.builder()
///                     .targetUri("https://example.com")
///                     .includeContext(true)
///                     .build())
///                 .blockPageEnabled(true)
///                 .blockReason("This website is a security risk")
///                 .bypassParentRule(false)
///                 .checkSession(ZeroTrustGatewayPolicyRuleSettingsCheckSessionArgs.builder()
///                     .duration("300s")
///                     .enforce(true)
///                     .build())
///                 .deleteHeaders(
///                     "X-Old-Header",
///                     "X-Remove-Me")
///                 .dnsResolvers(ZeroTrustGatewayPolicyRuleSettingsDnsResolversArgs.builder()
///                     .ipv4s(ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv4Args.builder()
///                         .ip("2.2.2.2")
///                         .port(5053)
///                         .routeThroughPrivateNetwork(true)
///                         .vnetId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///                         .build())
///                     .ipv6s(ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6Args.builder()
///                         .ip("2001:DB8::")
///                         .port(5053)
///                         .routeThroughPrivateNetwork(true)
///                         .vnetId("f174e90a-fafe-4643-bbbc-4a0ed4fc8415")
///                         .build())
///                     .build())
///                 .egress(ZeroTrustGatewayPolicyRuleSettingsEgressArgs.builder()
///                     .ipv4("192.0.2.2")
///                     .ipv4Fallback("192.0.2.3")
///                     .ipv6("2001:DB8::/64")
///                     .build())
///                 .forensicCopy(ZeroTrustGatewayPolicyRuleSettingsForensicCopyArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .ignoreCnameCategoryMatches(true)
///                 .insecureDisableDnssecValidation(false)
///                 .ipCategories(true)
///                 .ipIndicatorFeeds(true)
///                 .l4override(ZeroTrustGatewayPolicyRuleSettingsL4overrideArgs.builder()
///                     .ip("1.1.1.1")
///                     .port(0)
///                     .build())
///                 .notificationSettings(ZeroTrustGatewayPolicyRuleSettingsNotificationSettingsArgs.builder()
///                     .enabled(true)
///                     .includeContext(true)
///                     .msg("msg")
///                     .supportUrl("support_url")
///                     .build())
///                 .overrideHost("example.com")
///                 .overrideIps(
///                     "1.1.1.1",
///                     "2.2.2.2")
///                 .payloadLog(ZeroTrustGatewayPolicyRuleSettingsPayloadLogArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .quarantine(ZeroTrustGatewayPolicyRuleSettingsQuarantineArgs.builder()
///                     .fileTypes("exe")
///                     .build())
///                 .redirect(ZeroTrustGatewayPolicyRuleSettingsRedirectArgs.builder()
///                     .targetUri("https://example.com")
///                     .includeContext(true)
///                     .preservePathAndQuery(true)
///                     .build())
///                 .resolveDnsInternally(ZeroTrustGatewayPolicyRuleSettingsResolveDnsInternallyArgs.builder()
///                     .fallback("none")
///                     .viewId("view_id")
///                     .build())
///                 .resolveDnsThroughCloudflare(true)
///                 .setHeaders(Map.of("X-User-Identity", Arrays.asList("user=@{identity.name}")))
///                 .untrustedCert(ZeroTrustGatewayPolicyRuleSettingsUntrustedCertArgs.builder()
///                     .action("error")
///                     .build())
///                 .build())
///             .schedule(ZeroTrustGatewayPolicyScheduleArgs.builder()
///                 .fri("08:00-12:30,13:30-17:00")
///                 .mon("08:00-12:30,13:30-17:00")
///                 .sat("08:00-12:30,13:30-17:00")
///                 .sun("08:00-12:30,13:30-17:00")
///                 .thu("08:00-12:30,13:30-17:00")
///                 .timeZone("America/New York")
///                 .tue("08:00-12:30,13:30-17:00")
///                 .wed("08:00-12:30,13:30-17:00")
///                 .build())
///             .traffic("http.request.uri matches \".*a/partial/uri.*\" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustGatewayPolicy:
///     type: cloudflare:ZeroTrustGatewayPolicy
///     name: example_zero_trust_gateway_policy
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       action: allow
///       name: block bad websites
///       description: Block bad websites based on their host name.
///       devicePosture: any(device_posture.checks.passed[*] in {"1308749e-fcfb-4ebc-b051-fe022b632644"})
///       enabled: true
///       expiration:
///         expiresAt: 2014-01-01T05:20:20Z
///         duration: 10
///       filters:
///         - http
///       identity: any(identity.groups.name[*] in {"finance"})
///       precedence: 0
///       ruleSettings:
///         addHeaders:
///           My-Next-Header:
///             - foo
///             - bar
///           X-Custom-Header-Name:
///             - somecustomvalue
///         allowChildBypass: false
///         auditSsh:
///           commandLogging: false
///         bisoAdminControls:
///           copy: remote_only
///           dcp: true
///           dd: true
///           dk: true
///           download: enabled
///           dp: false
///           du: true
///           keyboard: enabled
///           paste: enabled
///           printing: enabled
///           upload: enabled
///           version: v1
///           wmId: 475345dc-5299-4b6e-8f6a-3d3e4c8e9f1a
///         blockPage:
///           targetUri: https://example.com
///           includeContext: true
///         blockPageEnabled: true
///         blockReason: This website is a security risk
///         bypassParentRule: false
///         checkSession:
///           duration: 300s
///           enforce: true
///         deleteHeaders:
///           - X-Old-Header
///           - X-Remove-Me
///         dnsResolvers:
///           ipv4s:
///             - ip: 2.2.2.2
///               port: 5053
///               routeThroughPrivateNetwork: true
///               vnetId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///           ipv6s:
///             - ip: '2001:DB8::'
///               port: 5053
///               routeThroughPrivateNetwork: true
///               vnetId: f174e90a-fafe-4643-bbbc-4a0ed4fc8415
///         egress:
///           ipv4: 192.0.2.2
///           ipv4Fallback: 192.0.2.3
///           ipv6: 2001:DB8::/64
///         forensicCopy:
///           enabled: true
///         ignoreCnameCategoryMatches: true
///         insecureDisableDnssecValidation: false
///         ipCategories: true
///         ipIndicatorFeeds: true
///         l4override:
///           ip: 1.1.1.1
///           port: 0
///         notificationSettings:
///           enabled: true
///           includeContext: true
///           msg: msg
///           supportUrl: support_url
///         overrideHost: example.com
///         overrideIps:
///           - 1.1.1.1
///           - 2.2.2.2
///         payloadLog:
///           enabled: true
///         quarantine:
///           fileTypes:
///             - exe
///         redirect:
///           targetUri: https://example.com
///           includeContext: true
///           preservePathAndQuery: true
///         resolveDnsInternally:
///           fallback: none
///           viewId: view_id
///         resolveDnsThroughCloudflare: true
///         setHeaders:
///           X-User-Identity:
///             - user=@{identity.name}
///         untrustedCert:
///           action: error
///       schedule:
///         fri: 08:00-12:30,13:30-17:00
///         mon: 08:00-12:30,13:30-17:00
///         sat: 08:00-12:30,13:30-17:00
///         sun: 08:00-12:30,13:30-17:00
///         thu: 08:00-12:30,13:30-17:00
///         timeZone: America/New York
///         tue: 08:00-12:30,13:30-17:00
///         wed: 08:00-12:30,13:30-17:00
///       traffic: http.request.uri matches ".*a/partial/uri.*" and http.request.host in $01302951-49f9-47c9-a400-0297e60b6a10
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/teamsRule:TeamsRule example '<account_id>/<rule_id>'
/// ```
class TeamsRule extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// Available values: "on", "off", "allow", "block", "scan", "noscan", "safesearch", "ytrestricted", "isolate", "noisolate", "override", "l4Override", "egress", "resolve", "quarantine", "redirect".
  late final pulumi.Output<String> action;
  late final pulumi.Output<String> createdAt;
  /// Indicate the date of deletion, if any.
  late final pulumi.Output<String> deletedAt;
  /// Specify the rule description.
  late final pulumi.Output<String?> description;
  /// Specify the wirefilter expression used for device posture check. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  late final pulumi.Output<String> devicePosture;
  /// Specify whether the rule is enabled.
  late final pulumi.Output<bool> enabled;
  /// Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
  late final pulumi.Output<TeamsRuleExpiration> expiration;
  /// Specify the protocol or layer to evaluate the traffic, identity, and device posture expressions. Can only contain a single value.
  late final pulumi.Output<List<String>> filters;
  /// Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  late final pulumi.Output<String> identity;
  /// Specify the rule name.
  late final pulumi.Output<String> name;
  /// Set the order of your rules. Lower values indicate higher precedence. At each processing phase, evaluate applicable rules in ascending order of this value. Refer to Order of enforcement to manage precedence via Terraform.
  late final pulumi.Output<int> precedence;
  /// Indicate that this rule is shared via the Orgs API and read only.
  late final pulumi.Output<bool> readOnly;
  /// Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  late final pulumi.Output<TeamsRuleRuleSettings> ruleSettings;
  /// Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  late final pulumi.Output<TeamsRuleSchedule> schedule;
  /// Indicate that this rule is sharable via the Orgs API.
  late final pulumi.Output<bool> sharable;
  /// Provide the account tag of the account that created the rule.
  late final pulumi.Output<String> sourceAccount;
  /// Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  late final pulumi.Output<String> traffic;
  late final pulumi.Output<String> updatedAt;
  /// Indicate the version number of the rule(read-only).
  late final pulumi.Output<int> version;
  /// Indicate a warning for a misconfigured rule, if any.
  late final pulumi.Output<String> warningStatus;

  /// Creates a new [TeamsRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamsRule]. {@macro pulumi_index_teams_rule_teams_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamsRule(
    String name, {
    TeamsRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/teamsRule:TeamsRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    action = registerOutput<String>('action');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    description = registerOutput<String?>('description');
    devicePosture = registerOutput<String>('devicePosture');
    enabled = registerOutput<bool>('enabled');
    expiration = registerOutput<TeamsRuleExpiration>('expiration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filters = registerOutput<List<String>>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    identity = registerOutput<String>('identity');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int>('precedence');
    readOnly = registerOutput<bool>('readOnly');
    ruleSettings = registerOutput<TeamsRuleRuleSettings>('ruleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleRuleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedule = registerOutput<TeamsRuleSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sharable = registerOutput<bool>('sharable');
    sourceAccount = registerOutput<String>('sourceAccount');
    traffic = registerOutput<String>('traffic');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
    warningStatus = registerOutput<String>('warningStatus');
  }

  /// Gets an existing [TeamsRule] resource's state with the given [name] and [id].
  static TeamsRule get(
    String name,
    pulumi.Input<String> id, {
    TeamsRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TeamsRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TeamsRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/teamsRule:TeamsRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    action = registerOutput<String>('action');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    description = registerOutput<String?>('description');
    devicePosture = registerOutput<String>('devicePosture');
    enabled = registerOutput<bool>('enabled');
    expiration = registerOutput<TeamsRuleExpiration>('expiration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filters = registerOutput<List<String>>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    identity = registerOutput<String>('identity');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int>('precedence');
    readOnly = registerOutput<bool>('readOnly');
    ruleSettings = registerOutput<TeamsRuleRuleSettings>('ruleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleRuleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedule = registerOutput<TeamsRuleSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sharable = registerOutput<bool>('sharable');
    sourceAccount = registerOutput<String>('sourceAccount');
    traffic = registerOutput<String>('traffic');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
    warningStatus = registerOutput<String>('warningStatus');
  }

  /// Creates a typed reference to an existing [TeamsRule] resource.
  TeamsRule.reference(String urn)
    : super(
        'cloudflare:index/teamsRule:TeamsRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    action = registerOutput<String>('action');
    createdAt = registerOutput<String>('createdAt');
    deletedAt = registerOutput<String>('deletedAt');
    description = registerOutput<String?>('description');
    devicePosture = registerOutput<String>('devicePosture');
    enabled = registerOutput<bool>('enabled');
    expiration = registerOutput<TeamsRuleExpiration>('expiration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filters = registerOutput<List<String>>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    identity = registerOutput<String>('identity');
    this.name = registerOutput<String>('name');
    precedence = registerOutput<int>('precedence');
    readOnly = registerOutput<bool>('readOnly');
    ruleSettings = registerOutput<TeamsRuleRuleSettings>('ruleSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleRuleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedule = registerOutput<TeamsRuleSchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TeamsRuleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sharable = registerOutput<bool>('sharable');
    sourceAccount = registerOutput<String>('sourceAccount');
    traffic = registerOutput<String>('traffic');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<int>('version');
    warningStatus = registerOutput<String>('warningStatus');
  }
}
