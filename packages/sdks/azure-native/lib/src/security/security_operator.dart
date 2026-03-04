import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'security_operator_args.dart';

/// Security operator under a given subscription and pricing
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a security operator on the given scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityOperator = new AzureNative.Security.SecurityOperator("securityOperator", new()
///     {
///         PricingName = "CloudPosture",
///         SecurityOperatorName = "DefenderCSPMSecurityOperator",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewSecurityOperator(ctx, "securityOperator", &security.SecurityOperatorArgs{
/// 			PricingName:          pulumi.String("CloudPosture"),
/// 			SecurityOperatorName: pulumi.String("DefenderCSPMSecurityOperator"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.SecurityOperator;
/// import com.pulumi.azurenative.security.SecurityOperatorArgs;
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
///         var securityOperator = new SecurityOperator("securityOperator", SecurityOperatorArgs.builder()
///             .pricingName("CloudPosture")
///             .securityOperatorName("DefenderCSPMSecurityOperator")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const securityOperator = new azure_native.security.SecurityOperator("securityOperator", {
///     pricingName: "CloudPosture",
///     securityOperatorName: "DefenderCSPMSecurityOperator",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_operator = azure_native.security.SecurityOperator("securityOperator",
///     pricing_name="CloudPosture",
///     security_operator_name="DefenderCSPMSecurityOperator")
///
/// ```
///
/// ```yaml
/// resources:
///   securityOperator:
///     type: azure-native:security:SecurityOperator
///     properties:
///       pricingName: CloudPosture
///       securityOperatorName: DefenderCSPMSecurityOperator
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:security:SecurityOperator DefenderCSPMSecurityOperator /subscriptions/{subscriptionId}/providers/Microsoft.Security/pricings/{pricingName}/securityOperators/{securityOperatorName}
/// ```
class SecurityOperator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// Resource name
  late final pulumi.Output<String> name;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityOperator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityOperator]. {@macro pulumi_security_security_operator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityOperator(
    String name, {
    SecurityOperatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:security:SecurityOperator',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse?>('identity');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
  }
}
