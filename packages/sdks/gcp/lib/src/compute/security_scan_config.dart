import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_scan_config_args.dart';
import 'security_scan_config_authentication.dart';
import 'security_scan_config_schedule.dart';
import 'security_scan_config_state.dart';

/// A ScanConfig resource contains the configurations to launch a scan.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about ScanConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-scanner/docs/reference/rest/v1beta/projects.scanConfigs)
/// * How-to Guides
/// * [Using Cloud Security Scanner](https://cloud.google.com/security-scanner/docs/scanning)
///
///
///
/// ## Example Usage
///
/// ### Scan Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scannerStaticIp = new gcp.compute.Address("scanner_static_ip", {name: "scan-basic-static-ip"});
/// const scan_config = new gcp.compute.SecurityScanConfig("scan-config", {
///     displayName: "scan-config",
///     startingUrls: [pulumi.interpolate`http://${scannerStaticIp.address}`],
///     targetPlatforms: ["COMPUTE"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scanner_static_ip = gcp.compute.Address("scanner_static_ip", name="scan-basic-static-ip")
/// scan_config = gcp.compute.SecurityScanConfig("scan-config",
///     display_name="scan-config",
///     starting_urls=[scanner_static_ip.address.apply(lambda address: f"http://{address}")],
///     target_platforms=["COMPUTE"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scannerStaticIp = new Gcp.Compute.Address("scanner_static_ip", new()
///     {
///         Name = "scan-basic-static-ip",
///     });
///
///     var scan_config = new Gcp.Compute.SecurityScanConfig("scan-config", new()
///     {
///         DisplayName = "scan-config",
///         StartingUrls = new[]
///         {
///             scannerStaticIp.IPAddress.Apply(address => $"http://{address}"),
///         },
///         TargetPlatforms = new[]
///         {
///             "COMPUTE",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		scannerStaticIp, err := compute.NewAddress(ctx, "scanner_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("scan-basic-static-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityScanConfig(ctx, "scan-config", &compute.SecurityScanConfigArgs{
/// 			DisplayName: pulumi.String("scan-config"),
/// 			StartingUrls: pulumi.StringArray{
/// 				scannerStaticIp.Address.ApplyT(func(address string) (string, error) {
/// 					return fmt.Sprintf("http://%v", address), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			TargetPlatforms: pulumi.StringArray{
/// 				pulumi.String("COMPUTE"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_address" "scanner_static_ip" {
///   name = "scan-basic-static-ip"
/// }
/// resource "gcp_compute_securityscanconfig" "scan-config" {
///   display_name     = "scan-config"
///   starting_urls    = ["http://${gcp_compute_address.scanner_static_ip.address}"]
///   target_platforms = ["COMPUTE"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.SecurityScanConfig;
/// import com.pulumi.gcp.compute.SecurityScanConfigArgs;
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
///         var scannerStaticIp = new Address("scannerStaticIp", AddressArgs.builder()
///             .name("scan-basic-static-ip")
///             .build());
///
///         var scan_config = new SecurityScanConfig("scan-config", SecurityScanConfigArgs.builder()
///             .displayName("scan-config")
///             .startingUrls(scannerStaticIp.address().applyValue(_address -> String.format("http://%s", _address)))
///             .targetPlatforms("COMPUTE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   scannerStaticIp:
///     type: gcp:compute:Address
///     name: scanner_static_ip
///     properties:
///       name: scan-basic-static-ip
///   scan-config:
///     type: gcp:compute:SecurityScanConfig
///     properties:
///       displayName: scan-config
///       startingUrls:
///         - http://${scannerStaticIp.address}
///       targetPlatforms:
///         - COMPUTE
/// ```
///
/// ### Scan Config Ignore Http Status Errors
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const scannerStaticIp = new gcp.compute.Address("scanner_static_ip", {name: "scan-ignore-http-ip"});
/// const wait15Seconds = new time.Sleep("wait_15_seconds", {createDuration: "15s"}, {
///     dependsOn: [scannerStaticIp],
/// });
/// const scan_config = new gcp.compute.SecurityScanConfig("scan-config", {
///     displayName: "terraform-scan-config",
///     startingUrls: [pulumi.interpolate`http://${scannerStaticIp.address}`],
///     targetPlatforms: ["COMPUTE"],
///     ignoreHttpStatusErrors: true,
/// }, {
///     dependsOn: [wait15Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// scanner_static_ip = gcp.compute.Address("scanner_static_ip", name="scan-ignore-http-ip")
/// wait15_seconds = time.Sleep("wait_15_seconds", create_duration="15s",
/// opts = pulumi.ResourceOptions(depends_on=[scanner_static_ip]))
/// scan_config = gcp.compute.SecurityScanConfig("scan-config",
///     display_name="terraform-scan-config",
///     starting_urls=[scanner_static_ip.address.apply(lambda address: f"http://{address}")],
///     target_platforms=["COMPUTE"],
///     ignore_http_status_errors=True,
///     opts = pulumi.ResourceOptions(depends_on=[wait15_seconds]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scannerStaticIp = new Gcp.Compute.Address("scanner_static_ip", new()
///     {
///         Name = "scan-ignore-http-ip",
///     });
///
///     var wait15Seconds = new Time.Sleep("wait_15_seconds", new()
///     {
///         CreateDuration = "15s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             scannerStaticIp,
///         },
///     });
///
///     var scan_config = new Gcp.Compute.SecurityScanConfig("scan-config", new()
///     {
///         DisplayName = "terraform-scan-config",
///         StartingUrls = new[]
///         {
///             scannerStaticIp.IPAddress.Apply(address => $"http://{address}"),
///         },
///         TargetPlatforms = new[]
///         {
///             "COMPUTE",
///         },
///         IgnoreHttpStatusErrors = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait15Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		scannerStaticIp, err := compute.NewAddress(ctx, "scanner_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("scan-ignore-http-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait15Seconds, err := time.NewSleep(ctx, "wait_15_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("15s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			scannerStaticIp,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityScanConfig(ctx, "scan-config", &compute.SecurityScanConfigArgs{
/// 			DisplayName: pulumi.String("terraform-scan-config"),
/// 			StartingUrls: pulumi.StringArray{
/// 				scannerStaticIp.Address.ApplyT(func(address string) (string, error) {
/// 					return fmt.Sprintf("http://%v", address), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			TargetPlatforms: pulumi.StringArray{
/// 				pulumi.String("COMPUTE"),
/// 			},
/// 			IgnoreHttpStatusErrors: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait15Seconds,
/// 		}))
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_compute_address" "scanner_static_ip" {
///   name = "scan-ignore-http-ip"
/// }
/// resource "time_sleep" "wait_15_seconds" {
///   depends_on      = [gcp_compute_address.scanner_static_ip]
///   create_duration = "15s"
/// }
/// resource "gcp_compute_securityscanconfig" "scan-config" {
///   depends_on                = [time_sleep.wait_15_seconds]
///   display_name              = "terraform-scan-config"
///   starting_urls             = ["http://${gcp_compute_address.scanner_static_ip.address}"]
///   target_platforms          = ["COMPUTE"]
///   ignore_http_status_errors = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.compute.SecurityScanConfig;
/// import com.pulumi.gcp.compute.SecurityScanConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var scannerStaticIp = new Address("scannerStaticIp", AddressArgs.builder()
///             .name("scan-ignore-http-ip")
///             .build());
///
///         var wait15Seconds = new Sleep("wait15Seconds", SleepArgs.builder()
///             .createDuration("15s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(scannerStaticIp)
///                 .build());
///
///         var scan_config = new SecurityScanConfig("scan-config", SecurityScanConfigArgs.builder()
///             .displayName("terraform-scan-config")
///             .startingUrls(scannerStaticIp.address().applyValue(_address -> String.format("http://%s", _address)))
///             .targetPlatforms("COMPUTE")
///             .ignoreHttpStatusErrors(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait15Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   scannerStaticIp:
///     type: gcp:compute:Address
///     name: scanner_static_ip
///     properties:
///       name: scan-ignore-http-ip
///   wait15Seconds:
///     type: time:Sleep
///     name: wait_15_seconds
///     properties:
///       createDuration: 15s
///     options:
///       dependsOn:
///         - ${scannerStaticIp}
///   scan-config:
///     type: gcp:compute:SecurityScanConfig
///     properties:
///       displayName: terraform-scan-config
///       startingUrls:
///         - http://${scannerStaticIp.address}
///       targetPlatforms:
///         - COMPUTE
///       ignoreHttpStatusErrors: true
///     options:
///       dependsOn:
///         - ${wait15Seconds}
/// ```
///
/// ### Scan Config Static Ip
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const scannerStaticIp = new gcp.compute.Address("scanner_static_ip", {name: "scan-static-ip"});
/// const scan_config = new gcp.compute.SecurityScanConfig("scan-config", {
///     displayName: "scan-config",
///     startingUrls: [pulumi.interpolate`http://${scannerStaticIp.address}`],
///     targetPlatforms: ["COMPUTE"],
///     staticIpScan: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// scanner_static_ip = gcp.compute.Address("scanner_static_ip", name="scan-static-ip")
/// scan_config = gcp.compute.SecurityScanConfig("scan-config",
///     display_name="scan-config",
///     starting_urls=[scanner_static_ip.address.apply(lambda address: f"http://{address}")],
///     target_platforms=["COMPUTE"],
///     static_ip_scan=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scannerStaticIp = new Gcp.Compute.Address("scanner_static_ip", new()
///     {
///         Name = "scan-static-ip",
///     });
///
///     var scan_config = new Gcp.Compute.SecurityScanConfig("scan-config", new()
///     {
///         DisplayName = "scan-config",
///         StartingUrls = new[]
///         {
///             scannerStaticIp.IPAddress.Apply(address => $"http://{address}"),
///         },
///         TargetPlatforms = new[]
///         {
///             "COMPUTE",
///         },
///         StaticIpScan = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		scannerStaticIp, err := compute.NewAddress(ctx, "scanner_static_ip", &compute.AddressArgs{
/// 			Name: pulumi.String("scan-static-ip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityScanConfig(ctx, "scan-config", &compute.SecurityScanConfigArgs{
/// 			DisplayName: pulumi.String("scan-config"),
/// 			StartingUrls: pulumi.StringArray{
/// 				scannerStaticIp.Address.ApplyT(func(address string) (string, error) {
/// 					return fmt.Sprintf("http://%v", address), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			TargetPlatforms: pulumi.StringArray{
/// 				pulumi.String("COMPUTE"),
/// 			},
/// 			StaticIpScan: pulumi.Bool(true),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_address" "scanner_static_ip" {
///   name = "scan-static-ip"
/// }
/// resource "gcp_compute_securityscanconfig" "scan-config" {
///   display_name     = "scan-config"
///   starting_urls    = ["http://${gcp_compute_address.scanner_static_ip.address}"]
///   target_platforms = ["COMPUTE"]
///   static_ip_scan   = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.SecurityScanConfig;
/// import com.pulumi.gcp.compute.SecurityScanConfigArgs;
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
///         var scannerStaticIp = new Address("scannerStaticIp", AddressArgs.builder()
///             .name("scan-static-ip")
///             .build());
///
///         var scan_config = new SecurityScanConfig("scan-config", SecurityScanConfigArgs.builder()
///             .displayName("scan-config")
///             .startingUrls(scannerStaticIp.address().applyValue(_address -> String.format("http://%s", _address)))
///             .targetPlatforms("COMPUTE")
///             .staticIpScan(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   scannerStaticIp:
///     type: gcp:compute:Address
///     name: scanner_static_ip
///     properties:
///       name: scan-static-ip
///   scan-config:
///     type: gcp:compute:SecurityScanConfig
///     properties:
///       displayName: scan-config
///       startingUrls:
///         - http://${scannerStaticIp.address}
///       targetPlatforms:
///         - COMPUTE
///       staticIpScan: true
/// ```
///
///
/// ## Import
///
/// ScanConfig can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
/// * `{{project}} {{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ScanConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default {{project}}/{{name}}
/// $ terraform import google_security_scanner_scan_config.default "{{project}} {{name}}"
/// $ pulumi import gcp:compute/securityScanConfig:SecurityScanConfig default {{name}}
/// ```
class SecurityScanConfig extends pulumi.CustomResource {
  /// The authentication configuration.
  /// If specified, service will use the authentication configuration during scanning.
  /// Structure is documented below.
  late final pulumi.Output<SecurityScanConfigAuthentication?> authentication;
  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  late final pulumi.Output<List<String>?> blacklistPatterns;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The user provider display name of the ScanConfig.
  late final pulumi.Output<String> displayName;
  /// Controls export of scan configurations and results to Cloud Security Command Center.
  /// Default value is `ENABLED`.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String?> exportToSecurityCommandCenter;
  /// Whether to keep scanning even if most requests return HTTP error codes.
  late final pulumi.Output<bool?> ignoreHttpStatusErrors;
  /// The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// Defaults to 15.
  late final pulumi.Output<int?> maxQps;
  /// A server defined name for this index. Format:
  /// `projects/{{project}}/scanConfigs/{{server_generated_id}}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The schedule of the ScanConfig
  /// Structure is documented below.
  late final pulumi.Output<SecurityScanConfigSchedule?> schedule;
  /// The starting URLs from which the scanner finds site pages.
  late final pulumi.Output<List<String>> startingUrls;
  /// Whether the scan configuration has enabled static IP address scan feature.
  /// If enabled, the scanner will access applications from static IP addresses.
  late final pulumi.Output<bool?> staticIpScan;
  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// Each value may be one of: `APP_ENGINE`, `COMPUTE`.
  late final pulumi.Output<List<String>?> targetPlatforms;
  /// Type of the user agents used for scanning
  /// Default value is `CHROME_LINUX`.
  /// Possible values are: `USER_AGENT_UNSPECIFIED`, `CHROME_LINUX`, `CHROME_ANDROID`, `SAFARI_IPHONE`.
  late final pulumi.Output<String?> userAgent;

  /// Creates a new [SecurityScanConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityScanConfig]. {@macro pulumi_compute_security_scan_config_security_scan_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityScanConfig(
    String name, {
    SecurityScanConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityScanConfig:SecurityScanConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    authentication = registerOutput<SecurityScanConfigAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityScanConfigAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blacklistPatterns = registerOutput<List<String>?>('blacklistPatterns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    exportToSecurityCommandCenter = registerOutput<String?>('exportToSecurityCommandCenter');
    ignoreHttpStatusErrors = registerOutput<bool?>('ignoreHttpStatusErrors');
    maxQps = registerOutput<int?>('maxQps');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schedule = registerOutput<SecurityScanConfigSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityScanConfigSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startingUrls = registerOutput<List<String>>('startingUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    staticIpScan = registerOutput<bool?>('staticIpScan');
    targetPlatforms = registerOutput<List<String>?>('targetPlatforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    userAgent = registerOutput<String?>('userAgent');
  }

  /// Gets an existing [SecurityScanConfig] resource's state with the given [name] and [id].
  static SecurityScanConfig get(
    String name,
    pulumi.Input<String> id, {
    SecurityScanConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityScanConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityScanConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityScanConfig:SecurityScanConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<SecurityScanConfigAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityScanConfigAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blacklistPatterns = registerOutput<List<String>?>('blacklistPatterns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    exportToSecurityCommandCenter = registerOutput<String?>('exportToSecurityCommandCenter');
    ignoreHttpStatusErrors = registerOutput<bool?>('ignoreHttpStatusErrors');
    maxQps = registerOutput<int?>('maxQps');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schedule = registerOutput<SecurityScanConfigSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityScanConfigSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startingUrls = registerOutput<List<String>>('startingUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    staticIpScan = registerOutput<bool?>('staticIpScan');
    targetPlatforms = registerOutput<List<String>?>('targetPlatforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    userAgent = registerOutput<String?>('userAgent');
  }

  /// Creates a typed reference to an existing [SecurityScanConfig] resource.
  SecurityScanConfig.reference(String urn)
    : super(
        'gcp:compute/securityScanConfig:SecurityScanConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authentication = registerOutput<SecurityScanConfigAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityScanConfigAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    blacklistPatterns = registerOutput<List<String>?>('blacklistPatterns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    exportToSecurityCommandCenter = registerOutput<String?>('exportToSecurityCommandCenter');
    ignoreHttpStatusErrors = registerOutput<bool?>('ignoreHttpStatusErrors');
    maxQps = registerOutput<int?>('maxQps');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schedule = registerOutput<SecurityScanConfigSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityScanConfigSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startingUrls = registerOutput<List<String>>('startingUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    staticIpScan = registerOutput<bool?>('staticIpScan');
    targetPlatforms = registerOutput<List<String>?>('targetPlatforms', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    userAgent = registerOutput<String?>('userAgent');
  }
}
