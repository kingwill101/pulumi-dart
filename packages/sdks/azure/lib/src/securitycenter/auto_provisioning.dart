import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_provisioning_args.dart';
import 'auto_provisioning_state.dart';

/// Enables or disables the Security Center Auto Provisioning feature for the subscription
///
/// &gt; **Note:** The `azure.securitycenter.AutoProvisioning` resource has been deprecated because [the auto provisioning capability will be deprecated by end of Novemember of 2024](https://learn.microsoft.com/en-us/azure/defender-for-cloud/prepare-deprecation-log-analytics-mma-agent#log-analytics-agent-autoprovisioning-experience---deprecation-plan) and will be removed in v5.0 of the AzureRM Provider.
///
/// &gt; **Note:** There is no resource name required, it will always be "default"
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.securitycenter.AutoProvisioning("example", {autoProvision: "On"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.securitycenter.AutoProvisioning("example", auto_provision="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.SecurityCenter.AutoProvisioning("example", new()
///     {
///         AutoProvision = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewAutoProvisioning(ctx, "example", &securitycenter.AutoProvisioningArgs{
/// 			AutoProvision: pulumi.String("On"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.securitycenter.AutoProvisioning;
/// import com.pulumi.azure.securitycenter.AutoProvisioningArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new AutoProvisioning("example", AutoProvisioningArgs.builder()
///             .autoProvision("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:securitycenter:AutoProvisioning
///     properties:
///       autoProvision: On
/// ```
///
///
/// ## Import
///
/// Security Center Auto Provisioning can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/autoProvisioning:AutoProvisioning example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Security/autoProvisioningSettings/default
/// ```
class AutoProvisioning extends pulumi.CustomResource {
  /// Should the security agent be automatically provisioned on Virtual Machines in this subscription? Possible values are `On` (to install the security agent automatically, if it's missing) or `Off` (to not install the security agent automatically).
  late final pulumi.Output<String> autoProvision;

  /// Creates a new [AutoProvisioning].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoProvisioning]. {@macro pulumi_securitycenter_auto_provisioning_auto_provisioning_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoProvisioning(
    String name, {
    AutoProvisioningArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/autoProvisioning:AutoProvisioning',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoProvision = registerOutput<String>('autoProvision');
  }

  /// Gets an existing [AutoProvisioning] resource's state with the given [name] and [id].
  static AutoProvisioning get(
    String name,
    pulumi.Input<String> id, {
    AutoProvisioningState? state,
  }) {
    return AutoProvisioning._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutoProvisioning._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/autoProvisioning:AutoProvisioning',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoProvision = registerOutput<String>('autoProvision');
  }
}
