import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_args.dart';
import 'service_perimeters_state.dart';

/// Replace all existing Service Perimeters in an Access Policy with the Service Perimeters provided. This is done atomically.
/// This is a bulk edit of all Service Perimeters and may override existing Service Perimeters created by `gcp.accesscontextmanager.ServicePerimeter`,
/// thus causing a permadiff if used alongside `gcp.accesscontextmanager.ServicePerimeter` on the same parent.
///
///
/// To get more information about ServicePerimeters, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
/// * [Service Perimeter Quickstart](https://cloud.google.com/vpc-service-controls/docs/quickstart)
///
/// ## Example Usage
///
/// ### Access Context Manager Service Perimeters Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: "organizations/123456789",
///     title: "my policy",
/// });
/// const service_perimeter = new gcp.accesscontextmanager.ServicePerimeters("service-perimeter", {
///     parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
///     servicePerimeters: [
///         {
///             name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/`,
///             title: "",
///             status: {
///                 restrictedServices: ["storage.googleapis.com"],
///             },
///         },
///         {
///             name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/`,
///             title: "",
///             status: {
///                 restrictedServices: ["bigtable.googleapis.com"],
///             },
///         },
///     ],
/// });
/// const access_level = new gcp.accesscontextmanager.AccessLevel("access-level", {
///     parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
///     name: pulumi.interpolate`accessPolicies/${access_policy.name}/accessLevels/chromeos_no_lock`,
///     title: "chromeos_no_lock",
///     basic: {
///         conditions: [{
///             devicePolicy: {
///                 requireScreenLock: false,
///                 osConstraints: [{
///                     osType: "DESKTOP_CHROME_OS",
///                 }],
///             },
///             regions: [
///                 "CH",
///                 "IT",
///                 "US",
///             ],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent="organizations/123456789",
///     title="my policy")
/// service_perimeter = gcp.accesscontextmanager.ServicePerimeters("service-perimeter",
///     parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
///     service_perimeters=[
///         {
///             "name": access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/"),
///             "title": "",
///             "status": {
///                 "restricted_services": ["storage.googleapis.com"],
///             },
///         },
///         {
///             "name": access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/"),
///             "title": "",
///             "status": {
///                 "restricted_services": ["bigtable.googleapis.com"],
///             },
///         },
///     ])
/// access_level = gcp.accesscontextmanager.AccessLevel("access-level",
///     parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
///     name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///     title="chromeos_no_lock",
///     basic={
///         "conditions": [{
///             "device_policy": {
///                 "require_screen_lock": False,
///                 "os_constraints": [{
///                     "os_type": "DESKTOP_CHROME_OS",
///                 }],
///             },
///             "regions": [
///                 "CH",
///                 "IT",
///                 "US",
///             ],
///         }],
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
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "my policy",
///     });
///
///     var service_perimeter = new Gcp.AccessContextManager.ServicePerimeters("service-perimeter", new()
///     {
///         Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
///         ServicePerimeterDetails = new[]
///         {
///             new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterArgs
///             {
///                 Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/"),
///                 Title = "",
///                 Status = new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterStatusArgs
///                 {
///                     RestrictedServices = new[]
///                     {
///                         "storage.googleapis.com",
///                     },
///                 },
///             },
///             new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterArgs
///             {
///                 Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/"),
///                 Title = "",
///                 Status = new Gcp.AccessContextManager.Inputs.ServicePerimetersServicePerimeterStatusArgs
///                 {
///                     RestrictedServices = new[]
///                     {
///                         "bigtable.googleapis.com",
///                     },
///                 },
///             },
///         },
///     });
///
///     var access_level = new Gcp.AccessContextManager.AccessLevel("access-level", new()
///     {
///         Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
///         Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/accessLevels/chromeos_no_lock"),
///         Title = "chromeos_no_lock",
///         Basic = new Gcp.AccessContextManager.Inputs.AccessLevelBasicArgs
///         {
///             Conditions = new[]
///             {
///                 new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionArgs
///                 {
///                     DevicePolicy = new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyArgs
///                     {
///                         RequireScreenLock = false,
///                         OsConstraints = new[]
///                         {
///                             new Gcp.AccessContextManager.Inputs.AccessLevelBasicConditionDevicePolicyOsConstraintArgs
///                             {
///                                 OsType = "DESKTOP_CHROME_OS",
///                             },
///                         },
///                     },
///                     Regions = new[]
///                     {
///                         "CH",
///                         "IT",
///                         "US",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("my policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewServicePerimeters(ctx, "service-perimeter", &accesscontextmanager.ServicePerimetersArgs{
/// 			Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			ServicePerimeters: accesscontextmanager.ServicePerimetersServicePerimeterArray{
/// 				&accesscontextmanager.ServicePerimetersServicePerimeterArgs{
/// 					Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("accessPolicies/%v/servicePerimeters/", name), nil
/// 					}).(pulumi.StringOutput),
/// 					Title: pulumi.String(""),
/// 					Status: &accesscontextmanager.ServicePerimetersServicePerimeterStatusArgs{
/// 						RestrictedServices: pulumi.StringArray{
/// 							pulumi.String("storage.googleapis.com"),
/// 						},
/// 					},
/// 				},
/// 				&accesscontextmanager.ServicePerimetersServicePerimeterArgs{
/// 					Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("accessPolicies/%v/servicePerimeters/", name), nil
/// 					}).(pulumi.StringOutput),
/// 					Title: pulumi.String(""),
/// 					Status: &accesscontextmanager.ServicePerimetersServicePerimeterStatusArgs{
/// 						RestrictedServices: pulumi.StringArray{
/// 							pulumi.String("bigtable.googleapis.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewAccessLevel(ctx, "access-level", &accesscontextmanager.AccessLevelArgs{
/// 			Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v/accessLevels/chromeos_no_lock", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Title: pulumi.String("chromeos_no_lock"),
/// 			Basic: &accesscontextmanager.AccessLevelBasicArgs{
/// 				Conditions: accesscontextmanager.AccessLevelBasicConditionArray{
/// 					&accesscontextmanager.AccessLevelBasicConditionArgs{
/// 						DevicePolicy: &accesscontextmanager.AccessLevelBasicConditionDevicePolicyArgs{
/// 							RequireScreenLock: pulumi.Bool(false),
/// 							OsConstraints: accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArray{
/// 								&accesscontextmanager.AccessLevelBasicConditionDevicePolicyOsConstraintArgs{
/// 									OsType: pulumi.String("DESKTOP_CHROME_OS"),
/// 								},
/// 							},
/// 						},
/// 						Regions: pulumi.StringArray{
/// 							pulumi.String("CH"),
/// 							pulumi.String("IT"),
/// 							pulumi.String("US"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeters;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimetersArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimetersServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimetersServicePerimeterStatusArgs;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevel;
/// import com.pulumi.gcp.accesscontextmanager.AccessLevelArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.AccessLevelBasicArgs;
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
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("my policy")
///             .build());
///
///         var service_perimeter = new ServicePerimeters("service-perimeter", ServicePerimetersArgs.builder()
///             .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .servicePerimeters(
///                 ServicePerimetersServicePerimeterArgs.builder()
///                     .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/", _name)))
///                     .title("")
///                     .status(ServicePerimetersServicePerimeterStatusArgs.builder()
///                         .restrictedServices("storage.googleapis.com")
///                         .build())
///                     .build(),
///                 ServicePerimetersServicePerimeterArgs.builder()
///                     .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/", _name)))
///                     .title("")
///                     .status(ServicePerimetersServicePerimeterStatusArgs.builder()
///                         .restrictedServices("bigtable.googleapis.com")
///                         .build())
///                     .build())
///             .build());
///
///         var access_level = new AccessLevel("access-level", AccessLevelArgs.builder()
///             .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/accessLevels/chromeos_no_lock", _name)))
///             .title("chromeos_no_lock")
///             .basic(AccessLevelBasicArgs.builder()
///                 .conditions(AccessLevelBasicConditionArgs.builder()
///                     .devicePolicy(AccessLevelBasicConditionDevicePolicyArgs.builder()
///                         .requireScreenLock(false)
///                         .osConstraints(AccessLevelBasicConditionDevicePolicyOsConstraintArgs.builder()
///                             .osType("DESKTOP_CHROME_OS")
///                             .build())
///                         .build())
///                     .regions(
///                         "CH",
///                         "IT",
///                         "US")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service-perimeter:
///     type: gcp:accesscontextmanager:ServicePerimeters
///     properties:
///       parent: accessPolicies/${["access-policy"].name}
///       servicePerimeters:
///         - name: accessPolicies/${["access-policy"].name}/servicePerimeters/
///           title: ""
///           status:
///             restrictedServices:
///               - storage.googleapis.com
///         - name: accessPolicies/${["access-policy"].name}/servicePerimeters/
///           title: ""
///           status:
///             restrictedServices:
///               - bigtable.googleapis.com
///   access-level:
///     type: gcp:accesscontextmanager:AccessLevel
///     properties:
///       parent: accessPolicies/${["access-policy"].name}
///       name: accessPolicies/${["access-policy"].name}/accessLevels/chromeos_no_lock
///       title: chromeos_no_lock
///       basic:
///         conditions:
///           - devicePolicy:
///               requireScreenLock: false
///               osConstraints:
///                 - osType: DESKTOP_CHROME_OS
///             regions:
///               - CH
///               - IT
///               - US
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: my policy
/// ```
///
///
/// ## Import
///
/// ServicePerimeters can be imported using any of these accepted formats:
///
/// * `{{parent}}/servicePerimeters`
///
/// * `{{parent}}`
///
/// When using the `pulumi import` command, ServicePerimeters can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeters:ServicePerimeters default {{parent}}/servicePerimeters
/// ```
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeters:ServicePerimeters default {{parent}}
/// ```
class ServicePerimeters extends pulumi.CustomResource {
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  late final pulumi.Output<String> parent;
  /// The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> servicePerimeters;

  /// Creates a new [ServicePerimeters].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePerimeters]. {@macro pulumi_accesscontextmanager_service_perimeters_service_perimeters_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePerimeters(
    String name, {
    ServicePerimetersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeters:ServicePerimeters',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    parent = registerOutput<String>('parent');
    servicePerimeters = registerOutput<List<Map<String, dynamic>>?>('servicePerimeters');
  }

  /// Gets an existing [ServicePerimeters] resource's state with the given [name] and [id].
  static ServicePerimeters get(
    String name,
    pulumi.Input<String> id, {
    ServicePerimetersState? state,
  }) {
    return ServicePerimeters._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePerimeters._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeters:ServicePerimeters',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    parent = registerOutput<String>('parent');
    servicePerimeters = registerOutput<List<Map<String, dynamic>>?>('servicePerimeters');
  }
}
