import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_stored_info_type_args.dart';
import 'prevention_stored_info_type_dictionary.dart';
import 'prevention_stored_info_type_large_custom_dictionary.dart';
import 'prevention_stored_info_type_regex.dart';
import 'prevention_stored_info_type_state.dart';

/// Allows creation of custom info types.
///
///
/// To get more information about StoredInfoType, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.storedInfoTypes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/creating-stored-infotypes)
///
/// ## Example Usage
///
/// ### Dlp Stored Info Type Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionStoredInfoType("basic", {
///     parent: "projects/my-project-name",
///     description: "Description",
///     displayName: "Displayname",
///     regex: {
///         pattern: "patient",
///         groupIndexes: [2],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionStoredInfoType("basic",
///     parent="projects/my-project-name",
///     description="Description",
///     display_name="Displayname",
///     regex={
///         "pattern": "patient",
///         "group_indexes": [2],
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
///     var basic = new Gcp.DataLoss.PreventionStoredInfoType("basic", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "Description",
///         DisplayName = "Displayname",
///         Regex = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeRegexArgs
///         {
///             Pattern = "patient",
///             GroupIndexes = new[]
///             {
///                 2,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionStoredInfoType(ctx, "basic", &dataloss.PreventionStoredInfoTypeArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("Description"),
/// 			DisplayName: pulumi.String("Displayname"),
/// 			Regex: &dataloss.PreventionStoredInfoTypeRegexArgs{
/// 				Pattern: pulumi.String("patient"),
/// 				GroupIndexes: pulumi.IntArray{
/// 					pulumi.Int(2),
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
/// resource "gcp_dataloss_preventionstoredinfotype" "basic" {
///   parent       = "projects/my-project-name"
///   description  = "Description"
///   display_name = "Displayname"
///   regex = {
///     pattern       = "patient"
///     group_indexes = [2]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoType;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeRegexArgs;
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
///         var basic = new PreventionStoredInfoType("basic", PreventionStoredInfoTypeArgs.builder()
///             .parent("projects/my-project-name")
///             .description("Description")
///             .displayName("Displayname")
///             .regex(PreventionStoredInfoTypeRegexArgs.builder()
///                 .pattern("patient")
///                 .groupIndexes(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:dataloss:PreventionStoredInfoType
///     properties:
///       parent: projects/my-project-name
///       description: Description
///       displayName: Displayname
///       regex:
///         pattern: patient
///         groupIndexes:
///           - 2
/// ```
///
/// ### Dlp Stored Info Type Dictionary
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dictionary = new gcp.dataloss.PreventionStoredInfoType("dictionary", {
///     parent: "projects/my-project-name",
///     description: "Description",
///     displayName: "Displayname",
///     dictionary: {
///         wordList: {
///             words: [
///                 "word",
///                 "word2",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dictionary = gcp.dataloss.PreventionStoredInfoType("dictionary",
///     parent="projects/my-project-name",
///     description="Description",
///     display_name="Displayname",
///     dictionary={
///         "word_list": {
///             "words": [
///                 "word",
///                 "word2",
///             ],
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
///     var dictionary = new Gcp.DataLoss.PreventionStoredInfoType("dictionary", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "Description",
///         DisplayName = "Displayname",
///         Dictionary = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeDictionaryArgs
///         {
///             WordList = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeDictionaryWordListArgs
///             {
///                 Words = new[]
///                 {
///                     "word",
///                     "word2",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionStoredInfoType(ctx, "dictionary", &dataloss.PreventionStoredInfoTypeArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("Description"),
/// 			DisplayName: pulumi.String("Displayname"),
/// 			Dictionary: &dataloss.PreventionStoredInfoTypeDictionaryArgs{
/// 				WordList: &dataloss.PreventionStoredInfoTypeDictionaryWordListArgs{
/// 					Words: pulumi.StringArray{
/// 						pulumi.String("word"),
/// 						pulumi.String("word2"),
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
/// resource "gcp_dataloss_preventionstoredinfotype" "dictionary" {
///   parent       = "projects/my-project-name"
///   description  = "Description"
///   display_name = "Displayname"
///   dictionary = {
///     word_list = {
///       words = ["word", "word2"]
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
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoType;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeDictionaryArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeDictionaryWordListArgs;
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
///         var dictionary = new PreventionStoredInfoType("dictionary", PreventionStoredInfoTypeArgs.builder()
///             .parent("projects/my-project-name")
///             .description("Description")
///             .displayName("Displayname")
///             .dictionary(PreventionStoredInfoTypeDictionaryArgs.builder()
///                 .wordList(PreventionStoredInfoTypeDictionaryWordListArgs.builder()
///                     .words(
///                         "word",
///                         "word2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dictionary:
///     type: gcp:dataloss:PreventionStoredInfoType
///     properties:
///       parent: projects/my-project-name
///       description: Description
///       displayName: Displayname
///       dictionary:
///         wordList:
///           words:
///             - word
///             - word2
/// ```
///
/// ### Dlp Stored Info Type Large Custom Dictionary
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "tf-test-bucket",
///     location: "US",
///     forceDestroy: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "tf-test-object",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/words.txt"),
/// });
/// const large = new gcp.dataloss.PreventionStoredInfoType("large", {
///     parent: "projects/my-project-name",
///     description: "Description",
///     displayName: "Displayname",
///     largeCustomDictionary: {
///         cloudStorageFileSet: {
///             url: pulumi.interpolate`gs://${bucket.name}/${object.name}`,
///         },
///         outputPath: {
///             path: pulumi.interpolate`gs://${bucket.name}/output/dictionary.txt`,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="tf-test-bucket",
///     location="US",
///     force_destroy=True)
/// object = gcp.storage.BucketObject("object",
///     name="tf-test-object",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/words.txt"))
/// large = gcp.dataloss.PreventionStoredInfoType("large",
///     parent="projects/my-project-name",
///     description="Description",
///     display_name="Displayname",
///     large_custom_dictionary={
///         "cloud_storage_file_set": {
///             "url": pulumi.Output.all(
///                 bucketName=bucket.name,
///                 objectName=object.name
/// ).apply(lambda resolved_outputs: f"gs://{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///         },
///         "output_path": {
///             "path": bucket.name.apply(lambda name: f"gs://{name}/output/dictionary.txt"),
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
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "tf-test-bucket",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "tf-test-object",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./test-fixtures/words.txt"),
///     });
///
///     var large = new Gcp.DataLoss.PreventionStoredInfoType("large", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "Description",
///         DisplayName = "Displayname",
///         LargeCustomDictionary = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeLargeCustomDictionaryArgs
///         {
///             CloudStorageFileSet = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSetArgs
///             {
///                 Url = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                 {
///                     var bucketName = values.Item1;
///                     var objectName = values.Item2;
///                     return $"gs://{bucketName}/{objectName}";
///                 }),
///             },
///             OutputPath = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeLargeCustomDictionaryOutputPathArgs
///             {
///                 Path = bucket.Name.Apply(name => $"gs://{name}/output/dictionary.txt"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:         pulumi.String("tf-test-bucket"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("tf-test-object"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./test-fixtures/words.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataloss.NewPreventionStoredInfoType(ctx, "large", &dataloss.PreventionStoredInfoTypeArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("Description"),
/// 			DisplayName: pulumi.String("Displayname"),
/// 			LargeCustomDictionary: &dataloss.PreventionStoredInfoTypeLargeCustomDictionaryArgs{
/// 				CloudStorageFileSet: &dataloss.PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSetArgs{
/// 					Url: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucketName := _args[0].(string)
/// 						objectName := _args[1].(string)
/// 						return fmt.Sprintf("gs://%v/%v", bucketName, objectName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 				OutputPath: &dataloss.PreventionStoredInfoTypeLargeCustomDictionaryOutputPathArgs{
/// 					Path: bucket.Name.ApplyT(func(name string) (string, error) {
/// 						return fmt.Sprintf("gs://%v/output/dictionary.txt", name), nil
/// 					}).(pulumi.StringOutput),
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
/// resource "gcp_dataloss_preventionstoredinfotype" "large" {
///   parent       = "projects/my-project-name"
///   description  = "Description"
///   display_name = "Displayname"
///   large_custom_dictionary = {
///     cloud_storage_file_set = {
///       url ="gs://${gcp_storage_bucket.bucket.name}/${gcp_storage_bucketobject.object.name}"
///     }
///     output_path = {
///       path ="gs://${gcp_storage_bucket.bucket.name}/output/dictionary.txt"
///     }
///   }
/// }
/// resource "gcp_storage_bucket" "bucket" {
///   name          = "tf-test-bucket"
///   location      = "US"
///   force_destroy = true
/// }
/// resource "gcp_storage_bucketobject" "object" {
///   name   = "tf-test-object"
///   bucket = gcp_storage_bucket.bucket.name
///   source = fileAsset("./test-fixtures/words.txt")
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoType;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeLargeCustomDictionaryArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSetArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeLargeCustomDictionaryOutputPathArgs;
/// import com.pulumi.asset.FileAsset;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("tf-test-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("tf-test-object")
///             .bucket(bucket.name())
///             .source(new FileAsset("./test-fixtures/words.txt"))
///             .build());
///
///         var large = new PreventionStoredInfoType("large", PreventionStoredInfoTypeArgs.builder()
///             .parent("projects/my-project-name")
///             .description("Description")
///             .displayName("Displayname")
///             .largeCustomDictionary(PreventionStoredInfoTypeLargeCustomDictionaryArgs.builder()
///                 .cloudStorageFileSet(PreventionStoredInfoTypeLargeCustomDictionaryCloudStorageFileSetArgs.builder()
///                     .url(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                         var bucketName = values.t1;
///                         var objectName = values.t2;
///                         return String.format("gs://%s/%s", bucketName,objectName);
///                     }))
///                     .build())
///                 .outputPath(PreventionStoredInfoTypeLargeCustomDictionaryOutputPathArgs.builder()
///                     .path(bucket.name().applyValue(_name -> String.format("gs://%s/output/dictionary.txt", _name)))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   large:
///     type: gcp:dataloss:PreventionStoredInfoType
///     properties:
///       parent: projects/my-project-name
///       description: Description
///       displayName: Displayname
///       largeCustomDictionary:
///         cloudStorageFileSet:
///           url: gs://${bucket.name}/${object.name}
///         outputPath:
///           path: gs://${bucket.name}/output/dictionary.txt
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-bucket
///       location: US
///       forceDestroy: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: tf-test-object
///       bucket: ${bucket.name}
///       source:
///         fn::fileAsset: ./test-fixtures/words.txt
/// ```
///
/// ### Dlp Stored Info Type With Id
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const withStoredInfoTypeId = new gcp.dataloss.PreventionStoredInfoType("with_stored_info_type_id", {
///     parent: "projects/my-project-name",
///     description: "Description",
///     displayName: "Displayname",
///     storedInfoTypeId: "id-",
///     regex: {
///         pattern: "patient",
///         groupIndexes: [2],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// with_stored_info_type_id = gcp.dataloss.PreventionStoredInfoType("with_stored_info_type_id",
///     parent="projects/my-project-name",
///     description="Description",
///     display_name="Displayname",
///     stored_info_type_id="id-",
///     regex={
///         "pattern": "patient",
///         "group_indexes": [2],
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
///     var withStoredInfoTypeId = new Gcp.DataLoss.PreventionStoredInfoType("with_stored_info_type_id", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "Description",
///         DisplayName = "Displayname",
///         StoredInfoTypeId = "id-",
///         Regex = new Gcp.DataLoss.Inputs.PreventionStoredInfoTypeRegexArgs
///         {
///             Pattern = "patient",
///             GroupIndexes = new[]
///             {
///                 2,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionStoredInfoType(ctx, "with_stored_info_type_id", &dataloss.PreventionStoredInfoTypeArgs{
/// 			Parent:           pulumi.String("projects/my-project-name"),
/// 			Description:      pulumi.String("Description"),
/// 			DisplayName:      pulumi.String("Displayname"),
/// 			StoredInfoTypeId: pulumi.String("id-"),
/// 			Regex: &dataloss.PreventionStoredInfoTypeRegexArgs{
/// 				Pattern: pulumi.String("patient"),
/// 				GroupIndexes: pulumi.IntArray{
/// 					pulumi.Int(2),
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
/// resource "gcp_dataloss_preventionstoredinfotype" "with_stored_info_type_id" {
///   parent              = "projects/my-project-name"
///   description         = "Description"
///   display_name        = "Displayname"
///   stored_info_type_id = "id-"
///   regex = {
///     pattern       = "patient"
///     group_indexes = [2]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoType;
/// import com.pulumi.gcp.dataloss.PreventionStoredInfoTypeArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionStoredInfoTypeRegexArgs;
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
///         var withStoredInfoTypeId = new PreventionStoredInfoType("withStoredInfoTypeId", PreventionStoredInfoTypeArgs.builder()
///             .parent("projects/my-project-name")
///             .description("Description")
///             .displayName("Displayname")
///             .storedInfoTypeId("id-")
///             .regex(PreventionStoredInfoTypeRegexArgs.builder()
///                 .pattern("patient")
///                 .groupIndexes(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   withStoredInfoTypeId:
///     type: gcp:dataloss:PreventionStoredInfoType
///     name: with_stored_info_type_id
///     properties:
///       parent: projects/my-project-name
///       description: Description
///       displayName: Displayname
///       storedInfoTypeId: id-
///       regex:
///         pattern: patient
///         groupIndexes:
///           - 2
/// ```
///
///
/// ## Import
///
/// StoredInfoType can be imported using any of these accepted formats:
///
/// * `{{parent}}/storedInfoTypes/{{name}}`
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, StoredInfoType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType default {{parent}}/storedInfoTypes/{{name}}
/// $ pulumi import gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType default {{parent}}/{{name}}
/// ```
class PreventionStoredInfoType extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the info type.
  late final pulumi.Output<String?> description;
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  late final pulumi.Output<PreventionStoredInfoTypeDictionary?> dictionary;
  /// User set display name of the info type.
  late final pulumi.Output<String?> displayName;
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  late final pulumi.Output<PreventionStoredInfoTypeLargeCustomDictionary?> largeCustomDictionary;
  /// The resource name of the info type. Set by the server.
  late final pulumi.Output<String> name;
  /// The parent of the info type in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final pulumi.Output<String> parent;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  late final pulumi.Output<PreventionStoredInfoTypeRegex?> regex;
  /// The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is 100
  /// characters. Can be empty to allow the system to generate one.
  late final pulumi.Output<String> storedInfoTypeId;

  /// Creates a new [PreventionStoredInfoType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreventionStoredInfoType]. {@macro pulumi_dataloss_prevention_stored_info_type_prevention_stored_info_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreventionStoredInfoType(
    String name, {
    PreventionStoredInfoTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dictionary = registerOutput<PreventionStoredInfoTypeDictionary?>('dictionary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    largeCustomDictionary = registerOutput<PreventionStoredInfoTypeLargeCustomDictionary?>('largeCustomDictionary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeLargeCustomDictionary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    regex = registerOutput<PreventionStoredInfoTypeRegex?>('regex', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storedInfoTypeId = registerOutput<String>('storedInfoTypeId');
  }

  /// Gets an existing [PreventionStoredInfoType] resource's state with the given [name] and [id].
  static PreventionStoredInfoType get(
    String name,
    pulumi.Input<String> id, {
    PreventionStoredInfoTypeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PreventionStoredInfoType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PreventionStoredInfoType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dictionary = registerOutput<PreventionStoredInfoTypeDictionary?>('dictionary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    largeCustomDictionary = registerOutput<PreventionStoredInfoTypeLargeCustomDictionary?>('largeCustomDictionary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeLargeCustomDictionary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    regex = registerOutput<PreventionStoredInfoTypeRegex?>('regex', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storedInfoTypeId = registerOutput<String>('storedInfoTypeId');
  }

  /// Creates a typed reference to an existing [PreventionStoredInfoType] resource.
  PreventionStoredInfoType.reference(String urn)
    : super(
        'gcp:dataloss/preventionStoredInfoType:PreventionStoredInfoType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    dictionary = registerOutput<PreventionStoredInfoTypeDictionary?>('dictionary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    largeCustomDictionary = registerOutput<PreventionStoredInfoTypeLargeCustomDictionary?>('largeCustomDictionary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeLargeCustomDictionary.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    regex = registerOutput<PreventionStoredInfoTypeRegex?>('regex', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreventionStoredInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storedInfoTypeId = registerOutput<String>('storedInfoTypeId');
  }
}
