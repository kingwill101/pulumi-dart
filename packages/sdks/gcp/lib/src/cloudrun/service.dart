import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_metadata.dart';
import 'service_state.dart';
import 'service_status.dart';
import 'service_template.dart';
import 'service_traffic.dart';

/// A Cloud Run service has a unique endpoint and autoscales containers.
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.services)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
///
/// &gt; **Warning:** We recommend using the `gcp.cloudrunv2.Service` resource which offers a better
/// developer experience and broader support of Cloud Run features.
///
/// ## Example Usage
///
/// ### Cloud Run Service Pubsub
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloud_run_service_name",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "gcr.io/cloudrun/hello",
///             }],
///         },
///     },
///     traffics: [{
///         percent: 100,
///         latestRevision: true,
///     }],
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "cloud-run-pubsub-invoker",
///     displayName: "Cloud Run Pub/Sub Invoker",
/// });
/// const binding = new gcp.cloudrun.IamBinding("binding", {
///     location: _default.location,
///     service: _default.name,
///     role: "roles/run.invoker",
///     members: [pulumi.interpolate`serviceAccount:${sa.email}`],
/// });
/// const project = new gcp.projects.IAMBinding("project", {
///     role: "roles/iam.serviceAccountTokenCreator",
///     members: [pulumi.interpolate`serviceAccount:${sa.email}`],
/// });
/// const topic = new gcp.pubsub.Topic("topic", {name: "pubsub_topic"});
/// const subscription = new gcp.pubsub.Subscription("subscription", {
///     name: "pubsub_subscription",
///     topic: topic.name,
///     pushConfig: {
///         pushEndpoint: _default.statuses[0].url,
///         oidcToken: {
///             serviceAccountEmail: sa.email,
///         },
///         attributes: {
///             "x-goog-version": "v1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloud_run_service_name",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "gcr.io/cloudrun/hello",
///             }],
///         },
///     },
///     traffics=[{
///         "percent": 100,
///         "latest_revision": True,
///     }])
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="cloud-run-pubsub-invoker",
///     display_name="Cloud Run Pub/Sub Invoker")
/// binding = gcp.cloudrun.IamBinding("binding",
///     location=default.location,
///     service=default.name,
///     role="roles/run.invoker",
///     members=[sa.email.apply(lambda email: f"serviceAccount:{email}")])
/// project = gcp.projects.IAMBinding("project",
///     role="roles/iam.serviceAccountTokenCreator",
///     members=[sa.email.apply(lambda email: f"serviceAccount:{email}")])
/// topic = gcp.pubsub.Topic("topic", name="pubsub_topic")
/// subscription = gcp.pubsub.Subscription("subscription",
///     name="pubsub_subscription",
///     topic=topic.name,
///     push_config={
///         "push_endpoint": default.statuses[0].url,
///         "oidc_token": {
///             "service_account_email": sa.email,
///         },
///         "attributes": {
///             "x-goog-version": "v1",
///         },
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
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloud_run_service_name",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "gcr.io/cloudrun/hello",
///                     },
///                 },
///             },
///         },
///         Traffics = new[]
///         {
///             new Gcp.CloudRun.Inputs.ServiceTrafficArgs
///             {
///                 Percent = 100,
///                 LatestRevision = true,
///             },
///         },
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "cloud-run-pubsub-invoker",
///         DisplayName = "Cloud Run Pub/Sub Invoker",
///     });
///
///     var binding = new Gcp.CloudRun.IamBinding("binding", new()
///     {
///         Location = @default.Location,
///         Service = @default.Name,
///         Role = "roles/run.invoker",
///         Members = new[]
///         {
///             sa.Email.Apply(email => $"serviceAccount:{email}"),
///         },
///     });
///
///     var project = new Gcp.Projects.IAMBinding("project", new()
///     {
///         Role = "roles/iam.serviceAccountTokenCreator",
///         Members = new[]
///         {
///             sa.Email.Apply(email => $"serviceAccount:{email}"),
///         },
///     });
///
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "pubsub_topic",
///     });
///
///     var subscription = new Gcp.PubSub.Subscription("subscription", new()
///     {
///         Name = "pubsub_subscription",
///         Topic = topic.Name,
///         PushConfig = new Gcp.PubSub.Inputs.SubscriptionPushConfigArgs
///         {
///             PushEndpoint = @default.Statuses.Apply(statuses => statuses[0].Url),
///             OidcToken = new Gcp.PubSub.Inputs.SubscriptionPushConfigOidcTokenArgs
///             {
///                 ServiceAccountEmail = sa.Email,
///             },
///             Attributes =
///             {
///                 { "x-goog-version", "v1" },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloud_run_service_name"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("gcr.io/cloudrun/hello"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Traffics: cloudrun.ServiceTrafficArray{
/// 				&cloudrun.ServiceTrafficArgs{
/// 					Percent:        pulumi.Int(100),
/// 					LatestRevision: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("cloud-run-pubsub-invoker"),
/// 			DisplayName: pulumi.String("Cloud Run Pub/Sub Invoker"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrun.NewIamBinding(ctx, "binding", &cloudrun.IamBindingArgs{
/// 			Location: _default.Location,
/// 			Service:  _default.Name,
/// 			Role:     pulumi.String("roles/run.invoker"),
/// 			Members: pulumi.StringArray{
/// 				sa.Email.ApplyT(func(email string) (string, error) {
/// 					return fmt.Sprintf("serviceAccount:%v", email), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMBinding(ctx, "project", &projects.IAMBindingArgs{
/// 			Role: pulumi.String("roles/iam.serviceAccountTokenCreator"),
/// 			Members: pulumi.StringArray{
/// 				sa.Email.ApplyT(func(email string) (string, error) {
/// 					return fmt.Sprintf("serviceAccount:%v", email), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("pubsub_topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pubsub.NewSubscription(ctx, "subscription", &pubsub.SubscriptionArgs{
/// 			Name:  pulumi.String("pubsub_subscription"),
/// 			Topic: topic.Name,
/// 			PushConfig: &pubsub.SubscriptionPushConfigArgs{
/// 				PushEndpoint: _default.Statuses.ApplyT(func(statuses []cloudrun.ServiceStatus) (*string, error) {
/// 					return statuses[0].Url, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				OidcToken: &pubsub.SubscriptionPushConfigOidcTokenArgs{
/// 					ServiceAccountEmail: sa.Email,
/// 				},
/// 				Attributes: pulumi.StringMap{
/// 					"x-goog-version": pulumi.String("v1"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloud_run_service_name"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "gcr.io/cloudrun/hello"
///       }]
///     }
///   }
///   traffics {
///     percent         = 100
///     latest_revision = true
///   }
/// }
/// resource "gcp_serviceaccount_account" "sa" {
///   account_id   = "cloud-run-pubsub-invoker"
///   display_name = "Cloud Run Pub/Sub Invoker"
/// }
/// resource "gcp_cloudrun_iambinding" "binding" {
///   location = gcp_cloudrun_service.default.location
///   service  = gcp_cloudrun_service.default.name
///   role     = "roles/run.invoker"
///   members  = ["serviceAccount:${gcp_serviceaccount_account.sa.email}"]
/// }
/// resource "gcp_projects_iambinding" "project" {
///   role    = "roles/iam.serviceAccountTokenCreator"
///   members = ["serviceAccount:${gcp_serviceaccount_account.sa.email}"]
/// }
/// resource "gcp_pubsub_topic" "topic" {
///   name = "pubsub_topic"
/// }
/// resource "gcp_pubsub_subscription" "subscription" {
///   name  = "pubsub_subscription"
///   topic = gcp_pubsub_topic.topic.name
///   push_config = {
///     push_endpoint = gcp_cloudrun_service.default.statuses[0].url
///     oidc_token = {
///       service_account_email = gcp_serviceaccount_account.sa.email
///     }
///     attributes = {
///       "x-goog-version" = "v1"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTrafficArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.cloudrun.IamBinding;
/// import com.pulumi.gcp.cloudrun.IamBindingArgs;
/// import com.pulumi.gcp.projects.IAMBinding;
/// import com.pulumi.gcp.projects.IAMBindingArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.Subscription;
/// import com.pulumi.gcp.pubsub.SubscriptionArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionPushConfigArgs;
/// import com.pulumi.gcp.pubsub.inputs.SubscriptionPushConfigOidcTokenArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloud_run_service_name")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("gcr.io/cloudrun/hello")
///                         .build())
///                     .build())
///                 .build())
///             .traffics(ServiceTrafficArgs.builder()
///                 .percent(100)
///                 .latestRevision(true)
///                 .build())
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("cloud-run-pubsub-invoker")
///             .displayName("Cloud Run Pub/Sub Invoker")
///             .build());
///
///         var binding = new IamBinding("binding", IamBindingArgs.builder()
///             .location(default_.location())
///             .service(default_.name())
///             .role("roles/run.invoker")
///             .members(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var project = new IAMBinding("project", IAMBindingArgs.builder()
///             .role("roles/iam.serviceAccountTokenCreator")
///             .members(sa.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("pubsub_topic")
///             .build());
///
///         var subscription = new Subscription("subscription", SubscriptionArgs.builder()
///             .name("pubsub_subscription")
///             .topic(topic.name())
///             .pushConfig(SubscriptionPushConfigArgs.builder()
///                 .pushEndpoint(default_.statuses().applyValue(_statuses -> _statuses.get(0).url()))
///                 .oidcToken(SubscriptionPushConfigOidcTokenArgs.builder()
///                     .serviceAccountEmail(sa.email())
///                     .build())
///                 .attributes(Map.of("x-goog-version", "v1"))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloud_run_service_name
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: gcr.io/cloudrun/hello
///       traffics:
///         - percent: 100
///           latestRevision: true
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: cloud-run-pubsub-invoker
///       displayName: Cloud Run Pub/Sub Invoker
///   binding:
///     type: gcp:cloudrun:IamBinding
///     properties:
///       location: ${default.location}
///       service: ${default.name}
///       role: roles/run.invoker
///       members:
///         - serviceAccount:${sa.email}
///   project:
///     type: gcp:projects:IAMBinding
///     properties:
///       role: roles/iam.serviceAccountTokenCreator
///       members:
///         - serviceAccount:${sa.email}
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: pubsub_topic
///   subscription:
///     type: gcp:pubsub:Subscription
///     properties:
///       name: pubsub_subscription
///       topic: ${topic.name}
///       pushConfig:
///         pushEndpoint: ${default.statuses[0].url}
///         oidcToken:
///           serviceAccountEmail: ${sa.email}
///         attributes:
///           x-goog-version: v1
/// ```
///
///
/// ### Cloud Run Service Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     },
///     traffics: [{
///         percent: 100,
///         latestRevision: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     },
///     traffics=[{
///         "percent": 100,
///         "latest_revision": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                     },
///                 },
///             },
///         },
///         Traffics = new[]
///         {
///             new Gcp.CloudRun.Inputs.ServiceTrafficArgs
///             {
///                 Percent = 100,
///                 LatestRevision = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Traffics: cloudrun.ServiceTrafficArray{
/// 				&cloudrun.ServiceTrafficArgs{
/// 					Percent:        pulumi.Int(100),
/// 					LatestRevision: pulumi.Bool(true),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///       }]
///     }
///   }
///   traffics {
///     percent         = 100
///     latest_revision = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTrafficArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .build())
///                     .build())
///                 .build())
///             .traffics(ServiceTrafficArgs.builder()
///                 .percent(100)
///                 .latestRevision(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///       traffics:
///         - percent: 100
///           latestRevision: true
/// ```
///
/// ### Cloud Run Service Gpu
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     template: {
///         metadata: {
///             annotations: {
///                 "autoscaling.knative.dev/maxScale": "1",
///                 "run.googleapis.com/cpu-throttling": "false",
///                 "run.googleapis.com/gpu-zonal-redundancy-disabled": "true",
///             },
///         },
///         spec: {
///             containers: [{
///                 image: "gcr.io/cloudrun/hello",
///                 resources: {
///                     limits: {
///                         cpu: "4",
///                         memory: "16Gi",
///                         "nvidia.com/gpu": "1",
///                     },
///                 },
///             }],
///             nodeSelector: {
///                 "run.googleapis.com/accelerator": "nvidia-l4",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     template={
///         "metadata": {
///             "annotations": {
///                 "autoscaling.knative.dev/maxScale": "1",
///                 "run.googleapis.com/cpu-throttling": "false",
///                 "run.googleapis.com/gpu-zonal-redundancy-disabled": "true",
///             },
///         },
///         "spec": {
///             "containers": [{
///                 "image": "gcr.io/cloudrun/hello",
///                 "resources": {
///                     "limits": {
///                         "cpu": "4",
///                         "memory": "16Gi",
///                         "nvidia.com/gpu": "1",
///                     },
///                 },
///             }],
///             "node_selector": {
///                 "run.googleapis.com/accelerator": "nvidia-l4",
///             },
///         },
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
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Metadata = new Gcp.CloudRun.Inputs.ServiceTemplateMetadataArgs
///             {
///                 Annotations =
///                 {
///                     { "autoscaling.knative.dev/maxScale", "1" },
///                     { "run.googleapis.com/cpu-throttling", "false" },
///                     { "run.googleapis.com/gpu-zonal-redundancy-disabled", "true" },
///                 },
///             },
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "gcr.io/cloudrun/hello",
///                         Resources = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerResourcesArgs
///                         {
///                             Limits =
///                             {
///                                 { "cpu", "4" },
///                                 { "memory", "16Gi" },
///                                 { "nvidia.com/gpu", "1" },
///                             },
///                         },
///                     },
///                 },
///                 NodeSelector =
///                 {
///                     { "run.googleapis.com/accelerator", "nvidia-l4" },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Metadata: &cloudrun.ServiceTemplateMetadataArgs{
/// 					Annotations: pulumi.StringMap{
/// 						"autoscaling.knative.dev/maxScale":                 pulumi.String("1"),
/// 						"run.googleapis.com/cpu-throttling":                pulumi.String("false"),
/// 						"run.googleapis.com/gpu-zonal-redundancy-disabled": pulumi.String("true"),
/// 					},
/// 				},
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("gcr.io/cloudrun/hello"),
/// 							Resources: &cloudrun.ServiceTemplateSpecContainerResourcesArgs{
/// 								Limits: pulumi.StringMap{
/// 									"cpu":            pulumi.String("4"),
/// 									"memory":         pulumi.String("16Gi"),
/// 									"nvidia.com/gpu": pulumi.String("1"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					NodeSelector: pulumi.StringMap{
/// 						"run.googleapis.com/accelerator": pulumi.String("nvidia-l4"),
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   template = {
///     metadata = {
///       annotations = {
///         "autoscaling.knative.dev/maxScale"                 = "1"
///         "run.googleapis.com/cpu-throttling"                = "false"
///         "run.googleapis.com/gpu-zonal-redundancy-disabled" = "true"
///       }
///     }
///     spec = {
///       containers = [{
///         "image" = "gcr.io/cloudrun/hello"
///         "resources" = {
///           "limits" = {
///             "cpu"            = "4"
///             "memory"         = "16Gi"
///             "nvidia.com/gpu" = "1"
///           }
///         }
///       }]
///       node_selector = {
///         "run.googleapis.com/accelerator" = "nvidia-l4"
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateMetadataArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerResourcesArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .metadata(ServiceTemplateMetadataArgs.builder()
///                     .annotations(Map.ofEntries(
///                         Map.entry("autoscaling.knative.dev/maxScale", "1"),
///                         Map.entry("run.googleapis.com/cpu-throttling", "false"),
///                         Map.entry("run.googleapis.com/gpu-zonal-redundancy-disabled", "true")
///                     ))
///                     .build())
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("gcr.io/cloudrun/hello")
///                         .resources(ServiceTemplateSpecContainerResourcesArgs.builder()
///                             .limits(Map.ofEntries(
///                                 Map.entry("cpu", "4"),
///                                 Map.entry("memory", "16Gi"),
///                                 Map.entry("nvidia.com/gpu", "1")
///                             ))
///                             .build())
///                         .build())
///                     .nodeSelector(Map.of("run.googleapis.com/accelerator", "nvidia-l4"))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       template:
///         metadata:
///           annotations:
///             autoscaling.knative.dev/maxScale: '1'
///             run.googleapis.com/cpu-throttling: 'false'
///             run.googleapis.com/gpu-zonal-redundancy-disabled: 'true'
///         spec:
///           containers:
///             - image: gcr.io/cloudrun/hello
///               resources:
///                 limits:
///                   cpu: '4'
///                   memory: 16Gi
///                   nvidia.com/gpu: '1'
///           nodeSelector:
///             run.googleapis.com/accelerator: nvidia-l4
/// ```
///
/// ### Cloud Run Service Sql
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.sql.DatabaseInstance("instance", {
///     name: "cloudrun-sql",
///     region: "us-east1",
///     databaseVersion: "MYSQL_5_7",
///     settings: {
///         tier: "db-f1-micro",
///     },
///     deletionProtection: true,
/// });
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///         metadata: {
///             annotations: {
///                 "autoscaling.knative.dev/maxScale": "1000",
///                 "run.googleapis.com/cloudsql-instances": instance.connectionName,
///                 "run.googleapis.com/client-name": "demo",
///             },
///         },
///     },
///     autogenerateRevisionName: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.sql.DatabaseInstance("instance",
///     name="cloudrun-sql",
///     region="us-east1",
///     database_version="MYSQL_5_7",
///     settings={
///         "tier": "db-f1-micro",
///     },
///     deletion_protection=True)
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///         "metadata": {
///             "annotations": {
///                 "autoscaling.knative.dev/maxScale": "1000",
///                 "run.googleapis.com/cloudsql-instances": instance.connection_name,
///                 "run.googleapis.com/client-name": "demo",
///             },
///         },
///     },
///     autogenerate_revision_name=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.Sql.DatabaseInstance("instance", new()
///     {
///         Name = "cloudrun-sql",
///         Region = "us-east1",
///         DatabaseVersion = "MYSQL_5_7",
///         Settings = new Gcp.Sql.Inputs.DatabaseInstanceSettingsArgs
///         {
///             Tier = "db-f1-micro",
///         },
///         DeletionProtection = true,
///     });
///
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                     },
///                 },
///             },
///             Metadata = new Gcp.CloudRun.Inputs.ServiceTemplateMetadataArgs
///             {
///                 Annotations =
///                 {
///                     { "autoscaling.knative.dev/maxScale", "1000" },
///                     { "run.googleapis.com/cloudsql-instances", instance.ConnectionName },
///                     { "run.googleapis.com/client-name", "demo" },
///                 },
///             },
///         },
///         AutogenerateRevisionName = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := sql.NewDatabaseInstance(ctx, "instance", &sql.DatabaseInstanceArgs{
/// 			Name:            pulumi.String("cloudrun-sql"),
/// 			Region:          pulumi.String("us-east1"),
/// 			DatabaseVersion: pulumi.String("MYSQL_5_7"),
/// 			Settings: &sql.DatabaseInstanceSettingsArgs{
/// 				Tier: pulumi.String("db-f1-micro"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 						},
/// 					},
/// 				},
/// 				Metadata: &cloudrun.ServiceTemplateMetadataArgs{
/// 					Annotations: pulumi.StringMap{
/// 						"autoscaling.knative.dev/maxScale":      pulumi.String("1000"),
/// 						"run.googleapis.com/cloudsql-instances": instance.ConnectionName,
/// 						"run.googleapis.com/client-name":        pulumi.String("demo"),
/// 					},
/// 				},
/// 			},
/// 			AutogenerateRevisionName: pulumi.Bool(true),
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
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///       }]
///     }
///     metadata = {
///       annotations = {
///         "autoscaling.knative.dev/maxScale"      = "1000"
///         "run.googleapis.com/cloudsql-instances" = gcp_sql_databaseinstance.instance.connection_name
///         "run.googleapis.com/client-name"        = "demo"
///       }
///     }
///   }
///   autogenerate_revision_name = true
/// }
/// resource "gcp_sql_databaseinstance" "instance" {
///   name             = "cloudrun-sql"
///   region           = "us-east1"
///   database_version = "MYSQL_5_7"
///   settings = {
///     tier = "db-f1-micro"
///   }
///   deletion_protection = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.sql.DatabaseInstance;
/// import com.pulumi.gcp.sql.DatabaseInstanceArgs;
/// import com.pulumi.gcp.sql.inputs.DatabaseInstanceSettingsArgs;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateMetadataArgs;
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
///         var instance = new DatabaseInstance("instance", DatabaseInstanceArgs.builder()
///             .name("cloudrun-sql")
///             .region("us-east1")
///             .databaseVersion("MYSQL_5_7")
///             .settings(DatabaseInstanceSettingsArgs.builder()
///                 .tier("db-f1-micro")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .build())
///                     .build())
///                 .metadata(ServiceTemplateMetadataArgs.builder()
///                     .annotations(Map.ofEntries(
///                         Map.entry("autoscaling.knative.dev/maxScale", "1000"),
///                         Map.entry("run.googleapis.com/cloudsql-instances", instance.connectionName()),
///                         Map.entry("run.googleapis.com/client-name", "demo")
///                     ))
///                     .build())
///                 .build())
///             .autogenerateRevisionName(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///         metadata:
///           annotations:
///             autoscaling.knative.dev/maxScale: '1000'
///             run.googleapis.com/cloudsql-instances: ${instance.connectionName}
///             run.googleapis.com/client-name: demo
///       autogenerateRevisionName: true
///   instance:
///     type: gcp:sql:DatabaseInstance
///     properties:
///       name: cloudrun-sql
///       region: us-east1
///       databaseVersion: MYSQL_5_7
///       settings:
///         tier: db-f1-micro
///       deletionProtection: true
/// ```
///
/// ### Cloud Run Service Noauth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     },
/// });
/// const noauth = gcp.organizations.getIAMPolicy({
///     bindings: [{
///         role: "roles/run.invoker",
///         members: ["allUsers"],
///     }],
/// });
/// const noauthIamPolicy = new gcp.cloudrun.IamPolicy("noauth", {
///     location: _default.location,
///     project: _default.project,
///     service: _default.name,
///     policyData: noauth.then(noauth => noauth.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///             }],
///         },
///     })
/// noauth = gcp.organizations.get_iam_policy(bindings=[{
///     "role": "roles/run.invoker",
///     "members": ["allUsers"],
/// }])
/// noauth_iam_policy = gcp.cloudrun.IamPolicy("noauth",
///     location=default.location,
///     project=default.project,
///     service=default.name,
///     policy_data=noauth.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                     },
///                 },
///             },
///         },
///     });
///
///     var noauth = Gcp.Organizations.GetIAMPolicy.Invoke(new()
///     {
///         Bindings = new[]
///         {
///             new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
///             {
///                 Role = "roles/run.invoker",
///                 Members = new[]
///                 {
///                     "allUsers",
///                 },
///             },
///         },
///     });
///
///     var noauthIamPolicy = new Gcp.CloudRun.IamPolicy("noauth", new()
///     {
///         Location = @default.Location,
///         Project = @default.Project,
///         Service = @default.Name,
///         PolicyData = noauth.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		noauth, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// 			Bindings: []organizations.GetIAMPolicyBinding{
/// 				{
/// 					Role: "roles/run.invoker",
/// 					Members: []string{
/// 						"allUsers",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudrun.NewIamPolicy(ctx, "noauth", &cloudrun.IamPolicyArgs{
/// 			Location:   _default.Location,
/// 			Project:    _default.Project,
/// 			Service:    _default.Name,
/// 			PolicyData: pulumi.String(noauth.PolicyData),
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
/// data "gcp_organizations_getiampolicy" "noauth" {
///   bindings {
///     role    = "roles/run.invoker"
///     members = ["allUsers"]
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///       }]
///     }
///   }
/// }
/// resource "gcp_cloudrun_iampolicy" "noauth" {
///   location    = gcp_cloudrun_service.default.location
///   project     = gcp_cloudrun_service.default.project
///   service     = gcp_cloudrun_service.default.name
///   policy_data = data.gcp_organizations_getiampolicy.noauth.policy_data
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyBindingArgs;
/// import com.pulumi.gcp.cloudrun.IamPolicy;
/// import com.pulumi.gcp.cloudrun.IamPolicyArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         final var noauth = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
///             .bindings(GetIAMPolicyBindingArgs.builder()
///                 .role("roles/run.invoker")
///                 .members("allUsers")
///                 .build())
///             .build());
///
///         var noauthIamPolicy = new IamPolicy("noauthIamPolicy", IamPolicyArgs.builder()
///             .location(default_.location())
///             .project(default_.project())
///             .service(default_.name())
///             .policyData(noauth.policyData())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///   noauthIamPolicy:
///     type: gcp:cloudrun:IamPolicy
///     name: noauth
///     properties:
///       location: ${default.location}
///       project: ${default.project}
///       service: ${default.name}
///       policyData: ${noauth.policyData}
/// variables:
///   noauth:
///     fn::invoke:
///       function: gcp:organizations:getIAMPolicy
///       arguments:
///         bindings:
///           - role: roles/run.invoker
///             members:
///               - allUsers
/// ```
///
/// ### Cloud Run Service Probes
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///                 startupProbe: {
///                     initialDelaySeconds: 0,
///                     timeoutSeconds: 1,
///                     periodSeconds: 3,
///                     failureThreshold: 1,
///                     tcpSocket: {
///                         port: 8080,
///                     },
///                 },
///                 livenessProbe: {
///                     httpGet: {
///                         path: "/",
///                     },
///                 },
///             }],
///         },
///     },
///     traffics: [{
///         percent: 100,
///         latestRevision: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///                 "startup_probe": {
///                     "initial_delay_seconds": 0,
///                     "timeout_seconds": 1,
///                     "period_seconds": 3,
///                     "failure_threshold": 1,
///                     "tcp_socket": {
///                         "port": 8080,
///                     },
///                 },
///                 "liveness_probe": {
///                     "http_get": {
///                         "path": "/",
///                     },
///                 },
///             }],
///         },
///     },
///     traffics=[{
///         "percent": 100,
///         "latest_revision": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                         StartupProbe = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerStartupProbeArgs
///                         {
///                             InitialDelaySeconds = 0,
///                             TimeoutSeconds = 1,
///                             PeriodSeconds = 3,
///                             FailureThreshold = 1,
///                             TcpSocket = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerStartupProbeTcpSocketArgs
///                             {
///                                 Port = 8080,
///                             },
///                         },
///                         LivenessProbe = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerLivenessProbeArgs
///                         {
///                             HttpGet = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerLivenessProbeHttpGetArgs
///                             {
///                                 Path = "/",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Traffics = new[]
///         {
///             new Gcp.CloudRun.Inputs.ServiceTrafficArgs
///             {
///                 Percent = 100,
///                 LatestRevision = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 							StartupProbe: &cloudrun.ServiceTemplateSpecContainerStartupProbeArgs{
/// 								InitialDelaySeconds: pulumi.Int(0),
/// 								TimeoutSeconds:      pulumi.Int(1),
/// 								PeriodSeconds:       pulumi.Int(3),
/// 								FailureThreshold:    pulumi.Int(1),
/// 								TcpSocket: &cloudrun.ServiceTemplateSpecContainerStartupProbeTcpSocketArgs{
/// 									Port: pulumi.Int(8080),
/// 								},
/// 							},
/// 							LivenessProbe: &cloudrun.ServiceTemplateSpecContainerLivenessProbeArgs{
/// 								HttpGet: &cloudrun.ServiceTemplateSpecContainerLivenessProbeHttpGetArgs{
/// 									Path: pulumi.String("/"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Traffics: cloudrun.ServiceTrafficArray{
/// 				&cloudrun.ServiceTrafficArgs{
/// 					Percent:        pulumi.Int(100),
/// 					LatestRevision: pulumi.Bool(true),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///         "startupProbe" = {
///           "initialDelaySeconds" = 0
///           "timeoutSeconds"      = 1
///           "periodSeconds"       = 3
///           "failureThreshold"    = 1
///           "tcpSocket" = {
///             "port" = 8080
///           }
///         }
///         "livenessProbe" = {
///           "httpGet" = {
///             "path" = "/"
///           }
///         }
///       }]
///     }
///   }
///   traffics {
///     percent         = 100
///     latest_revision = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerStartupProbeArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerStartupProbeTcpSocketArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerLivenessProbeArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerLivenessProbeHttpGetArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTrafficArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .startupProbe(ServiceTemplateSpecContainerStartupProbeArgs.builder()
///                             .initialDelaySeconds(0)
///                             .timeoutSeconds(1)
///                             .periodSeconds(3)
///                             .failureThreshold(1)
///                             .tcpSocket(ServiceTemplateSpecContainerStartupProbeTcpSocketArgs.builder()
///                                 .port(8080)
///                                 .build())
///                             .build())
///                         .livenessProbe(ServiceTemplateSpecContainerLivenessProbeArgs.builder()
///                             .httpGet(ServiceTemplateSpecContainerLivenessProbeHttpGetArgs.builder()
///                                 .path("/")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .traffics(ServiceTrafficArgs.builder()
///                 .percent(100)
///                 .latestRevision(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///               startupProbe:
///                 initialDelaySeconds: 0
///                 timeoutSeconds: 1
///                 periodSeconds: 3
///                 failureThreshold: 1
///                 tcpSocket:
///                   port: 8080
///               livenessProbe:
///                 httpGet:
///                   path: /
///       traffics:
///         - percent: 100
///           latestRevision: true
/// ```
///
/// ### Cloud Run Service Readiness Probe
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv-rp",
///     location: "us-central1",
///     template: {
///         spec: {
///             containers: [{
///                 image: "us-docker.pkg.dev/cloudrun/container/hello",
///                 readinessProbe: {
///                     timeoutSeconds: 20,
///                     periodSeconds: 30,
///                     successThreshold: 3,
///                     failureThreshold: 2,
///                     grpc: {
///                         port: 8080,
///                     },
///                 },
///             }],
///         },
///     },
///     traffics: [{
///         percent: 100,
///         latestRevision: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv-rp",
///     location="us-central1",
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "us-docker.pkg.dev/cloudrun/container/hello",
///                 "readiness_probe": {
///                     "timeout_seconds": 20,
///                     "period_seconds": 30,
///                     "success_threshold": 3,
///                     "failure_threshold": 2,
///                     "grpc": {
///                         "port": 8080,
///                     },
///                 },
///             }],
///         },
///     },
///     traffics=[{
///         "percent": 100,
///         "latest_revision": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv-rp",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                         ReadinessProbe = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerReadinessProbeArgs
///                         {
///                             TimeoutSeconds = 20,
///                             PeriodSeconds = 30,
///                             SuccessThreshold = 3,
///                             FailureThreshold = 2,
///                             Grpc = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerReadinessProbeGrpcArgs
///                             {
///                                 Port = 8080,
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Traffics = new[]
///         {
///             new Gcp.CloudRun.Inputs.ServiceTrafficArgs
///             {
///                 Percent = 100,
///                 LatestRevision = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv-rp"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 							ReadinessProbe: &cloudrun.ServiceTemplateSpecContainerReadinessProbeArgs{
/// 								TimeoutSeconds:   pulumi.Int(20),
/// 								PeriodSeconds:    pulumi.Int(30),
/// 								SuccessThreshold: pulumi.Int(3),
/// 								FailureThreshold: pulumi.Int(2),
/// 								Grpc: &cloudrun.ServiceTemplateSpecContainerReadinessProbeGrpcArgs{
/// 									Port: pulumi.Int(8080),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Traffics: cloudrun.ServiceTrafficArray{
/// 				&cloudrun.ServiceTrafficArgs{
/// 					Percent:        pulumi.Int(100),
/// 					LatestRevision: pulumi.Bool(true),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv-rp"
///   location = "us-central1"
///   template = {
///     spec = {
///       containers = [{
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///         "readinessProbe" = {
///           "timeoutSeconds"   = 20
///           "periodSeconds"    = 30
///           "successThreshold" = 3
///           "failureThreshold" = 2
///           "grpc" = {
///             "port" = 8080
///           }
///         }
///       }]
///     }
///   }
///   traffics {
///     percent         = 100
///     latest_revision = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerReadinessProbeArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerReadinessProbeGrpcArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTrafficArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv-rp")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("us-docker.pkg.dev/cloudrun/container/hello")
///                         .readinessProbe(ServiceTemplateSpecContainerReadinessProbeArgs.builder()
///                             .timeoutSeconds(20)
///                             .periodSeconds(30)
///                             .successThreshold(3)
///                             .failureThreshold(2)
///                             .grpc(ServiceTemplateSpecContainerReadinessProbeGrpcArgs.builder()
///                                 .port(8080)
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .traffics(ServiceTrafficArgs.builder()
///                 .percent(100)
///                 .latestRevision(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv-rp
///       location: us-central1
///       template:
///         spec:
///           containers:
///             - image: us-docker.pkg.dev/cloudrun/container/hello
///               readinessProbe:
///                 timeoutSeconds: 20
///                 periodSeconds: 30
///                 successThreshold: 3
///                 failureThreshold: 2
///                 grpc:
///                   port: 8080
///       traffics:
///         - percent: 100
///           latestRevision: true
/// ```
///
/// ### Cloud Run Service Multicontainer
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     template: {
///         metadata: {
///             annotations: {
///                 "run.googleapis.com/container-dependencies": JSON.stringify({
///                     "hello-1": ["hello-2"],
///                 }),
///             },
///         },
///         spec: {
///             containers: [
///                 {
///                     name: "hello-1",
///                     ports: [{
///                         containerPort: 8080,
///                     }],
///                     image: "us-docker.pkg.dev/cloudrun/container/hello",
///                     volumeMounts: [{
///                         name: "shared-volume",
///                         mountPath: "/mnt/shared",
///                     }],
///                 },
///                 {
///                     name: "hello-2",
///                     image: "us-docker.pkg.dev/cloudrun/container/hello",
///                     envs: [{
///                         name: "PORT",
///                         value: "8081",
///                     }],
///                     startupProbe: {
///                         httpGet: {
///                             port: 8081,
///                         },
///                     },
///                     volumeMounts: [{
///                         name: "shared-volume",
///                         mountPath: "/mnt/shared",
///                     }],
///                 },
///             ],
///             volumes: [{
///                 name: "shared-volume",
///                 emptyDir: {
///                     medium: "Memory",
///                     sizeLimit: "128Mi",
///                 },
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     template={
///         "metadata": {
///             "annotations": {
///                 "run.googleapis.com/container-dependencies": json.dumps({
///                     "hello-1": ["hello-2"],
///                 }),
///             },
///         },
///         "spec": {
///             "containers": [
///                 {
///                     "name": "hello-1",
///                     "ports": [{
///                         "container_port": 8080,
///                     }],
///                     "image": "us-docker.pkg.dev/cloudrun/container/hello",
///                     "volume_mounts": [{
///                         "name": "shared-volume",
///                         "mount_path": "/mnt/shared",
///                     }],
///                 },
///                 {
///                     "name": "hello-2",
///                     "image": "us-docker.pkg.dev/cloudrun/container/hello",
///                     "envs": [{
///                         "name": "PORT",
///                         "value": "8081",
///                     }],
///                     "startup_probe": {
///                         "http_get": {
///                             "port": 8081,
///                         },
///                     },
///                     "volume_mounts": [{
///                         "name": "shared-volume",
///                         "mount_path": "/mnt/shared",
///                     }],
///                 },
///             ],
///             "volumes": [{
///                 "name": "shared-volume",
///                 "empty_dir": {
///                     "medium": "Memory",
///                     "size_limit": "128Mi",
///                 },
///             }],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Metadata = new Gcp.CloudRun.Inputs.ServiceTemplateMetadataArgs
///             {
///                 Annotations =
///                 {
///                     { "run.googleapis.com/container-dependencies", JsonSerializer.Serialize(new Dictionary<string, object?>
///                     {
///                         ["hello-1"] = new[]
///                         {
///                             "hello-2",
///                         },
///                     }) },
///                 },
///             },
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Name = "hello-1",
///                         Ports = new[]
///                         {
///                             new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerPortArgs
///                             {
///                                 ContainerPort = 8080,
///                             },
///                         },
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                         VolumeMounts = new[]
///                         {
///                             new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerVolumeMountArgs
///                             {
///                                 Name = "shared-volume",
///                                 MountPath = "/mnt/shared",
///                             },
///                         },
///                     },
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Name = "hello-2",
///                         Image = "us-docker.pkg.dev/cloudrun/container/hello",
///                         Envs = new[]
///                         {
///                             new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerEnvArgs
///                             {
///                                 Name = "PORT",
///                                 Value = "8081",
///                             },
///                         },
///                         StartupProbe = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerStartupProbeArgs
///                         {
///                             HttpGet = new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerStartupProbeHttpGetArgs
///                             {
///                                 Port = 8081,
///                             },
///                         },
///                         VolumeMounts = new[]
///                         {
///                             new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerVolumeMountArgs
///                             {
///                                 Name = "shared-volume",
///                                 MountPath = "/mnt/shared",
///                             },
///                         },
///                     },
///                 },
///                 Volumes = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecVolumeArgs
///                     {
///                         Name = "shared-volume",
///                         EmptyDir = new Gcp.CloudRun.Inputs.ServiceTemplateSpecVolumeEmptyDirArgs
///                         {
///                             Medium = "Memory",
///                             SizeLimit = "128Mi",
///                         },
///                     },
///                 },
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string][]string{
/// 			"hello-1": []string{
/// 				"hello-2",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Metadata: &cloudrun.ServiceTemplateMetadataArgs{
/// 					Annotations: pulumi.StringMap{
/// 						"run.googleapis.com/container-dependencies": pulumi.String(json0),
/// 					},
/// 				},
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Name: pulumi.String("hello-1"),
/// 							Ports: cloudrun.ServiceTemplateSpecContainerPortArray{
/// 								&cloudrun.ServiceTemplateSpecContainerPortArgs{
/// 									ContainerPort: pulumi.Int(8080),
/// 								},
/// 							},
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 							VolumeMounts: cloudrun.ServiceTemplateSpecContainerVolumeMountArray{
/// 								&cloudrun.ServiceTemplateSpecContainerVolumeMountArgs{
/// 									Name:      pulumi.String("shared-volume"),
/// 									MountPath: pulumi.String("/mnt/shared"),
/// 								},
/// 							},
/// 						},
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Name:  pulumi.String("hello-2"),
/// 							Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 							Envs: cloudrun.ServiceTemplateSpecContainerEnvArray{
/// 								&cloudrun.ServiceTemplateSpecContainerEnvArgs{
/// 									Name:  pulumi.String("PORT"),
/// 									Value: pulumi.String("8081"),
/// 								},
/// 							},
/// 							StartupProbe: &cloudrun.ServiceTemplateSpecContainerStartupProbeArgs{
/// 								HttpGet: &cloudrun.ServiceTemplateSpecContainerStartupProbeHttpGetArgs{
/// 									Port: pulumi.Int(8081),
/// 								},
/// 							},
/// 							VolumeMounts: cloudrun.ServiceTemplateSpecContainerVolumeMountArray{
/// 								&cloudrun.ServiceTemplateSpecContainerVolumeMountArgs{
/// 									Name:      pulumi.String("shared-volume"),
/// 									MountPath: pulumi.String("/mnt/shared"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Volumes: cloudrun.ServiceTemplateSpecVolumeArray{
/// 						&cloudrun.ServiceTemplateSpecVolumeArgs{
/// 							Name: pulumi.String("shared-volume"),
/// 							EmptyDir: &cloudrun.ServiceTemplateSpecVolumeEmptyDirArgs{
/// 								Medium:    pulumi.String("Memory"),
/// 								SizeLimit: pulumi.String("128Mi"),
/// 							},
/// 						},
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   template = {
///     metadata = {
///       annotations = {
///         "run.googleapis.com/container-dependencies" = jsonencode({
///           "hello-1" = ["hello-2"]
///         })
///       }
///     }
///     spec = {
///       containers = [{
///         "name" = "hello-1"
///         "ports" = [{
///           "containerPort" = 8080
///         }]
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///         "volumeMounts" = [{
///           "name"      = "shared-volume"
///           "mountPath" = "/mnt/shared"
///         }]
///         }, {
///         "name"  = "hello-2"
///         "image" = "us-docker.pkg.dev/cloudrun/container/hello"
///         "envs" = [{
///           "name"  = "PORT"
///           "value" = "8081"
///         }]
///         "startupProbe" = {
///           "httpGet" = {
///             "port" = 8081
///           }
///         }
///         "volumeMounts" = [{
///           "name"      = "shared-volume"
///           "mountPath" = "/mnt/shared"
///         }]
///       }]
///       volumes = [{
///         "name" = "shared-volume"
///         "emptyDir" = {
///           "medium"    = "Memory"
///           "sizeLimit" = "128Mi"
///         }
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateMetadataArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerPortArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerVolumeMountArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerEnvArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerStartupProbeArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerStartupProbeHttpGetArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecVolumeArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecVolumeEmptyDirArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .template(ServiceTemplateArgs.builder()
///                 .metadata(ServiceTemplateMetadataArgs.builder()
///                     .annotations(Map.of("run.googleapis.com/container-dependencies", serializeJson(
///                         jsonObject(
///                             jsonProperty("hello-1", jsonArray("hello-2"))
///                         ))))
///                     .build())
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(
///                         ServiceTemplateSpecContainerArgs.builder()
///                             .name("hello-1")
///                             .ports(ServiceTemplateSpecContainerPortArgs.builder()
///                                 .containerPort(8080)
///                                 .build())
///                             .image("us-docker.pkg.dev/cloudrun/container/hello")
///                             .volumeMounts(ServiceTemplateSpecContainerVolumeMountArgs.builder()
///                                 .name("shared-volume")
///                                 .mountPath("/mnt/shared")
///                                 .build())
///                             .build(),
///                         ServiceTemplateSpecContainerArgs.builder()
///                             .name("hello-2")
///                             .image("us-docker.pkg.dev/cloudrun/container/hello")
///                             .envs(ServiceTemplateSpecContainerEnvArgs.builder()
///                                 .name("PORT")
///                                 .value("8081")
///                                 .build())
///                             .startupProbe(ServiceTemplateSpecContainerStartupProbeArgs.builder()
///                                 .httpGet(ServiceTemplateSpecContainerStartupProbeHttpGetArgs.builder()
///                                     .port(8081)
///                                     .build())
///                                 .build())
///                             .volumeMounts(ServiceTemplateSpecContainerVolumeMountArgs.builder()
///                                 .name("shared-volume")
///                                 .mountPath("/mnt/shared")
///                                 .build())
///                             .build())
///                     .volumes(ServiceTemplateSpecVolumeArgs.builder()
///                         .name("shared-volume")
///                         .emptyDir(ServiceTemplateSpecVolumeEmptyDirArgs.builder()
///                             .medium("Memory")
///                             .sizeLimit("128Mi")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       template:
///         metadata:
///           annotations:
///             run.googleapis.com/container-dependencies:
///               fn::toJSON:
///                 hello-1:
///                   - hello-2
///         spec:
///           containers:
///             - name: hello-1
///               ports:
///                 - containerPort: 8080
///               image: us-docker.pkg.dev/cloudrun/container/hello
///               volumeMounts:
///                 - name: shared-volume
///                   mountPath: /mnt/shared
///             - name: hello-2
///               image: us-docker.pkg.dev/cloudrun/container/hello
///               envs:
///                 - name: PORT
///                   value: '8081'
///               startupProbe:
///                 httpGet:
///                   port: 8081
///               volumeMounts:
///                 - name: shared-volume
///                   mountPath: /mnt/shared
///           volumes:
///             - name: shared-volume
///               emptyDir:
///                 medium: Memory
///                 sizeLimit: 128Mi
/// ```
///
/// ### Cloud Run Service Iap
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     metadata: {
///         annotations: {
///             "run.googleapis.com/iap-enabled": "true",
///         },
///     },
///     template: {
///         spec: {
///             containers: [{
///                 image: "gcr.io/cloudrun/hello",
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     metadata={
///         "annotations": {
///             "run.googleapis.com/iap-enabled": "true",
///         },
///     },
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "gcr.io/cloudrun/hello",
///             }],
///         },
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
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Metadata = new Gcp.CloudRun.Inputs.ServiceMetadataArgs
///         {
///             Annotations =
///             {
///                 { "run.googleapis.com/iap-enabled", "true" },
///             },
///         },
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "gcr.io/cloudrun/hello",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Metadata: &cloudrun.ServiceMetadataArgs{
/// 				Annotations: pulumi.StringMap{
/// 					"run.googleapis.com/iap-enabled": pulumi.String("true"),
/// 				},
/// 			},
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image: pulumi.String("gcr.io/cloudrun/hello"),
/// 						},
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   metadata = {
///     annotations = {
///       "run.googleapis.com/iap-enabled" = true
///     }
///   }
///   template = {
///     spec = {
///       containers = [{
///         "image" = "gcr.io/cloudrun/hello"
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceMetadataArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .metadata(ServiceMetadataArgs.builder()
///                 .annotations(Map.of("run.googleapis.com/iap-enabled", "true"))
///                 .build())
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("gcr.io/cloudrun/hello")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       metadata:
///         annotations:
///           run.googleapis.com/iap-enabled: true
///       template:
///         spec:
///           containers:
///             - image: gcr.io/cloudrun/hello
/// ```
///
/// ### Cloud Run Service Sandbox
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.cloudrun.Service("default", {
///     name: "cloudrun-srv",
///     location: "us-central1",
///     metadata: {
///         annotations: {
///             "run.googleapis.com/launch-stage": "BETA",
///         },
///     },
///     template: {
///         spec: {
///             containers: [{
///                 image: "gcr.io/cloudrun/hello",
///                 sandboxLauncher: true,
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.cloudrun.Service("default",
///     name="cloudrun-srv",
///     location="us-central1",
///     metadata={
///         "annotations": {
///             "run.googleapis.com/launch-stage": "BETA",
///         },
///     },
///     template={
///         "spec": {
///             "containers": [{
///                 "image": "gcr.io/cloudrun/hello",
///                 "sandbox_launcher": True,
///             }],
///         },
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
///     var @default = new Gcp.CloudRun.Service("default", new()
///     {
///         Name = "cloudrun-srv",
///         Location = "us-central1",
///         Metadata = new Gcp.CloudRun.Inputs.ServiceMetadataArgs
///         {
///             Annotations =
///             {
///                 { "run.googleapis.com/launch-stage", "BETA" },
///             },
///         },
///         Template = new Gcp.CloudRun.Inputs.ServiceTemplateArgs
///         {
///             Spec = new Gcp.CloudRun.Inputs.ServiceTemplateSpecArgs
///             {
///                 Containers = new[]
///                 {
///                     new Gcp.CloudRun.Inputs.ServiceTemplateSpecContainerArgs
///                     {
///                         Image = "gcr.io/cloudrun/hello",
///                         SandboxLauncher = true,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudrun"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudrun.NewService(ctx, "default", &cloudrun.ServiceArgs{
/// 			Name:     pulumi.String("cloudrun-srv"),
/// 			Location: pulumi.String("us-central1"),
/// 			Metadata: &cloudrun.ServiceMetadataArgs{
/// 				Annotations: pulumi.StringMap{
/// 					"run.googleapis.com/launch-stage": pulumi.String("BETA"),
/// 				},
/// 			},
/// 			Template: &cloudrun.ServiceTemplateArgs{
/// 				Spec: &cloudrun.ServiceTemplateSpecArgs{
/// 					Containers: cloudrun.ServiceTemplateSpecContainerArray{
/// 						&cloudrun.ServiceTemplateSpecContainerArgs{
/// 							Image:           pulumi.String("gcr.io/cloudrun/hello"),
/// 							SandboxLauncher: pulumi.Bool(true),
/// 						},
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_cloudrun_service" "default" {
///   name     = "cloudrun-srv"
///   location = "us-central1"
///   metadata = {
///     annotations = {
///       "run.googleapis.com/launch-stage" = "BETA"
///     }
///   }
///   template = {
///     spec = {
///       containers = [{
///         "image"           = "gcr.io/cloudrun/hello"
///         "sandboxLauncher" = true
///       }]
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudrun.Service;
/// import com.pulumi.gcp.cloudrun.ServiceArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceMetadataArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecArgs;
/// import com.pulumi.gcp.cloudrun.inputs.ServiceTemplateSpecContainerArgs;
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
///         var default_ = new Service("default", ServiceArgs.builder()
///             .name("cloudrun-srv")
///             .location("us-central1")
///             .metadata(ServiceMetadataArgs.builder()
///                 .annotations(Map.of("run.googleapis.com/launch-stage", "BETA"))
///                 .build())
///             .template(ServiceTemplateArgs.builder()
///                 .spec(ServiceTemplateSpecArgs.builder()
///                     .containers(ServiceTemplateSpecContainerArgs.builder()
///                         .image("gcr.io/cloudrun/hello")
///                         .sandboxLauncher(true)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:cloudrun:Service
///     properties:
///       name: cloudrun-srv
///       location: us-central1
///       metadata:
///         annotations:
///           run.googleapis.com/launch-stage: BETA
///       template:
///         spec:
///           containers:
///             - image: gcr.io/cloudrun/hello
///               sandboxLauncher: true
/// ```
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `locations/{{location}}/namespaces/{{project}}/services/{{name}}`
/// * `{{location}}/{{project}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudrun/service:Service default locations/{{location}}/namespaces/{{project}}/services/{{name}}
/// $ pulumi import gcp:cloudrun/service:Service default {{location}}/{{project}}/{{name}}
/// $ pulumi import gcp:cloudrun/service:Service default {{location}}/{{name}}
/// ```
class Service extends pulumi.CustomResource {
  /// If set to `true`, the revision name (template.metadata.name) will be omitted and
  /// autogenerated by Cloud Run. This cannot be set to `true` while `template.metadata.name`
  /// is also set.
  /// (For legacy support, if `template.metadata.name` is unset in state while
  /// this field is set to false, the revision name will still autogenerate.)
  late final pulumi.Output<bool?> autogenerateRevisionName;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The location of the cloud run instance. eg us-central1
  late final pulumi.Output<String> location;
  /// Metadata associated with this Service, including name, namespace, labels,
  /// and annotations.
  /// Structure is documented below.
  late final pulumi.Output<ServiceMetadata> metadata;
  /// Name must be unique within a Google Cloud project and region.
  /// Is required when creating resources. Name is primarily intended
  /// for creation idempotence and configuration definition. Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// (Output)
  /// Status of the condition, one of True, False, Unknown.
  late final pulumi.Output<List<ServiceStatus>> statuses;
  /// template holds the latest specification for the Revision to
  /// be stamped out. The template references the container image, and may also
  /// include labels and annotations that should be attached to the Revision.
  /// To correlate a Revision, and/or to force a Revision to be created when the
  /// spec doesn't otherwise change, a nonce label may be provided in the
  /// template metadata. For more details, see:
  /// https://github.com/knative/serving/blob/main/docs/client-conventions.md#associate-modifications-with-revisions
  /// Cloud Run does not currently support referencing a build that is
  /// responsible for materializing the container image from source.
  /// Structure is documented below.
  late final pulumi.Output<ServiceTemplate?> template;
  /// Traffic specifies how to distribute traffic over a collection of Knative Revisions
  /// and Configurations
  /// Structure is documented below.
  late final pulumi.Output<List<ServiceTraffic>> traffics;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_cloudrun_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrun/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    autogenerateRevisionName = registerOutput<bool?>('autogenerateRevisionName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    metadata = registerOutput<ServiceMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    statuses = registerOutput<List<ServiceStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceStatus>(guardedValue, (value) => ServiceStatus.fromMap((value as Map).cast<String, dynamic>())); });
    template = registerOutput<ServiceTemplate?>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    traffics = registerOutput<List<ServiceTraffic>>('traffics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceTraffic>(guardedValue, (value) => ServiceTraffic.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrun/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autogenerateRevisionName = registerOutput<bool?>('autogenerateRevisionName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    metadata = registerOutput<ServiceMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    statuses = registerOutput<List<ServiceStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceStatus>(guardedValue, (value) => ServiceStatus.fromMap((value as Map).cast<String, dynamic>())); });
    template = registerOutput<ServiceTemplate?>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    traffics = registerOutput<List<ServiceTraffic>>('traffics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceTraffic>(guardedValue, (value) => ServiceTraffic.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Service] resource.
  Service.reference(String urn)
    : super(
        'gcp:cloudrun/service:Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autogenerateRevisionName = registerOutput<bool?>('autogenerateRevisionName');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    metadata = registerOutput<ServiceMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    statuses = registerOutput<List<ServiceStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceStatus>(guardedValue, (value) => ServiceStatus.fromMap((value as Map).cast<String, dynamic>())); });
    template = registerOutput<ServiceTemplate?>('template', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    traffics = registerOutput<List<ServiceTraffic>>('traffics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceTraffic>(guardedValue, (value) => ServiceTraffic.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
