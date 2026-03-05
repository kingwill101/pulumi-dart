import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootapp_args.dart';
import 'springbootapps_properties_response.dart';
import 'system_data_response.dart';

/// The springbootapps envelope resource definition.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### springbootapps_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var springbootapp = new AzureNative.OffAzureSpringBoot.Springbootapp("springbootapp", new()
///     {
///         Properties = new AzureNative.OffAzureSpringBoot.Inputs.SpringbootappsPropertiesArgs
///         {
///             AppName = "wrauwfegjfccym",
///             AppPort = 12,
///             AppType = "axzunlh",
///             ApplicationConfigurations = new[]
///             {
///                 new AzureNative.OffAzureSpringBoot.Inputs.SpringbootappsPropertiesApplicationConfigurationsArgs
///                 {
///                     Key = "wrbnwhqxjextxgdfbonuynvs",
///                     Value = "jnmaf",
///                 },
///             },
///             ArtifactName = "wrauwfegjfccym",
///             BindingPorts = new[]
///             {
///                 11,
///             },
///             BuildJdkVersion = "ipzruwqqulkpvhzymqegntz",
///             Certificates = new[]
///             {
///                 "xpiqqob",
///             },
///             Checksum = "gpzumvbzfnhhmuehveanctiamr",
///             Dependencies = new[]
///             {
///                 "zrtted",
///             },
///             Environments = new[]
///             {
///                 "afhprevtcx",
///             },
///             InstanceCount = 5,
///             Instances = new[]
///             {
///                 new AzureNative.OffAzureSpringBoot.Inputs.SpringbootappsPropertiesInstancesArgs
///                 {
///                     InstanceCount = 5,
///                     JvmMemoryInMB = 128,
///                     MachineArmId = "lsstlommxuskyhnwyxh",
///                 },
///             },
///             JarFileLocation = "wfptqclncaqycyfbfih",
///             JvmMemoryInMB = 1,
///             JvmOptions = new[]
///             {
///                 "nytejjoytevmvlgnfwb",
///             },
///             LastModifiedTime = "2022-12-02T09:28:24.094Z",
///             MachineArmIds = new[]
///             {
///                 "lsstlommxuskyhnwyxh",
///             },
///             Miscs = new[]
///             {
///                 new AzureNative.OffAzureSpringBoot.Inputs.SpringbootappsPropertiesMiscsArgs
///                 {
///                     Key = "fobsfetkynfmkziei",
///                     Value = "k",
///                 },
///             },
///             RuntimeJdkVersion = "eblzujbsulpeilykqyjso",
///             Servers = new[]
///             {
///                 "gvfhsohasdx",
///             },
///             SpringBootVersion = "euggigfiii",
///             StaticContentLocations = new[]
///             {
///                 "wvvajfkbtmjftir",
///             },
///         },
///         ResourceGroupName = "rgspringbootapps",
///         SiteName = "pdfosfhtemfsaglvwjdyqlyeipucrd",
///         SpringbootappsName = "ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf",
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
/// 	offazurespringboot "github.com/pulumi/pulumi-azure-native-sdk/offazurespringboot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazurespringboot.NewSpringbootapp(ctx, "springbootapp", &offazurespringboot.SpringbootappArgs{
/// 			Properties: &offazurespringboot.SpringbootappsPropertiesArgs{
/// 				AppName: pulumi.String("wrauwfegjfccym"),
/// 				AppPort: pulumi.Int(12),
/// 				AppType: pulumi.String("axzunlh"),
/// 				ApplicationConfigurations: offazurespringboot.SpringbootappsPropertiesApplicationConfigurationsArray{
/// 					&offazurespringboot.SpringbootappsPropertiesApplicationConfigurationsArgs{
/// 						Key:   pulumi.String("wrbnwhqxjextxgdfbonuynvs"),
/// 						Value: pulumi.String("jnmaf"),
/// 					},
/// 				},
/// 				ArtifactName: pulumi.String("wrauwfegjfccym"),
/// 				BindingPorts: pulumi.IntArray{
/// 					pulumi.Int(11),
/// 				},
/// 				BuildJdkVersion: pulumi.String("ipzruwqqulkpvhzymqegntz"),
/// 				Certificates: pulumi.StringArray{
/// 					pulumi.String("xpiqqob"),
/// 				},
/// 				Checksum: pulumi.String("gpzumvbzfnhhmuehveanctiamr"),
/// 				Dependencies: pulumi.StringArray{
/// 					pulumi.String("zrtted"),
/// 				},
/// 				Environments: pulumi.StringArray{
/// 					pulumi.String("afhprevtcx"),
/// 				},
/// 				InstanceCount: pulumi.Int(5),
/// 				Instances: offazurespringboot.SpringbootappsPropertiesInstancesArray{
/// 					&offazurespringboot.SpringbootappsPropertiesInstancesArgs{
/// 						InstanceCount: pulumi.Int(5),
/// 						JvmMemoryInMB: pulumi.Int(128),
/// 						MachineArmId:  pulumi.String("lsstlommxuskyhnwyxh"),
/// 					},
/// 				},
/// 				JarFileLocation: pulumi.String("wfptqclncaqycyfbfih"),
/// 				JvmMemoryInMB:   pulumi.Int(1),
/// 				JvmOptions: pulumi.StringArray{
/// 					pulumi.String("nytejjoytevmvlgnfwb"),
/// 				},
/// 				LastModifiedTime: pulumi.String("2022-12-02T09:28:24.094Z"),
/// 				MachineArmIds: pulumi.StringArray{
/// 					pulumi.String("lsstlommxuskyhnwyxh"),
/// 				},
/// 				Miscs: offazurespringboot.SpringbootappsPropertiesMiscsArray{
/// 					&offazurespringboot.SpringbootappsPropertiesMiscsArgs{
/// 						Key:   pulumi.String("fobsfetkynfmkziei"),
/// 						Value: pulumi.String("k"),
/// 					},
/// 				},
/// 				RuntimeJdkVersion: pulumi.String("eblzujbsulpeilykqyjso"),
/// 				Servers: pulumi.StringArray{
/// 					pulumi.String("gvfhsohasdx"),
/// 				},
/// 				SpringBootVersion: pulumi.String("euggigfiii"),
/// 				StaticContentLocations: pulumi.StringArray{
/// 					pulumi.String("wvvajfkbtmjftir"),
/// 				},
/// 			},
/// 			ResourceGroupName:  pulumi.String("rgspringbootapps"),
/// 			SiteName:           pulumi.String("pdfosfhtemfsaglvwjdyqlyeipucrd"),
/// 			SpringbootappsName: pulumi.String("ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf"),
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
/// import com.pulumi.azurenative.offazurespringboot.Springbootapp;
/// import com.pulumi.azurenative.offazurespringboot.SpringbootappArgs;
/// import com.pulumi.azurenative.offazurespringboot.inputs.SpringbootappsPropertiesArgs;
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
///         var springbootapp = new Springbootapp("springbootapp", SpringbootappArgs.builder()
///             .properties(SpringbootappsPropertiesArgs.builder()
///                 .appName("wrauwfegjfccym")
///                 .appPort(12)
///                 .appType("axzunlh")
///                 .applicationConfigurations(SpringbootappsPropertiesApplicationConfigurationsArgs.builder()
///                     .key("wrbnwhqxjextxgdfbonuynvs")
///                     .value("jnmaf")
///                     .build())
///                 .artifactName("wrauwfegjfccym")
///                 .bindingPorts(11)
///                 .buildJdkVersion("ipzruwqqulkpvhzymqegntz")
///                 .certificates("xpiqqob")
///                 .checksum("gpzumvbzfnhhmuehveanctiamr")
///                 .dependencies("zrtted")
///                 .environments("afhprevtcx")
///                 .instanceCount(5)
///                 .instances(SpringbootappsPropertiesInstancesArgs.builder()
///                     .instanceCount(5)
///                     .jvmMemoryInMB(128)
///                     .machineArmId("lsstlommxuskyhnwyxh")
///                     .build())
///                 .jarFileLocation("wfptqclncaqycyfbfih")
///                 .jvmMemoryInMB(1)
///                 .jvmOptions("nytejjoytevmvlgnfwb")
///                 .lastModifiedTime("2022-12-02T09:28:24.094Z")
///                 .machineArmIds("lsstlommxuskyhnwyxh")
///                 .miscs(SpringbootappsPropertiesMiscsArgs.builder()
///                     .key("fobsfetkynfmkziei")
///                     .value("k")
///                     .build())
///                 .runtimeJdkVersion("eblzujbsulpeilykqyjso")
///                 .servers("gvfhsohasdx")
///                 .springBootVersion("euggigfiii")
///                 .staticContentLocations("wvvajfkbtmjftir")
///                 .build())
///             .resourceGroupName("rgspringbootapps")
///             .siteName("pdfosfhtemfsaglvwjdyqlyeipucrd")
///             .springbootappsName("ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf")
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
/// const springbootapp = new azure_native.offazurespringboot.Springbootapp("springbootapp", {
///     properties: {
///         appName: "wrauwfegjfccym",
///         appPort: 12,
///         appType: "axzunlh",
///         applicationConfigurations: [{
///             key: "wrbnwhqxjextxgdfbonuynvs",
///             value: "jnmaf",
///         }],
///         artifactName: "wrauwfegjfccym",
///         bindingPorts: [11],
///         buildJdkVersion: "ipzruwqqulkpvhzymqegntz",
///         certificates: ["xpiqqob"],
///         checksum: "gpzumvbzfnhhmuehveanctiamr",
///         dependencies: ["zrtted"],
///         environments: ["afhprevtcx"],
///         instanceCount: 5,
///         instances: [{
///             instanceCount: 5,
///             jvmMemoryInMB: 128,
///             machineArmId: "lsstlommxuskyhnwyxh",
///         }],
///         jarFileLocation: "wfptqclncaqycyfbfih",
///         jvmMemoryInMB: 1,
///         jvmOptions: ["nytejjoytevmvlgnfwb"],
///         lastModifiedTime: "2022-12-02T09:28:24.094Z",
///         machineArmIds: ["lsstlommxuskyhnwyxh"],
///         miscs: [{
///             key: "fobsfetkynfmkziei",
///             value: "k",
///         }],
///         runtimeJdkVersion: "eblzujbsulpeilykqyjso",
///         servers: ["gvfhsohasdx"],
///         springBootVersion: "euggigfiii",
///         staticContentLocations: ["wvvajfkbtmjftir"],
///     },
///     resourceGroupName: "rgspringbootapps",
///     siteName: "pdfosfhtemfsaglvwjdyqlyeipucrd",
///     springbootappsName: "ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// springbootapp = azure_native.offazurespringboot.Springbootapp("springbootapp",
///     properties={
///         "app_name": "wrauwfegjfccym",
///         "app_port": 12,
///         "app_type": "axzunlh",
///         "application_configurations": [{
///             "key": "wrbnwhqxjextxgdfbonuynvs",
///             "value": "jnmaf",
///         }],
///         "artifact_name": "wrauwfegjfccym",
///         "binding_ports": [11],
///         "build_jdk_version": "ipzruwqqulkpvhzymqegntz",
///         "certificates": ["xpiqqob"],
///         "checksum": "gpzumvbzfnhhmuehveanctiamr",
///         "dependencies": ["zrtted"],
///         "environments": ["afhprevtcx"],
///         "instance_count": 5,
///         "instances": [{
///             "instance_count": 5,
///             "jvm_memory_in_mb": 128,
///             "machine_arm_id": "lsstlommxuskyhnwyxh",
///         }],
///         "jar_file_location": "wfptqclncaqycyfbfih",
///         "jvm_memory_in_mb": 1,
///         "jvm_options": ["nytejjoytevmvlgnfwb"],
///         "last_modified_time": "2022-12-02T09:28:24.094Z",
///         "machine_arm_ids": ["lsstlommxuskyhnwyxh"],
///         "miscs": [{
///             "key": "fobsfetkynfmkziei",
///             "value": "k",
///         }],
///         "runtime_jdk_version": "eblzujbsulpeilykqyjso",
///         "servers": ["gvfhsohasdx"],
///         "spring_boot_version": "euggigfiii",
///         "static_content_locations": ["wvvajfkbtmjftir"],
///     },
///     resource_group_name="rgspringbootapps",
///     site_name="pdfosfhtemfsaglvwjdyqlyeipucrd",
///     springbootapps_name="ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf")
///
/// ```
///
/// ```yaml
/// resources:
///   springbootapp:
///     type: azure-native:offazurespringboot:Springbootapp
///     properties:
///       properties:
///         appName: wrauwfegjfccym
///         appPort: 12
///         appType: axzunlh
///         applicationConfigurations:
///           - key: wrbnwhqxjextxgdfbonuynvs
///             value: jnmaf
///         artifactName: wrauwfegjfccym
///         bindingPorts:
///           - 11
///         buildJdkVersion: ipzruwqqulkpvhzymqegntz
///         certificates:
///           - xpiqqob
///         checksum: gpzumvbzfnhhmuehveanctiamr
///         dependencies:
///           - zrtted
///         environments:
///           - afhprevtcx
///         instanceCount: 5
///         instances:
///           - instanceCount: 5
///             jvmMemoryInMB: 128
///             machineArmId: lsstlommxuskyhnwyxh
///         jarFileLocation: wfptqclncaqycyfbfih
///         jvmMemoryInMB: 1
///         jvmOptions:
///           - nytejjoytevmvlgnfwb
///         lastModifiedTime: 2022-12-02T09:28:24.094Z
///         machineArmIds:
///           - lsstlommxuskyhnwyxh
///         miscs:
///           - key: fobsfetkynfmkziei
///             value: k
///         runtimeJdkVersion: eblzujbsulpeilykqyjso
///         servers:
///           - gvfhsohasdx
///         springBootVersion: euggigfiii
///         staticContentLocations:
///           - wvvajfkbtmjftir
///       resourceGroupName: rgspringbootapps
///       siteName: pdfosfhtemfsaglvwjdyqlyeipucrd
///       springbootappsName: ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### springbootapps_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var springbootapp = new AzureNative.OffAzureSpringBoot.Springbootapp("springbootapp", new()
///     {
///         ResourceGroupName = "rgspringbootapps",
///         SiteName = "pdfosfhtemfsaglvwjdyqlyeipucrd",
///         SpringbootappsName = "ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf",
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
/// 	offazurespringboot "github.com/pulumi/pulumi-azure-native-sdk/offazurespringboot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazurespringboot.NewSpringbootapp(ctx, "springbootapp", &offazurespringboot.SpringbootappArgs{
/// 			ResourceGroupName:  pulumi.String("rgspringbootapps"),
/// 			SiteName:           pulumi.String("pdfosfhtemfsaglvwjdyqlyeipucrd"),
/// 			SpringbootappsName: pulumi.String("ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf"),
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
/// import com.pulumi.azurenative.offazurespringboot.Springbootapp;
/// import com.pulumi.azurenative.offazurespringboot.SpringbootappArgs;
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
///         var springbootapp = new Springbootapp("springbootapp", SpringbootappArgs.builder()
///             .resourceGroupName("rgspringbootapps")
///             .siteName("pdfosfhtemfsaglvwjdyqlyeipucrd")
///             .springbootappsName("ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf")
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
/// const springbootapp = new azure_native.offazurespringboot.Springbootapp("springbootapp", {
///     resourceGroupName: "rgspringbootapps",
///     siteName: "pdfosfhtemfsaglvwjdyqlyeipucrd",
///     springbootappsName: "ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// springbootapp = azure_native.offazurespringboot.Springbootapp("springbootapp",
///     resource_group_name="rgspringbootapps",
///     site_name="pdfosfhtemfsaglvwjdyqlyeipucrd",
///     springbootapps_name="ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf")
///
/// ```
///
/// ```yaml
/// resources:
///   springbootapp:
///     type: azure-native:offazurespringboot:Springbootapp
///     properties:
///       resourceGroupName: rgspringbootapps
///       siteName: pdfosfhtemfsaglvwjdyqlyeipucrd
///       springbootappsName: ofjeesoahqtnovlbuvflyknpbhcpeqqhekntvqxyemuwbcqnuxjgfhsf
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
/// $ pulumi import azure-native:offazurespringboot:Springbootapp enyeyrgonjdauhscqy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzureSpringBoot/springbootsites/{siteName}/springbootapps/{springbootappsName}
/// ```
class Springbootapp extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The springbootapps resource definition.
  late final pulumi.Output<SpringbootappsPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Springbootapp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Springbootapp]. {@macro pulumi_offazurespringboot_springbootapp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Springbootapp(
    String name, {
    SpringbootappArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:offazurespringboot:Springbootapp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SpringbootappsPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SpringbootappsPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
