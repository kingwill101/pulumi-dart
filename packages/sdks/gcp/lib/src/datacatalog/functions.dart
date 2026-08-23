import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_result.dart';
import 'get_policy_tag_iam_policy_args.dart';
import 'get_policy_tag_iam_policy_result.dart';
import 'get_tag_template_iam_policy_args.dart';
import 'get_tag_template_iam_policy_result.dart';
import 'get_taxonomy_args.dart';
import 'get_taxonomy_iam_policy_args.dart';
import 'get_taxonomy_iam_policy_result.dart';
import 'get_taxonomy_result.dart';

/// &gt; **Warning:** The parent resource has been deprecated: `gcp.datacatalog.EntryGroup` is deprecated and will be removed in a future major release. Use `gcp.dataplex.EntryGroup` instead. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// Retrieves the current IAM policy data for entrygroup
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getEntryGroupIamPolicy({
///     entryGroup: basicEntryGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_entry_group_iam_policy(entry_group=basic_entry_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetEntryGroupIamPolicy.Invoke(new()
///     {
///         EntryGroup = basicEntryGroup.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupEntryGroupIamPolicy(ctx, &datacatalog.LookupEntryGroupIamPolicyArgs{
/// 			EntryGroup: basicEntryGroup.Name,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_datacatalog_getentrygroupiampolicy" "policy" {
///   entry_group = basicEntryGroup.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetEntryGroupIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getEntryGroupIamPolicy(GetEntryGroupIamPolicyArgs.builder()
///             .entryGroup(basicEntryGroup.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getEntryGroupIamPolicy
///       arguments:
///         entryGroup: ${basicEntryGroup.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_entry_group_iam_policy_get_entry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for policytag
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getPolicyTagIamPolicy({
///     policyTag: basicPolicyTag.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_policy_tag_iam_policy(policy_tag=basic_policy_tag["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetPolicyTagIamPolicy.Invoke(new()
///     {
///         PolicyTag = basicPolicyTag.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupPolicyTagIamPolicy(ctx, &datacatalog.LookupPolicyTagIamPolicyArgs{
/// 			PolicyTag: basicPolicyTag.Name,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_datacatalog_getpolicytagiampolicy" "policy" {
///   policy_tag = basicPolicyTag.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetPolicyTagIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getPolicyTagIamPolicy(GetPolicyTagIamPolicyArgs.builder()
///             .policyTag(basicPolicyTag.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getPolicyTagIamPolicy
///       arguments:
///         policyTag: ${basicPolicyTag.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_policy_tag_iam_policy_get_policy_tag_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyTagIamPolicyResult> getPolicyTagIamPolicy(
  GetPolicyTagIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getPolicyTagIamPolicy:getPolicyTagIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyTagIamPolicyResult.fromMap(result);
}

/// &gt; **Warning:** The parent resource has been deprecated: `gcp.datacatalog.TagTemplate` is deprecated and will be removed in a future major release. Use `gcp.dataplex.AspectType` instead. For steps to transition your Data Catalog users, workloads, and content to Dataplex Catalog, see https://cloud.google.com/dataplex/docs/transition-to-dataplex-catalog.
///
/// Retrieves the current IAM policy data for tagtemplate
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getTagTemplateIamPolicy({
///     tagTemplate: basicTagTemplate.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_tag_template_iam_policy(tag_template=basic_tag_template["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetTagTemplateIamPolicy.Invoke(new()
///     {
///         TagTemplate = basicTagTemplate.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupTagTemplateIamPolicy(ctx, &datacatalog.LookupTagTemplateIamPolicyArgs{
/// 			TagTemplate: basicTagTemplate.Name,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_datacatalog_gettagtemplateiampolicy" "policy" {
///   tag_template = basicTagTemplate.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetTagTemplateIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getTagTemplateIamPolicy(GetTagTemplateIamPolicyArgs.builder()
///             .tagTemplate(basicTagTemplate.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getTagTemplateIamPolicy
///       arguments:
///         tagTemplate: ${basicTagTemplate.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_tag_template_iam_policy_get_tag_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagTemplateIamPolicyResult> getTagTemplateIamPolicy(
  GetTagTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTagTemplateIamPolicy:getTagTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateIamPolicyResult.fromMap(result);
}

/// Get information about a Google Data Catalog Taxonomy. For more information see
/// [the official documentation](https://cloud.google.com/data-catalog/docs)
/// and
/// [API](https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.taxonomies).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.datacatalog.getTaxonomy({
///     displayName: "my_taxonomy",
///     region: "us-central1",
/// });
/// const examplePolicyTag = new gcp.datacatalog.PolicyTag("example", {
///     taxonomy: example.then(example => example.id),
///     displayName: "example_policy_tag",
///     description: "A policy tag",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.datacatalog.get_taxonomy(display_name="my_taxonomy",
///     region="us-central1")
/// example_policy_tag = gcp.datacatalog.PolicyTag("example",
///     taxonomy=example.id,
///     display_name="example_policy_tag",
///     description="A policy tag")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.DataCatalog.GetTaxonomy.Invoke(new()
///     {
///         DisplayName = "my_taxonomy",
///         Region = "us-central1",
///     });
///
///     var examplePolicyTag = new Gcp.DataCatalog.PolicyTag("example", new()
///     {
///         Taxonomy = example.Apply(getTaxonomyResult => getTaxonomyResult.Id),
///         DisplayName = "example_policy_tag",
///         Description = "A policy tag",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := datacatalog.LookupTaxonomy(ctx, &datacatalog.LookupTaxonomyArgs{
/// 			DisplayName: "my_taxonomy",
/// 			Region:      "us-central1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datacatalog.NewPolicyTag(ctx, "example", &datacatalog.PolicyTagArgs{
/// 			Taxonomy:    pulumi.String(example.Id),
/// 			DisplayName: pulumi.String("example_policy_tag"),
/// 			Description: pulumi.String("A policy tag"),
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
/// data "gcp_datacatalog_gettaxonomy" "example" {
///   display_name = "my_taxonomy"
///   region       = "us-central1"
/// }
///
/// resource "gcp_datacatalog_policytag" "example" {
///   taxonomy     = data.gcp_datacatalog_gettaxonomy.example.id
///   display_name = "example_policy_tag"
///   description  = "A policy tag"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetTaxonomyArgs;
/// import com.pulumi.gcp.datacatalog.PolicyTag;
/// import com.pulumi.gcp.datacatalog.PolicyTagArgs;
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
///         final var example = DatacatalogFunctions.getTaxonomy(GetTaxonomyArgs.builder()
///             .displayName("my_taxonomy")
///             .region("us-central1")
///             .build());
///
///         var examplePolicyTag = new PolicyTag("examplePolicyTag", PolicyTagArgs.builder()
///             .taxonomy(example.id())
///             .displayName("example_policy_tag")
///             .description("A policy tag")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePolicyTag:
///     type: gcp:datacatalog:PolicyTag
///     name: example
///     properties:
///       taxonomy: ${example.id}
///       displayName: example_policy_tag
///       description: A policy tag
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:datacatalog:getTaxonomy
///       arguments:
///         displayName: my_taxonomy
///         region: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_taxonomy_get_taxonomy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyResult> getTaxonomy(
  GetTaxonomyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTaxonomy:getTaxonomy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for taxonomy
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getTaxonomyIamPolicy({
///     taxonomy: basicTaxonomy.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_taxonomy_iam_policy(taxonomy=basic_taxonomy["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataCatalog.GetTaxonomyIamPolicy.Invoke(new()
///     {
///         Taxonomy = basicTaxonomy.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datacatalog.LookupTaxonomyIamPolicy(ctx, &datacatalog.LookupTaxonomyIamPolicyArgs{
/// 			Taxonomy: basicTaxonomy.Name,
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_datacatalog_gettaxonomyiampolicy" "policy" {
///   taxonomy = basicTaxonomy.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetTaxonomyIamPolicyArgs;
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
///         final var policy = DatacatalogFunctions.getTaxonomyIamPolicy(GetTaxonomyIamPolicyArgs.builder()
///             .taxonomy(basicTaxonomy.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:datacatalog:getTaxonomyIamPolicy
///       arguments:
///         taxonomy: ${basicTaxonomy.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_taxonomy_iam_policy_get_taxonomy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaxonomyIamPolicyResult> getTaxonomyIamPolicy(
  GetTaxonomyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTaxonomyIamPolicy:getTaxonomyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaxonomyIamPolicyResult.fromMap(result);
}
