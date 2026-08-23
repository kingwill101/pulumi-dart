import 'package:pulumi/pulumi.dart' as pulumi;
import 'support_event_subscription_args.dart';
import 'support_event_subscription_state.dart';

/// A support event subscription for receiving notifications from Cloud Support API.
///
///
///
/// ## Example Usage
///
/// ### Cloud Support Event Subscription Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudsupport = new gcp.projects.Service("cloudsupport", {
///     project: "my-project-name",
///     service: "cloudsupport.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const supportTopic = new gcp.pubsub.Topic("support_topic", {
///     project: "my-project-name",
///     name: "test-topic-_88722",
/// });
/// const supportPublisher = new gcp.pubsub.TopicIAMMember("support_publisher", {
///     project: "my-project-name",
///     topic: supportTopic.id,
///     role: "roles/pubsub.publisher",
///     member: "serviceAccount:cloud-support-apievents@system.gserviceaccount.com",
/// });
/// const subscription = new gcp.cloudsupport.SupportEventSubscription("subscription", {
///     organization: "123456789",
///     pubSubTopic: supportTopic.id,
/// }, {
///     dependsOn: [
///         cloudsupport,
///         supportPublisher,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloudsupport = gcp.projects.Service("cloudsupport",
///     project="my-project-name",
///     service="cloudsupport.googleapis.com",
///     disable_on_destroy=False)
/// support_topic = gcp.pubsub.Topic("support_topic",
///     project="my-project-name",
///     name="test-topic-_88722")
/// support_publisher = gcp.pubsub.TopicIAMMember("support_publisher",
///     project="my-project-name",
///     topic=support_topic.id,
///     role="roles/pubsub.publisher",
///     member="serviceAccount:cloud-support-apievents@system.gserviceaccount.com")
/// subscription = gcp.cloudsupport.SupportEventSubscription("subscription",
///     organization="123456789",
///     pub_sub_topic=support_topic.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             cloudsupport,
///             support_publisher,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudsupport = new Gcp.Projects.Service("cloudsupport", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "cloudsupport.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var supportTopic = new Gcp.PubSub.Topic("support_topic", new()
///     {
///         Project = "my-project-name",
///         Name = "test-topic-_88722",
///     });
///
///     var supportPublisher = new Gcp.PubSub.TopicIAMMember("support_publisher", new()
///     {
///         Project = "my-project-name",
///         Topic = supportTopic.Id,
///         Role = "roles/pubsub.publisher",
///         Member = "serviceAccount:cloud-support-apievents@system.gserviceaccount.com",
///     });
///
///     var subscription = new Gcp.CloudSupport.SupportEventSubscription("subscription", new()
///     {
///         Organization = "123456789",
///         PubSubTopic = supportTopic.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cloudsupport,
///             supportPublisher,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudsupport"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cloudsupport2, err := projects.NewService(ctx, "cloudsupport", &projects.ServiceArgs{
/// 			Project:          pulumi.String("my-project-name"),
/// 			Service:          pulumi.String("cloudsupport.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		supportTopic, err := pubsub.NewTopic(ctx, "support_topic", &pubsub.TopicArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Name:    pulumi.String("test-topic-_88722"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		supportPublisher, err := pubsub.NewTopicIAMMember(ctx, "support_publisher", &pubsub.TopicIAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Topic:   supportTopic.ID().ToIDOutput().ToStringOutput(),
/// 			Role:    pulumi.String("roles/pubsub.publisher"),
/// 			Member:  pulumi.String("serviceAccount:cloud-support-apievents@system.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsupport.NewSupportEventSubscription(ctx, "subscription", &cloudsupport.SupportEventSubscriptionArgs{
/// 			Organization: pulumi.String("123456789"),
/// 			PubSubTopic:  supportTopic.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cloudsupport2,
/// 			supportPublisher,
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
///   }
/// }
///
/// resource "gcp_projects_service" "cloudsupport" {
///   project            = "my-project-name"
///   service            = "cloudsupport.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "gcp_pubsub_topic" "support_topic" {
///   project = "my-project-name"
///   name    = "test-topic-_88722"
/// }
/// resource "gcp_pubsub_topiciammember" "support_publisher" {
///   project = "my-project-name"
///   topic   = gcp_pubsub_topic.support_topic.id
///   role    = "roles/pubsub.publisher"
///   member  = "serviceAccount:cloud-support-apievents@system.gserviceaccount.com"
/// }
/// resource "gcp_cloudsupport_supporteventsubscription" "subscription" {
///   depends_on    = [gcp_projects_service.cloudsupport, gcp_pubsub_topiciammember.support_publisher]
///   organization  = "123456789"
///   pub_sub_topic = gcp_pubsub_topic.support_topic.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.cloudsupport.SupportEventSubscription;
/// import com.pulumi.gcp.cloudsupport.SupportEventSubscriptionArgs;
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
///         var cloudsupport = new Service("cloudsupport", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("cloudsupport.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var supportTopic = new Topic("supportTopic", TopicArgs.builder()
///             .project("my-project-name")
///             .name("test-topic-_88722")
///             .build());
///
///         var supportPublisher = new TopicIAMMember("supportPublisher", TopicIAMMemberArgs.builder()
///             .project("my-project-name")
///             .topic(supportTopic.id())
///             .role("roles/pubsub.publisher")
///             .member("serviceAccount:cloud-support-apievents@system.gserviceaccount.com")
///             .build());
///
///         var subscription = new SupportEventSubscription("subscription", SupportEventSubscriptionArgs.builder()
///             .organization("123456789")
///             .pubSubTopic(supportTopic.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     cloudsupport,
///                     supportPublisher)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudsupport:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: cloudsupport.googleapis.com
///       disableOnDestroy: false
///   supportTopic:
///     type: gcp:pubsub:Topic
///     name: support_topic
///     properties:
///       project: my-project-name
///       name: test-topic-_88722
///   supportPublisher:
///     type: gcp:pubsub:TopicIAMMember
///     name: support_publisher
///     properties:
///       project: my-project-name
///       topic: ${supportTopic.id}
///       role: roles/pubsub.publisher
///       member: serviceAccount:cloud-support-apievents@system.gserviceaccount.com
///   subscription:
///     type: gcp:cloudsupport:SupportEventSubscription
///     properties:
///       organization: '123456789'
///       pubSubTopic: ${supportTopic.id}
///     options:
///       dependsOn:
///         - ${cloudsupport}
///         - ${supportPublisher}
/// ```
///
/// ### Cloud Support Event Subscription Update
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudsupport = new gcp.projects.Service("cloudsupport", {
///     project: "my-project-name",
///     service: "cloudsupport.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const supportTopic2 = new gcp.pubsub.Topic("support_topic_2", {
///     project: "my-project-name",
///     name: "test-topic-2-_39249",
/// });
/// const supportPublisher2 = new gcp.pubsub.TopicIAMMember("support_publisher_2", {
///     project: "my-project-name",
///     topic: supportTopic2.id,
///     role: "roles/pubsub.publisher",
///     member: "serviceAccount:cloud-support-apievents@system.gserviceaccount.com",
/// });
/// const subscription = new gcp.cloudsupport.SupportEventSubscription("subscription", {
///     organization: "123456789",
///     pubSubTopic: supportTopic2.id,
/// }, {
///     dependsOn: [
///         cloudsupport,
///         supportPublisher2,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloudsupport = gcp.projects.Service("cloudsupport",
///     project="my-project-name",
///     service="cloudsupport.googleapis.com",
///     disable_on_destroy=False)
/// support_topic2 = gcp.pubsub.Topic("support_topic_2",
///     project="my-project-name",
///     name="test-topic-2-_39249")
/// support_publisher2 = gcp.pubsub.TopicIAMMember("support_publisher_2",
///     project="my-project-name",
///     topic=support_topic2.id,
///     role="roles/pubsub.publisher",
///     member="serviceAccount:cloud-support-apievents@system.gserviceaccount.com")
/// subscription = gcp.cloudsupport.SupportEventSubscription("subscription",
///     organization="123456789",
///     pub_sub_topic=support_topic2.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             cloudsupport,
///             support_publisher2,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudsupport = new Gcp.Projects.Service("cloudsupport", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "cloudsupport.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var supportTopic2 = new Gcp.PubSub.Topic("support_topic_2", new()
///     {
///         Project = "my-project-name",
///         Name = "test-topic-2-_39249",
///     });
///
///     var supportPublisher2 = new Gcp.PubSub.TopicIAMMember("support_publisher_2", new()
///     {
///         Project = "my-project-name",
///         Topic = supportTopic2.Id,
///         Role = "roles/pubsub.publisher",
///         Member = "serviceAccount:cloud-support-apievents@system.gserviceaccount.com",
///     });
///
///     var subscription = new Gcp.CloudSupport.SupportEventSubscription("subscription", new()
///     {
///         Organization = "123456789",
///         PubSubTopic = supportTopic2.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cloudsupport,
///             supportPublisher2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudsupport"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cloudsupport2, err := projects.NewService(ctx, "cloudsupport", &projects.ServiceArgs{
/// 			Project:          pulumi.String("my-project-name"),
/// 			Service:          pulumi.String("cloudsupport.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		supportTopic2, err := pubsub.NewTopic(ctx, "support_topic_2", &pubsub.TopicArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Name:    pulumi.String("test-topic-2-_39249"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		supportPublisher2, err := pubsub.NewTopicIAMMember(ctx, "support_publisher_2", &pubsub.TopicIAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Topic:   supportTopic2.ID().ToIDOutput().ToStringOutput(),
/// 			Role:    pulumi.String("roles/pubsub.publisher"),
/// 			Member:  pulumi.String("serviceAccount:cloud-support-apievents@system.gserviceaccount.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsupport.NewSupportEventSubscription(ctx, "subscription", &cloudsupport.SupportEventSubscriptionArgs{
/// 			Organization: pulumi.String("123456789"),
/// 			PubSubTopic:  supportTopic2.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cloudsupport2,
/// 			supportPublisher2,
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
///   }
/// }
///
/// resource "gcp_projects_service" "cloudsupport" {
///   project            = "my-project-name"
///   service            = "cloudsupport.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "gcp_pubsub_topic" "support_topic_2" {
///   project = "my-project-name"
///   name    = "test-topic-2-_39249"
/// }
/// resource "gcp_pubsub_topiciammember" "support_publisher_2" {
///   project = "my-project-name"
///   topic   = gcp_pubsub_topic.support_topic_2.id
///   role    = "roles/pubsub.publisher"
///   member  = "serviceAccount:cloud-support-apievents@system.gserviceaccount.com"
/// }
/// resource "gcp_cloudsupport_supporteventsubscription" "subscription" {
///   depends_on    = [gcp_projects_service.cloudsupport, gcp_pubsub_topiciammember.support_publisher_2]
///   organization  = "123456789"
///   pub_sub_topic = gcp_pubsub_topic.support_topic_2.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.pubsub.TopicIAMMember;
/// import com.pulumi.gcp.pubsub.TopicIAMMemberArgs;
/// import com.pulumi.gcp.cloudsupport.SupportEventSubscription;
/// import com.pulumi.gcp.cloudsupport.SupportEventSubscriptionArgs;
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
///         var cloudsupport = new Service("cloudsupport", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("cloudsupport.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var supportTopic2 = new Topic("supportTopic2", TopicArgs.builder()
///             .project("my-project-name")
///             .name("test-topic-2-_39249")
///             .build());
///
///         var supportPublisher2 = new TopicIAMMember("supportPublisher2", TopicIAMMemberArgs.builder()
///             .project("my-project-name")
///             .topic(supportTopic2.id())
///             .role("roles/pubsub.publisher")
///             .member("serviceAccount:cloud-support-apievents@system.gserviceaccount.com")
///             .build());
///
///         var subscription = new SupportEventSubscription("subscription", SupportEventSubscriptionArgs.builder()
///             .organization("123456789")
///             .pubSubTopic(supportTopic2.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     cloudsupport,
///                     supportPublisher2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloudsupport:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: cloudsupport.googleapis.com
///       disableOnDestroy: false
///   supportTopic2:
///     type: gcp:pubsub:Topic
///     name: support_topic_2
///     properties:
///       project: my-project-name
///       name: test-topic-2-_39249
///   supportPublisher2:
///     type: gcp:pubsub:TopicIAMMember
///     name: support_publisher_2
///     properties:
///       project: my-project-name
///       topic: ${supportTopic2.id}
///       role: roles/pubsub.publisher
///       member: serviceAccount:cloud-support-apievents@system.gserviceaccount.com
///   subscription:
///     type: gcp:cloudsupport:SupportEventSubscription
///     properties:
///       organization: '123456789'
///       pubSubTopic: ${supportTopic2.id}
///     options:
///       dependsOn:
///         - ${cloudsupport}
///         - ${supportPublisher2}
/// ```
///
///
/// ## Import
///
/// SupportEventSubscription can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/supportEventSubscriptions/{{name}}`
/// * `{{organization}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, SupportEventSubscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsupport/supportEventSubscription:SupportEventSubscription default organizations/{{organization}}/supportEventSubscriptions/{{name}}
/// $ pulumi import gcp:cloudsupport/supportEventSubscription:SupportEventSubscription default {{organization}}/{{name}}
/// $ pulumi import gcp:cloudsupport/supportEventSubscription:SupportEventSubscription default {{name}}
/// ```
class SupportEventSubscription extends pulumi.CustomResource {
  /// The time at which the subscription was created.
  late final pulumi.Output<String> createTime;
  /// The time at which the subscription was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Reason why subscription is failing. State of subscription
  /// must be FAILING in order for this to have a value.
  /// Possible values:
  /// PERMISSION_DENIED
  /// TOPIC_NOT_FOUND
  /// OTHER
  late final pulumi.Output<String> failureReason;
  /// Identifier. The resource name of the support event subscription.
  late final pulumi.Output<String> name;
  /// The organization ID for the support event subscription.
  late final pulumi.Output<String> organization;
  /// The name of the Pub/Sub topic to publish notifications to.
  /// Format: projects/{project}/topics/{topic}
  late final pulumi.Output<String> pubSubTopic;
  /// The time at which the subscription will be purged.
  late final pulumi.Output<String> purgeTime;
  /// The state of the subscription.
  /// Possible values:
  /// WORKING
  /// FAILING
  /// DELETED
  late final pulumi.Output<String> state;
  /// The time at which the subscription was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SupportEventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SupportEventSubscription]. {@macro pulumi_cloudsupport_support_event_subscription_support_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SupportEventSubscription(
    String name, {
    SupportEventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsupport/supportEventSubscription:SupportEventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    failureReason = registerOutput<String>('failureReason');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    pubSubTopic = registerOutput<String>('pubSubTopic');
    purgeTime = registerOutput<String>('purgeTime');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [SupportEventSubscription] resource's state with the given [name] and [id].
  static SupportEventSubscription get(
    String name,
    pulumi.Input<String> id, {
    SupportEventSubscriptionState? state,
  }) {
    return SupportEventSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SupportEventSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsupport/supportEventSubscription:SupportEventSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    failureReason = registerOutput<String>('failureReason');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    pubSubTopic = registerOutput<String>('pubSubTopic');
    purgeTime = registerOutput<String>('purgeTime');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}
