import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_iam_policy_args.dart';
import 'dataset_iam_policy_state.dart';

/// Three different resources help you manage your IAM policy for BigQuery dataset. Each of these resources serves a different use case:
///
/// * `gcp.bigquery.DatasetIamPolicy`: Authoritative. Sets the IAM policy for the dataset and replaces any existing policy already attached.
/// * `gcp.bigquery.DatasetIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the dataset are preserved.
/// * `gcp.bigquery.DatasetIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the dataset are preserved.
///
/// These resources are intended to convert the permissions system for BigQuery datasets to the standard IAM interface. For advanced usages, including [creating authorized views](https://cloud.google.com/bigquery/docs/share-access-views), please use either `gcp.bigquery.DatasetAccess` or the `access` field on `gcp.bigquery.Dataset`.
///
/// &gt; **Note:** These resources **cannot** be used with `gcp.bigquery.DatasetAccess` resources or the `access` field on `gcp.bigquery.Dataset` or they will fight over what the policy should be.
///
/// &gt; **Note:** Using any of these resources will remove any authorized view permissions from the dataset. To assign and preserve authorized view permissions use the `gcp.bigquery.DatasetAccess` instead.
///
/// &gt; **Note:** Legacy BigQuery roles `OWNER` `WRITER` and `READER` **cannot** be used with any of these IAM resources. Instead use the full role form of: `roles/bigquery.dataOwner` `roles/bigquery.dataEditor` and `roles/bigquery.dataViewer`.
///
/// &gt; **Note:** `gcp.bigquery.DatasetIamPolicy` **cannot** be used in conjunction with `gcp.bigquery.DatasetIamBinding` and `gcp.bigquery.DatasetIamMember` or they will fight over what your policy should be.
///
/// &gt; **Note:** `gcp.bigquery.DatasetIamBinding` resources **can be** used in conjunction with `gcp.bigquery.DatasetIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.bigquery.DatasetIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigquery.dataOwner",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
///     datasetId: datasetDataset.datasetId,
///     policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigquery.dataOwner",
///     "members": ["user:jane@example.com"],
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
///     dataset_id=dataset_dataset.dataset_id,
///     policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/bigquery.dataOwner",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
///     {
///         DatasetId = datasetDataset.DatasetId,
///         PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigquery.dataOwner",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// 			DatasetId:  datasetDataset.DatasetId,
/// 			PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
///         final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/bigquery.dataOwner")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
///             .datasetId(datasetDataset.datasetId())
///             .policyData(owner.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:DatasetIamPolicy
///     properties:
///       datasetId: ${datasetDataset.datasetId}
///       policyData: ${owner.policyData}
///   datasetDataset:
///     type: gcp:bigquery:Dataset
///     name: dataset
///     properties:
///       datasetId: example_dataset
/// variables:
///   owner:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigquery.dataOwner
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## With IAM condition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigquery.dataOwner",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2029_12_31",
///             description: "Expiring at midnight of 2029-12-31",
///             expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
///     datasetId: datasetDataset.datasetId,
///     policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigquery.dataOwner",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2029_12_31",
///         "description": "Expiring at midnight of 2029-12-31",
///         "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     },
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
///     dataset_id=dataset_dataset.dataset_id,
///     policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/bigquery.dataOwner",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2029_12_31",
///                     Description = "Expiring at midnight of 2029-12-31",
///                     Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
///     {
///         DatasetId = datasetDataset.DatasetId,
///         PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigquery.dataOwner",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2029_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2029-12-31"),
/// 						Expression:  "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// 			DatasetId:  datasetDataset.DatasetId,
/// 			PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
///         final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/bigquery.dataOwner")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2029_12_31")
///                     .description("Expiring at midnight of 2029-12-31")
///                     .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
///             .datasetId(datasetDataset.datasetId())
///             .policyData(owner.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:DatasetIamPolicy
///     properties:
///       datasetId: ${datasetDataset.datasetId}
///       policyData: ${owner.policyData}
///   datasetDataset:
///     type: gcp:bigquery:Dataset
///     name: dataset
///     properties:
///       datasetId: example_dataset
/// variables:
///   owner:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigquery.dataOwner
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2029_12_31
///               description: Expiring at midnight of 2029-12-31
///               expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.bigquery.DatasetIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataViewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataViewer",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataViewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataViewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataViewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reader:
///     type: gcp:bigquery:DatasetIamBinding
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataViewer
///       members:
///         - user:jane@example.com
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## With IAM condition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataViewer",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2029_12_31",
///         description: "Expiring at midnight of 2029-12-31",
///         expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataViewer",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2029_12_31",
///         "description": "Expiring at midnight of 2029-12-31",
///         "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataViewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.BigQuery.Inputs.DatasetIamBindingConditionArgs
///         {
///             Title = "expires_after_2029_12_31",
///             Description = "Expiring at midnight of 2029-12-31",
///             Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataViewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &bigquery.DatasetIamBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2029_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamBindingConditionArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataViewer")
///             .members("user:jane@example.com")
///             .condition(DatasetIamBindingConditionArgs.builder()
///                 .title("expires_after_2029_12_31")
///                 .description("Expiring at midnight of 2029-12-31")
///                 .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reader:
///     type: gcp:bigquery:DatasetIamBinding
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataViewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2029_12_31
///         description: Expiring at midnight of 2029-12-31
///         expression: request.time < timestamp("2030-01-01T00:00:00Z")
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## gcp.bigquery.DatasetIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataEditor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigquery:DatasetIamMember
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: user:jane@example.com
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## With IAM condition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2029_12_31",
///         description: "Expiring at midnight of 2029-12-31",
///         expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2029_12_31",
///         "description": "Expiring at midnight of 2029-12-31",
///         "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataEditor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.BigQuery.Inputs.DatasetIamMemberConditionArgs
///         {
///             Title = "expires_after_2029_12_31",
///             Description = "Expiring at midnight of 2029-12-31",
///             Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
/// 			Condition: &bigquery.DatasetIamMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2029_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamMemberConditionArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member("user:jane@example.com")
///             .condition(DatasetIamMemberConditionArgs.builder()
///                 .title("expires_after_2029_12_31")
///                 .description("Expiring at midnight of 2029-12-31")
///                 .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigquery:DatasetIamMember
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2029_12_31
///         description: Expiring at midnight of 2029-12-31
///         expression: request.time < timestamp("2030-01-01T00:00:00Z")
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## gcp.bigquery.DatasetIamPolicy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigquery.dataOwner",
///         members: ["user:jane@example.com"],
///     }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
///     datasetId: datasetDataset.datasetId,
///     policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigquery.dataOwner",
///     "members": ["user:jane@example.com"],
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
///     dataset_id=dataset_dataset.dataset_id,
///     policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/bigquery.dataOwner",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///             },
///         },
///     });
///
///     var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
///     {
///         DatasetId = datasetDataset.DatasetId,
///         PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigquery.dataOwner",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// 			DatasetId:  datasetDataset.DatasetId,
/// 			PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
///         final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/bigquery.dataOwner")
///                 .members("user:jane@example.com")
///                 .build())
///             .build());
///
///         var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
///             .datasetId(datasetDataset.datasetId())
///             .policyData(owner.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:DatasetIamPolicy
///     properties:
///       datasetId: ${datasetDataset.datasetId}
///       policyData: ${owner.policyData}
///   datasetDataset:
///     type: gcp:bigquery:Dataset
///     name: dataset
///     properties:
///       datasetId: example_dataset
/// variables:
///   owner:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigquery.dataOwner
///             members:
///               - user:jane@example.com
/// ```
///
///
/// ## With IAM condition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const owner = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/bigquery.dataOwner",
///         members: ["user:jane@example.com"],
///         condition: {
///             title: "expires_after_2029_12_31",
///             description: "Expiring at midnight of 2029-12-31",
///             expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///         },
///     }],
/// });
/// const datasetDataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const dataset = new gcp.bigquery.DatasetIamPolicy("dataset", {
///     datasetId: datasetDataset.datasetId,
///     policyData: owner.then(owner => owner.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// owner = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/bigquery.dataOwner",
///     "members": ["user:jane@example.com"],
///     "condition": {
///         "title": "expires_after_2029_12_31",
///         "description": "Expiring at midnight of 2029-12-31",
///         "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     },
/// }])
/// dataset_dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// dataset = gcp.bigquery.DatasetIamPolicy("dataset",
///     dataset_id=dataset_dataset.dataset_id,
///     policy_data=owner.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var owner = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/bigquery.dataOwner",
///                 Members = new[]
///                 {
///                     "user:jane@example.com",
///                 },
///                 Condition = new Gcp.Organizations.Inputs.GetIAMPolicyBindingConditionInputArgs
///                 {
///                     Title = "expires_after_2029_12_31",
///                     Description = "Expiring at midnight of 2029-12-31",
///                     Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///                 },
///             },
///         },
///     });
///
///     var datasetDataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var dataset = new Gcp.BigQuery.DatasetIamPolicy("dataset", new()
///     {
///         DatasetId = datasetDataset.DatasetId,
///         PolicyData = owner.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		owner, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/bigquery.dataOwner",
/// 					Members: []string{
/// 						"user:jane@example.com",
/// 					},
/// 					Condition: {
/// 						Title:       "expires_after_2029_12_31",
/// 						Description: pulumi.StringRef("Expiring at midnight of 2029-12-31"),
/// 						Expression:  "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		datasetDataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamPolicy(ctx, "dataset", &bigquery.DatasetIamPolicyArgs{
/// 			DatasetId:  datasetDataset.DatasetId,
/// 			PolicyData: pulumi.String(owner.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicy;
/// import com.pulumi.gcp.bigquery.DatasetIamPolicyArgs;
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
///         final var owner = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/bigquery.dataOwner")
///                 .members("user:jane@example.com")
///                 .condition(GetIAMPolicyBindingConditionArgs.builder()
///                     .title("expires_after_2029_12_31")
///                     .description("Expiring at midnight of 2029-12-31")
///                     .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
///                     .build())
///                 .build())
///             .build());
///
///         var datasetDataset = new Dataset("datasetDataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var dataset = new DatasetIamPolicy("dataset", DatasetIamPolicyArgs.builder()
///             .datasetId(datasetDataset.datasetId())
///             .policyData(owner.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:DatasetIamPolicy
///     properties:
///       datasetId: ${datasetDataset.datasetId}
///       policyData: ${owner.policyData}
///   datasetDataset:
///     type: gcp:bigquery:Dataset
///     name: dataset
///     properties:
///       datasetId: example_dataset
/// variables:
///   owner:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/bigquery.dataOwner
///             members:
///               - user:jane@example.com
///             condition:
///               title: expires_after_2029_12_31
///               description: Expiring at midnight of 2029-12-31
///               expression: request.time < timestamp("2030-01-01T00:00:00Z")
/// ```
///
///
/// ## gcp.bigquery.DatasetIamBinding
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataViewer",
///     members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataViewer",
///     members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataViewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataViewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataViewer")
///             .members("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reader:
///     type: gcp:bigquery:DatasetIamBinding
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataViewer
///       members:
///         - user:jane@example.com
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## With IAM condition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const reader = new gcp.bigquery.DatasetIamBinding("reader", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataViewer",
///     members: ["user:jane@example.com"],
///     condition: {
///         title: "expires_after_2029_12_31",
///         description: "Expiring at midnight of 2029-12-31",
///         expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// reader = gcp.bigquery.DatasetIamBinding("reader",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataViewer",
///     members=["user:jane@example.com"],
///     condition={
///         "title": "expires_after_2029_12_31",
///         "description": "Expiring at midnight of 2029-12-31",
///         "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var reader = new Gcp.BigQuery.DatasetIamBinding("reader", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataViewer",
///         Members = new[]
///         {
///             "user:jane@example.com",
///         },
///         Condition = new Gcp.BigQuery.Inputs.DatasetIamBindingConditionArgs
///         {
///             Title = "expires_after_2029_12_31",
///             Description = "Expiring at midnight of 2029-12-31",
///             Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamBinding(ctx, "reader", &bigquery.DatasetIamBindingArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataViewer"),
/// 			Members: pulumi.StringArray{
/// 				pulumi.String("user:jane@example.com"),
/// 			},
/// 			Condition: &bigquery.DatasetIamBindingConditionArgs{
/// 				Title:       pulumi.String("expires_after_2029_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamBinding;
/// import com.pulumi.gcp.bigquery.DatasetIamBindingArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamBindingConditionArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var reader = new DatasetIamBinding("reader", DatasetIamBindingArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataViewer")
///             .members("user:jane@example.com")
///             .condition(DatasetIamBindingConditionArgs.builder()
///                 .title("expires_after_2029_12_31")
///                 .description("Expiring at midnight of 2029-12-31")
///                 .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   reader:
///     type: gcp:bigquery:DatasetIamBinding
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataViewer
///       members:
///         - user:jane@example.com
///       condition:
///         title: expires_after_2029_12_31
///         description: Expiring at midnight of 2029-12-31
///         expression: request.time < timestamp("2030-01-01T00:00:00Z")
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## gcp.bigquery.DatasetIamMember
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataEditor",
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigquery:DatasetIamMember
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: user:jane@example.com
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## With IAM condition
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {datasetId: "example_dataset"});
/// const editor = new gcp.bigquery.DatasetIamMember("editor", {
///     datasetId: dataset.datasetId,
///     role: "roles/bigquery.dataEditor",
///     member: "user:jane@example.com",
///     condition: {
///         title: "expires_after_2029_12_31",
///         description: "Expiring at midnight of 2029-12-31",
///         expression: "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset", dataset_id="example_dataset")
/// editor = gcp.bigquery.DatasetIamMember("editor",
///     dataset_id=dataset.dataset_id,
///     role="roles/bigquery.dataEditor",
///     member="user:jane@example.com",
///     condition={
///         "title": "expires_after_2029_12_31",
///         "description": "Expiring at midnight of 2029-12-31",
///         "expression": "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///     });
///
///     var editor = new Gcp.BigQuery.DatasetIamMember("editor", new()
///     {
///         DatasetId = dataset.DatasetId,
///         Role = "roles/bigquery.dataEditor",
///         Member = "user:jane@example.com",
///         Condition = new Gcp.BigQuery.Inputs.DatasetIamMemberConditionArgs
///         {
///             Title = "expires_after_2029_12_31",
///             Description = "Expiring at midnight of 2029-12-31",
///             Expression = "request.time < timestamp(\"2030-01-01T00:00:00Z\")",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dataset, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId: pulumi.String("example_dataset"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDatasetIamMember(ctx, "editor", &bigquery.DatasetIamMemberArgs{
/// 			DatasetId: dataset.DatasetId,
/// 			Role:      pulumi.String("roles/bigquery.dataEditor"),
/// 			Member:    pulumi.String("user:jane@example.com"),
/// 			Condition: &bigquery.DatasetIamMemberConditionArgs{
/// 				Title:       pulumi.String("expires_after_2029_12_31"),
/// 				Description: pulumi.String("Expiring at midnight of 2029-12-31"),
/// 				Expression:  pulumi.String("request.time < timestamp(\"2030-01-01T00:00:00Z\")"),
/// 			},
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.DatasetIamMember;
/// import com.pulumi.gcp.bigquery.DatasetIamMemberArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetIamMemberConditionArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .build());
///
///         var editor = new DatasetIamMember("editor", DatasetIamMemberArgs.builder()
///             .datasetId(dataset.datasetId())
///             .role("roles/bigquery.dataEditor")
///             .member("user:jane@example.com")
///             .condition(DatasetIamMemberConditionArgs.builder()
///                 .title("expires_after_2029_12_31")
///                 .description("Expiring at midnight of 2029-12-31")
///                 .expression("request.time < timestamp(\"2030-01-01T00:00:00Z\")")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   editor:
///     type: gcp:bigquery:DatasetIamMember
///     properties:
///       datasetId: ${dataset.datasetId}
///       role: roles/bigquery.dataEditor
///       member: user:jane@example.com
///       condition:
///         title: expires_after_2029_12_31
///         description: Expiring at midnight of 2029-12-31
///         expression: request.time < timestamp("2030-01-01T00:00:00Z")
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
/// ```
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the BigQuery Dataset resource. For example:
///
/// * `projects/{{project_id}}/datasets/{{dataset_id}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = projects/{{project_id}}/datasets/{{dataset_id}}
///
/// to = google_bigquery_dataset_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:bigquery/datasetIamPolicy:DatasetIamPolicy default projects/{{project_id}}/datasets/{{dataset_id}}
/// ```
class DatasetIamPolicy extends pulumi.CustomResource {
  /// The dataset ID.
  late final pulumi.Output<String> datasetId;

  /// (Computed) The etag of the dataset's IAM policy.
  late final pulumi.Output<String> etag;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final pulumi.Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [DatasetIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetIamPolicy]. {@macro pulumi_bigquery_dataset_iam_policy_dataset_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetIamPolicy(
    String name, {
    DatasetIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigquery/datasetIamPolicy:DatasetIamPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [DatasetIamPolicy] resource's state with the given [name] and [id].
  static DatasetIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    DatasetIamPolicyState? state,
  }) {
    return DatasetIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DatasetIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:bigquery/datasetIamPolicy:DatasetIamPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datasetId = registerOutput<String>('datasetId');
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
  }
}
