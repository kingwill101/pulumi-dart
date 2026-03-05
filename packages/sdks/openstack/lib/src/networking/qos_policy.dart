import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_policy_args.dart';
import 'qos_policy_state.dart';

/// Manages a V2 Neutron QoS policy resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a QoS Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosPolicy1 = new openstack.networking.QosPolicy("qos_policy_1", {
///     name: "qos_policy_1",
///     description: "bw_limit",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_policy1 = openstack.networking.QosPolicy("qos_policy_1",
///     name="qos_policy_1",
///     description="bw_limit")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosPolicy1 = new OpenStack.Networking.QosPolicy("qos_policy_1", new()
///     {
///         Name = "qos_policy_1",
///         Description = "bw_limit",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networking.NewQosPolicy(ctx, "qos_policy_1", &networking.QosPolicyArgs{
/// 			Name:        pulumi.String("qos_policy_1"),
/// 			Description: pulumi.String("bw_limit"),
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
/// import com.pulumi.openstack.networking.QosPolicy;
/// import com.pulumi.openstack.networking.QosPolicyArgs;
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
///         var qosPolicy1 = new QosPolicy("qosPolicy1", QosPolicyArgs.builder()
///             .name("qos_policy_1")
///             .description("bw_limit")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   qosPolicy1:
///     type: openstack:networking:QosPolicy
///     name: qos_policy_1
///     properties:
///       name: qos_policy_1
///       description: bw_limit
/// ```
///
///
/// ## Import
///
/// QoS Policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/qosPolicy:QosPolicy qos_policy_1 d6ae28ce-fcb5-4180-aa62-d260a27e09ae
/// ```
class QosPolicy extends pulumi.CustomResource {
  /// The collection of tags assigned on the QoS policy, which have been
  /// explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;
  /// The time at which QoS policy was created.
  late final pulumi.Output<String> createdAt;
  /// The human-readable description for the QoS policy.
  /// Changing this updates the description of the existing QoS policy.
  late final pulumi.Output<String?> description;
  /// Indicates whether the QoS policy is default
  /// QoS policy or not. Changing this updates the default status of the existing
  /// QoS policy.
  late final pulumi.Output<bool?> isDefault;
  /// The name of the QoS policy. Changing this updates the name of
  /// the existing QoS policy.
  late final pulumi.Output<String> name;
  /// The owner of the QoS policy. Required if admin wants to
  /// create a QoS policy for another project. Changing this creates a new QoS policy.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron Qos policy. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// QoS policy.
  late final pulumi.Output<String> region;
  /// The revision number of the QoS policy.
  late final pulumi.Output<int> revisionNumber;
  /// Indicates whether this QoS policy is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// QoS policy.
  late final pulumi.Output<bool?> shared;
  /// A set of string tags for the QoS policy.
  late final pulumi.Output<List<String>?> tags;
  /// The time at which QoS policy was created.
  late final pulumi.Output<String> updatedAt;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [QosPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosPolicy]. {@macro pulumi_networking_qos_policy_qos_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosPolicy(
    String name, {
    QosPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/qosPolicy:QosPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allTags = registerOutput<List<String>>('allTags');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    revisionNumber = registerOutput<int>('revisionNumber');
    shared = registerOutput<bool?>('shared');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }

  /// Gets an existing [QosPolicy] resource's state with the given [name] and [id].
  static QosPolicy get(
    String name,
    pulumi.Input<String> id, {
    QosPolicyState? state,
  }) {
    return QosPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QosPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/qosPolicy:QosPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allTags = registerOutput<List<String>>('allTags');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    isDefault = registerOutput<bool?>('isDefault');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    region = registerOutput<String>('region');
    revisionNumber = registerOutput<int>('revisionNumber');
    shared = registerOutput<bool?>('shared');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
