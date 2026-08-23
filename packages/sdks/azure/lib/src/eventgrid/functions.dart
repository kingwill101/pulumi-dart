import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_args.dart';
import 'get_domain_result.dart';
import 'get_domain_topic_args.dart';
import 'get_domain_topic_result.dart';
import 'get_partner_namespace_args.dart';
import 'get_partner_namespace_result.dart';
import 'get_partner_registration_args.dart';
import 'get_partner_registration_result.dart';
import 'get_system_topic_args.dart';
import 'get_system_topic_result.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';

/// Use this data source to access information about an existing EventGrid Domain
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventgrid.getDomain({
///     name: "my-eventgrid-domain",
///     resourceGroupName: "example-resources",
/// });
/// export const eventgridDomainMappingTopic = example.then(example => example.inputMappingFields?.[0]?.topic);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventgrid.get_domain(name="my-eventgrid-domain",
///     resource_group_name="example-resources")
/// pulumi.export("eventgridDomainMappingTopic", example.input_mapping_fields[0].topic)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventGrid.GetDomain.Invoke(new()
///     {
///         Name = "my-eventgrid-domain",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventgridDomainMappingTopic"] = example.Apply(getDomainResult => getDomainResult.InputMappingFields[0]?.Topic),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventgrid.LookupDomain(ctx, &eventgrid.LookupDomainArgs{
/// 			Name:              "my-eventgrid-domain",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventgridDomainMappingTopic", example.InputMappingFields[0].Topic)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_eventgrid_getdomain" "example" {
///   name                = "my-eventgrid-domain"
///   resource_group_name = "example-resources"
/// }
///
/// output "eventgridDomainMappingTopic" {
///   value = data.azure_eventgrid_getdomain.example.input_mapping_fields[0].topic
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.eventgrid.EventgridFunctions;
/// import com.pulumi.azure.eventgrid.inputs.GetDomainArgs;
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
///         final var example = EventgridFunctions.getDomain(GetDomainArgs.builder()
///             .name("my-eventgrid-domain")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("eventgridDomainMappingTopic", example.inputMappingFields()[0].topic());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventgrid:getDomain
///       arguments:
///         name: my-eventgrid-domain
///         resourceGroupName: example-resources
/// outputs:
///   eventgridDomainMappingTopic: ${example.inputMappingFields[0].topic}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventgrid/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Use this data source to access information about an existing EventGrid Domain Topic
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventgrid.getDomainTopic({
///     name: "my-eventgrid-domain-topic",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventgrid.get_domain_topic(name="my-eventgrid-domain-topic",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventGrid.GetDomainTopic.Invoke(new()
///     {
///         Name = "my-eventgrid-domain-topic",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.LookupDomainTopic(ctx, &eventgrid.LookupDomainTopicArgs{
/// 			Name:              "my-eventgrid-domain-topic",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_eventgrid_getdomaintopic" "example" {
///   name                = "my-eventgrid-domain-topic"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.eventgrid.EventgridFunctions;
/// import com.pulumi.azure.eventgrid.inputs.GetDomainTopicArgs;
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
///         final var example = EventgridFunctions.getDomainTopic(GetDomainTopicArgs.builder()
///             .name("my-eventgrid-domain-topic")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventgrid:getDomainTopic
///       arguments:
///         name: my-eventgrid-domain-topic
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_domain_topic_get_domain_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainTopicResult> getDomainTopic(
  GetDomainTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventgrid/getDomainTopic:getDomainTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainTopicResult.fromMap(result);
}

/// Use this data source to access information about an existing Event Grid Partner Namespace
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventgrid.getPartnerNamespace({
///     name: "my-eventgrid-partner-namespace",
///     resourceGroupName: "example-resources",
/// });
/// export const eventgridPartnerNamespaceEndpoint = example.then(example => example.endpoint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventgrid.get_partner_namespace(name="my-eventgrid-partner-namespace",
///     resource_group_name="example-resources")
/// pulumi.export("eventgridPartnerNamespaceEndpoint", example.endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventGrid.GetPartnerNamespace.Invoke(new()
///     {
///         Name = "my-eventgrid-partner-namespace",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventgridPartnerNamespaceEndpoint"] = example.Apply(getPartnerNamespaceResult => getPartnerNamespaceResult.Endpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventgrid.LookupPartnerNamespace(ctx, &eventgrid.LookupPartnerNamespaceArgs{
/// 			Name:              "my-eventgrid-partner-namespace",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventgridPartnerNamespaceEndpoint", example.Endpoint)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_eventgrid_getpartnernamespace" "example" {
///   name                = "my-eventgrid-partner-namespace"
///   resource_group_name = "example-resources"
/// }
///
/// output "eventgridPartnerNamespaceEndpoint" {
///   value = data.azure_eventgrid_getpartnernamespace.example.endpoint
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.eventgrid.EventgridFunctions;
/// import com.pulumi.azure.eventgrid.inputs.GetPartnerNamespaceArgs;
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
///         final var example = EventgridFunctions.getPartnerNamespace(GetPartnerNamespaceArgs.builder()
///             .name("my-eventgrid-partner-namespace")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("eventgridPartnerNamespaceEndpoint", example.endpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventgrid:getPartnerNamespace
///       arguments:
///         name: my-eventgrid-partner-namespace
///         resourceGroupName: example-resources
/// outputs:
///   eventgridPartnerNamespaceEndpoint: ${example.endpoint}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_namespace_get_partner_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerNamespaceResult> getPartnerNamespace(
  GetPartnerNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventgrid/getPartnerNamespace:getPartnerNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerNamespaceResult.fromMap(result);
}

/// Use this data source to access information about an existing EventGrid Partner Registration
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventgrid.getPartnerRegistration({
///     name: "my-eventgrid-partner-registration",
///     resourceGroupName: "example-resources",
/// });
/// export const eventgridPartnerRegistrationId = example.then(example => example.partnerRegistrationId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventgrid.get_partner_registration(name="my-eventgrid-partner-registration",
///     resource_group_name="example-resources")
/// pulumi.export("eventgridPartnerRegistrationId", example.partner_registration_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventGrid.GetPartnerRegistration.Invoke(new()
///     {
///         Name = "my-eventgrid-partner-registration",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventgridPartnerRegistrationId"] = example.Apply(getPartnerRegistrationResult => getPartnerRegistrationResult.PartnerRegistrationId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventgrid.LookupPartnerRegistration(ctx, &eventgrid.LookupPartnerRegistrationArgs{
/// 			Name:              "my-eventgrid-partner-registration",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventgridPartnerRegistrationId", example.PartnerRegistrationId)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_eventgrid_getpartnerregistration" "example" {
///   name                = "my-eventgrid-partner-registration"
///   resource_group_name = "example-resources"
/// }
///
/// output "eventgridPartnerRegistrationId" {
///   value = data.azure_eventgrid_getpartnerregistration.example.partner_registration_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.eventgrid.EventgridFunctions;
/// import com.pulumi.azure.eventgrid.inputs.GetPartnerRegistrationArgs;
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
///         final var example = EventgridFunctions.getPartnerRegistration(GetPartnerRegistrationArgs.builder()
///             .name("my-eventgrid-partner-registration")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("eventgridPartnerRegistrationId", example.partnerRegistrationId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventgrid:getPartnerRegistration
///       arguments:
///         name: my-eventgrid-partner-registration
///         resourceGroupName: example-resources
/// outputs:
///   eventgridPartnerRegistrationId: ${example.partnerRegistrationId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_partner_registration_get_partner_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPartnerRegistrationResult> getPartnerRegistration(
  GetPartnerRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventgrid/getPartnerRegistration:getPartnerRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartnerRegistrationResult.fromMap(result);
}

/// Use this data source to access information about an existing Event Grid System Topic
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventgrid.getSystemTopic({
///     name: "eventgrid-system-topic",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventgrid.get_system_topic(name="eventgrid-system-topic",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventGrid.GetSystemTopic.Invoke(new()
///     {
///         Name = "eventgrid-system-topic",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.LookupSystemTopic(ctx, &eventgrid.LookupSystemTopicArgs{
/// 			Name:              "eventgrid-system-topic",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_eventgrid_getsystemtopic" "example" {
///   name                = "eventgrid-system-topic"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.eventgrid.EventgridFunctions;
/// import com.pulumi.azure.eventgrid.inputs.GetSystemTopicArgs;
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
///         final var example = EventgridFunctions.getSystemTopic(GetSystemTopicArgs.builder()
///             .name("eventgrid-system-topic")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventgrid:getSystemTopic
///       arguments:
///         name: eventgrid-system-topic
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_system_topic_get_system_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSystemTopicResult> getSystemTopic(
  GetSystemTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventgrid/getSystemTopic:getSystemTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSystemTopicResult.fromMap(result);
}

/// Use this data source to access information about an existing EventGrid Topic
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.eventgrid.getTopic({
///     name: "my-eventgrid-topic",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.eventgrid.get_topic(name="my-eventgrid-topic",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.EventGrid.GetTopic.Invoke(new()
///     {
///         Name = "my-eventgrid-topic",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventgrid"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.LookupTopic(ctx, &eventgrid.LookupTopicArgs{
/// 			Name:              "my-eventgrid-topic",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// data "azure_eventgrid_gettopic" "example" {
///   name                = "my-eventgrid-topic"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.eventgrid.EventgridFunctions;
/// import com.pulumi.azure.eventgrid.inputs.GetTopicArgs;
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
///         final var example = EventgridFunctions.getTopic(GetTopicArgs.builder()
///             .name("my-eventgrid-topic")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:eventgrid:getTopic
///       arguments:
///         name: my-eventgrid-topic
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.EventGrid` - 2025-02-15
/// [args] Arguments passed to this invoke. {@macro pulumi_eventgrid_get_topic_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:eventgrid/getTopic:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}
