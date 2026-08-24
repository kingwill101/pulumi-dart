import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_posture_integration_args.dart';
import 'device_posture_integration_config.dart';
import 'device_posture_integration_state.dart';

/// Accepted Permissions
///
/// - `Zero Trust Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZeroTrustDevicePostureIntegration = new cloudflare.ZeroTrustDevicePostureIntegration("example_zero_trust_device_posture_integration", {
///     accountId: "699d98642c564d2e855e9661899b7252",
///     config: {
///         apiUrl: "https://as123.awmdm.com/API",
///         authUrl: "https://na.uemauth.workspaceone.com/connect/token",
///         clientId: "example client id",
///         clientSecret: "example client secret",
///     },
///     interval: "10m",
///     name: "My Workspace One Integration",
///     type: "workspace_one",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zero_trust_device_posture_integration = cloudflare.ZeroTrustDevicePostureIntegration("example_zero_trust_device_posture_integration",
///     account_id="699d98642c564d2e855e9661899b7252",
///     config={
///         "api_url": "https://as123.awmdm.com/API",
///         "auth_url": "https://na.uemauth.workspaceone.com/connect/token",
///         "client_id": "example client id",
///         "client_secret": "example client secret",
///     },
///     interval="10m",
///     name="My Workspace One Integration",
///     type="workspace_one")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZeroTrustDevicePostureIntegration = new Cloudflare.ZeroTrustDevicePostureIntegration("example_zero_trust_device_posture_integration", new()
///     {
///         AccountId = "699d98642c564d2e855e9661899b7252",
///         Config = new Cloudflare.Inputs.ZeroTrustDevicePostureIntegrationConfigArgs
///         {
///             ApiUrl = "https://as123.awmdm.com/API",
///             AuthUrl = "https://na.uemauth.workspaceone.com/connect/token",
///             ClientId = "example client id",
///             ClientSecret = "example client secret",
///         },
///         Interval = "10m",
///         Name = "My Workspace One Integration",
///         Type = "workspace_one",
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
/// 		_, err := cloudflare.NewZeroTrustDevicePostureIntegration(ctx, "example_zero_trust_device_posture_integration", &cloudflare.ZeroTrustDevicePostureIntegrationArgs{
/// 			AccountId: pulumi.String("699d98642c564d2e855e9661899b7252"),
/// 			Config: &cloudflare.ZeroTrustDevicePostureIntegrationConfigArgs{
/// 				ApiUrl:       pulumi.String("https://as123.awmdm.com/API"),
/// 				AuthUrl:      pulumi.String("https://na.uemauth.workspaceone.com/connect/token"),
/// 				ClientId:     pulumi.String("example client id"),
/// 				ClientSecret: pulumi.String("example client secret"),
/// 			},
/// 			Interval: pulumi.String("10m"),
/// 			Name:     pulumi.String("My Workspace One Integration"),
/// 			Type:     pulumi.String("workspace_one"),
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
/// resource "cloudflare_zerotrustdevicepostureintegration" "example_zero_trust_device_posture_integration" {
///   account_id = "699d98642c564d2e855e9661899b7252"
///   config = {
///     api_url       = "https://as123.awmdm.com/API"
///     auth_url      = "https://na.uemauth.workspaceone.com/connect/token"
///     client_id     = "example client id"
///     client_secret = "example client secret"
///   }
///   interval = "10m"
///   name     = "My Workspace One Integration"
///   type     = "workspace_one"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZeroTrustDevicePostureIntegration;
/// import com.pulumi.cloudflare.ZeroTrustDevicePostureIntegrationArgs;
/// import com.pulumi.cloudflare.inputs.ZeroTrustDevicePostureIntegrationConfigArgs;
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
///         var exampleZeroTrustDevicePostureIntegration = new ZeroTrustDevicePostureIntegration("exampleZeroTrustDevicePostureIntegration", ZeroTrustDevicePostureIntegrationArgs.builder()
///             .accountId("699d98642c564d2e855e9661899b7252")
///             .config(ZeroTrustDevicePostureIntegrationConfigArgs.builder()
///                 .apiUrl("https://as123.awmdm.com/API")
///                 .authUrl("https://na.uemauth.workspaceone.com/connect/token")
///                 .clientId("example client id")
///                 .clientSecret("example client secret")
///                 .build())
///             .interval("10m")
///             .name("My Workspace One Integration")
///             .type("workspace_one")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZeroTrustDevicePostureIntegration:
///     type: cloudflare:ZeroTrustDevicePostureIntegration
///     name: example_zero_trust_device_posture_integration
///     properties:
///       accountId: 699d98642c564d2e855e9661899b7252
///       config:
///         apiUrl: https://as123.awmdm.com/API
///         authUrl: https://na.uemauth.workspaceone.com/connect/token
///         clientId: example client id
///         clientSecret: example client secret
///       interval: 10m
///       name: My Workspace One Integration
///       type: workspace_one
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/devicePostureIntegration:DevicePostureIntegration example '<account_id>/<integration_id>'
/// ```
class DevicePostureIntegration extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// The configuration object containing third-party integration information.
  late final pulumi.Output<DevicePostureIntegrationConfig> config;
  /// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  late final pulumi.Output<String> interval;
  /// The name of the device posture integration.
  late final pulumi.Output<String> name;
  /// The type of device posture integration.
  /// Available values: "workspace*one", "crowdstrike*s2s", "uptycs", "intune", "kolide", "tanium*s2s", "sentinelone*s2s", "customS2s".
  late final pulumi.Output<String> type;

  /// Creates a new [DevicePostureIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevicePostureIntegration]. {@macro pulumi_index_device_posture_integration_device_posture_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevicePostureIntegration(
    String name, {
    DevicePostureIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/devicePostureIntegration:DevicePostureIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<DevicePostureIntegrationConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevicePostureIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interval = registerOutput<String>('interval');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DevicePostureIntegration] resource's state with the given [name] and [id].
  static DevicePostureIntegration get(
    String name,
    pulumi.Input<String> id, {
    DevicePostureIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DevicePostureIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DevicePostureIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/devicePostureIntegration:DevicePostureIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<DevicePostureIntegrationConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevicePostureIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interval = registerOutput<String>('interval');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DevicePostureIntegration] resource.
  DevicePostureIntegration.reference(String urn)
    : super(
        'cloudflare:index/devicePostureIntegration:DevicePostureIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    config = registerOutput<DevicePostureIntegrationConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DevicePostureIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    interval = registerOutput<String>('interval');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
