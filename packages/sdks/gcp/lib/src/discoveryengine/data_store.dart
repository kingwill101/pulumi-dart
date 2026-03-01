import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_store_advanced_site_search_config.dart';
import 'data_store_args.dart';
import 'data_store_document_processing_config.dart';
import 'data_store_state.dart';

/// Data store is a collection of websites and documents used to find answers for
/// end-user's questions in Discovery Engine (a.k.a. Vertex AI Search and
/// Conversation).
///
///
/// To get more information about DataStore, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores)
/// * How-to Guides
/// * [Create a search data store](https://cloud.google.com/generative-ai-app-builder/docs/create-data-store-es)
///
/// ## Example Usage
///
/// ### Discoveryengine Datastore Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.DataStore("basic", {
///     location: "global",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
///     skipDefaultSchemaCreation: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.DataStore("basic",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False,
///     skip_default_schema_creation=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DiscoveryEngine.DataStore("basic", new()
///     {
///         Location = "global",
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///         SkipDefaultSchemaCreation = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewDataStore(ctx, "basic", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(false),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
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
///         var basic = new DataStore("basic", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .skipDefaultSchemaCreation(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:DataStore
///     properties:
///       location: global
///       dataStoreId: data-store-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///       skipDefaultSchemaCreation: false
/// ```
///
/// ### Discoveryengine Datastore Kms Key Name
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const kmsKeyName = new gcp.discoveryengine.DataStore("kms_key_name", {
///     location: "us",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     kmsKeyName: "kms-key",
///     createAdvancedSiteSearch: false,
///     skipDefaultSchemaCreation: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// kms_key_name = gcp.discoveryengine.DataStore("kms_key_name",
///     location="us",
///     data_store_id="data-store-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     kms_key_name="kms-key",
///     create_advanced_site_search=False,
///     skip_default_schema_creation=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kmsKeyName = new Gcp.DiscoveryEngine.DataStore("kms_key_name", new()
///     {
///         Location = "us",
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         KmsKeyName = "kms-key",
///         CreateAdvancedSiteSearch = false,
///         SkipDefaultSchemaCreation = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewDataStore(ctx, "kms_key_name", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("us"),
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			KmsKeyName:                pulumi.String("kms-key"),
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(false),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
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
///         var kmsKeyName = new DataStore("kmsKeyName", DataStoreArgs.builder()
///             .location("us")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .kmsKeyName("kms-key")
///             .createAdvancedSiteSearch(false)
///             .skipDefaultSchemaCreation(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kmsKeyName:
///     type: gcp:discoveryengine:DataStore
///     name: kms_key_name
///     properties:
///       location: us
///       dataStoreId: data-store-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       kmsKeyName: kms-key
///       createAdvancedSiteSearch: false
///       skipDefaultSchemaCreation: false
/// ```
///
/// ### Discoveryengine Datastore Document Processing Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const documentProcessingConfig = new gcp.discoveryengine.DataStore("document_processing_config", {
///     location: "global",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-structured-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "NO_CONTENT",
///     solutionTypes: ["SOLUTION_TYPE_SEARCH"],
///     createAdvancedSiteSearch: false,
///     documentProcessingConfig: {
///         defaultParsingConfig: {
///             digitalParsingConfig: {},
///         },
///         parsingConfigOverrides: [{
///             fileType: "pdf",
///             ocrParsingConfig: {
///                 useNativeText: true,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// document_processing_config = gcp.discoveryengine.DataStore("document_processing_config",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-structured-datastore",
///     industry_vertical="GENERIC",
///     content_config="NO_CONTENT",
///     solution_types=["SOLUTION_TYPE_SEARCH"],
///     create_advanced_site_search=False,
///     document_processing_config={
///         "default_parsing_config": {
///             "digital_parsing_config": {},
///         },
///         "parsing_config_overrides": [{
///             "file_type": "pdf",
///             "ocr_parsing_config": {
///                 "use_native_text": True,
///             },
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
///     var documentProcessingConfig = new Gcp.DiscoveryEngine.DataStore("document_processing_config", new()
///     {
///         Location = "global",
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-structured-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "NO_CONTENT",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_SEARCH",
///         },
///         CreateAdvancedSiteSearch = false,
///         DocumentProcessingConfig = new Gcp.DiscoveryEngine.Inputs.DataStoreDocumentProcessingConfigArgs
///         {
///             DefaultParsingConfig = new Gcp.DiscoveryEngine.Inputs.DataStoreDocumentProcessingConfigDefaultParsingConfigArgs
///             {
///                 DigitalParsingConfig = null,
///             },
///             ParsingConfigOverrides = new[]
///             {
///                 new Gcp.DiscoveryEngine.Inputs.DataStoreDocumentProcessingConfigParsingConfigOverrideArgs
///                 {
///                     FileType = "pdf",
///                     OcrParsingConfig = new Gcp.DiscoveryEngine.Inputs.DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfigArgs
///                     {
///                         UseNativeText = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewDataStore(ctx, "document_processing_config", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-structured-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("NO_CONTENT"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_SEARCH"),
/// 			},
/// 			CreateAdvancedSiteSearch: pulumi.Bool(false),
/// 			DocumentProcessingConfig: &discoveryengine.DataStoreDocumentProcessingConfigArgs{
/// 				DefaultParsingConfig: &discoveryengine.DataStoreDocumentProcessingConfigDefaultParsingConfigArgs{
/// 					DigitalParsingConfig: &discoveryengine.DataStoreDocumentProcessingConfigDefaultParsingConfigDigitalParsingConfigArgs{},
/// 				},
/// 				ParsingConfigOverrides: discoveryengine.DataStoreDocumentProcessingConfigParsingConfigOverrideArray{
/// 					&discoveryengine.DataStoreDocumentProcessingConfigParsingConfigOverrideArgs{
/// 						FileType: pulumi.String("pdf"),
/// 						OcrParsingConfig: &discoveryengine.DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfigArgs{
/// 							UseNativeText: pulumi.Bool(true),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataStoreDocumentProcessingConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataStoreDocumentProcessingConfigDefaultParsingConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataStoreDocumentProcessingConfigDefaultParsingConfigDigitalParsingConfigArgs;
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
///         var documentProcessingConfig = new DataStore("documentProcessingConfig", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-structured-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("NO_CONTENT")
///             .solutionTypes("SOLUTION_TYPE_SEARCH")
///             .createAdvancedSiteSearch(false)
///             .documentProcessingConfig(DataStoreDocumentProcessingConfigArgs.builder()
///                 .defaultParsingConfig(DataStoreDocumentProcessingConfigDefaultParsingConfigArgs.builder()
///                     .digitalParsingConfig(DataStoreDocumentProcessingConfigDefaultParsingConfigDigitalParsingConfigArgs.builder()
///                         .build())
///                     .build())
///                 .parsingConfigOverrides(DataStoreDocumentProcessingConfigParsingConfigOverrideArgs.builder()
///                     .fileType("pdf")
///                     .ocrParsingConfig(DataStoreDocumentProcessingConfigParsingConfigOverrideOcrParsingConfigArgs.builder()
///                         .useNativeText(true)
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
///   documentProcessingConfig:
///     type: gcp:discoveryengine:DataStore
///     name: document_processing_config
///     properties:
///       location: global
///       dataStoreId: data-store-id
///       displayName: tf-test-structured-datastore
///       industryVertical: GENERIC
///       contentConfig: NO_CONTENT
///       solutionTypes:
///         - SOLUTION_TYPE_SEARCH
///       createAdvancedSiteSearch: false
///       documentProcessingConfig:
///         defaultParsingConfig:
///           digitalParsingConfig: {}
///         parsingConfigOverrides:
///           - fileType: pdf
///             ocrParsingConfig:
///               useNativeText: true
/// ```
///
/// ### Discoveryengine Datastore Advanced Site Search Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advancedSiteSearchConfig = new gcp.discoveryengine.DataStore("advanced_site_search_config", {
///     location: "global",
///     dataStoreId: "data-store-id",
///     displayName: "tf-test-advanced-site-search-config-datastore",
///     industryVertical: "GENERIC",
///     contentConfig: "PUBLIC_WEBSITE",
///     solutionTypes: ["SOLUTION_TYPE_CHAT"],
///     createAdvancedSiteSearch: true,
///     skipDefaultSchemaCreation: false,
///     advancedSiteSearchConfig: {
///         disableInitialIndex: true,
///         disableAutomaticRefresh: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advanced_site_search_config = gcp.discoveryengine.DataStore("advanced_site_search_config",
///     location="global",
///     data_store_id="data-store-id",
///     display_name="tf-test-advanced-site-search-config-datastore",
///     industry_vertical="GENERIC",
///     content_config="PUBLIC_WEBSITE",
///     solution_types=["SOLUTION_TYPE_CHAT"],
///     create_advanced_site_search=True,
///     skip_default_schema_creation=False,
///     advanced_site_search_config={
///         "disable_initial_index": True,
///         "disable_automatic_refresh": True,
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
///     var advancedSiteSearchConfig = new Gcp.DiscoveryEngine.DataStore("advanced_site_search_config", new()
///     {
///         Location = "global",
///         DataStoreId = "data-store-id",
///         DisplayName = "tf-test-advanced-site-search-config-datastore",
///         IndustryVertical = "GENERIC",
///         ContentConfig = "PUBLIC_WEBSITE",
///         SolutionTypes = new[]
///         {
///             "SOLUTION_TYPE_CHAT",
///         },
///         CreateAdvancedSiteSearch = true,
///         SkipDefaultSchemaCreation = false,
///         AdvancedSiteSearchConfig = new Gcp.DiscoveryEngine.Inputs.DataStoreAdvancedSiteSearchConfigArgs
///         {
///             DisableInitialIndex = true,
///             DisableAutomaticRefresh = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discoveryengine.NewDataStore(ctx, "advanced_site_search_config", &discoveryengine.DataStoreArgs{
/// 			Location:         pulumi.String("global"),
/// 			DataStoreId:      pulumi.String("data-store-id"),
/// 			DisplayName:      pulumi.String("tf-test-advanced-site-search-config-datastore"),
/// 			IndustryVertical: pulumi.String("GENERIC"),
/// 			ContentConfig:    pulumi.String("PUBLIC_WEBSITE"),
/// 			SolutionTypes: pulumi.StringArray{
/// 				pulumi.String("SOLUTION_TYPE_CHAT"),
/// 			},
/// 			CreateAdvancedSiteSearch:  pulumi.Bool(true),
/// 			SkipDefaultSchemaCreation: pulumi.Bool(false),
/// 			AdvancedSiteSearchConfig: &discoveryengine.DataStoreAdvancedSiteSearchConfigArgs{
/// 				DisableInitialIndex:     pulumi.Bool(true),
/// 				DisableAutomaticRefresh: pulumi.Bool(true),
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
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.DataStoreAdvancedSiteSearchConfigArgs;
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
///         var advancedSiteSearchConfig = new DataStore("advancedSiteSearchConfig", DataStoreArgs.builder()
///             .location("global")
///             .dataStoreId("data-store-id")
///             .displayName("tf-test-advanced-site-search-config-datastore")
///             .industryVertical("GENERIC")
///             .contentConfig("PUBLIC_WEBSITE")
///             .solutionTypes("SOLUTION_TYPE_CHAT")
///             .createAdvancedSiteSearch(true)
///             .skipDefaultSchemaCreation(false)
///             .advancedSiteSearchConfig(DataStoreAdvancedSiteSearchConfigArgs.builder()
///                 .disableInitialIndex(true)
///                 .disableAutomaticRefresh(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   advancedSiteSearchConfig:
///     type: gcp:discoveryengine:DataStore
///     name: advanced_site_search_config
///     properties:
///       location: global
///       dataStoreId: data-store-id
///       displayName: tf-test-advanced-site-search-config-datastore
///       industryVertical: GENERIC
///       contentConfig: PUBLIC_WEBSITE
///       solutionTypes:
///         - SOLUTION_TYPE_CHAT
///       createAdvancedSiteSearch: true
///       skipDefaultSchemaCreation: false
///       advancedSiteSearchConfig:
///         disableInitialIndex: true
///         disableAutomaticRefresh: true
/// ```
///
///
/// ## Import
///
/// DataStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}`
///
/// * `{{project}}/{{location}}/{{data_store_id}}`
///
/// * `{{location}}/{{data_store_id}}`
///
/// When using the `pulumi import` command, DataStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataStore:DataStore default projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataStore:DataStore default {{project}}/{{location}}/{{data_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/dataStore:DataStore default {{location}}/{{data_store_id}}
/// ```
class DataStore extends pulumi.CustomResource {
  /// Configuration data for advance site search.
  /// Structure is documented below.
  late final pulumi.Output<DataStoreAdvancedSiteSearchConfig> advancedSiteSearchConfig;
  /// The content config of the data store.
  /// Possible values are: `NO_CONTENT`, `CONTENT_REQUIRED`, `PUBLIC_WEBSITE`.
  late final pulumi.Output<String> contentConfig;
  /// If true, an advanced data store for site search will be created. If the
  /// data store is not configured as site search (GENERIC vertical and
  /// PUBLIC_WEBSITE contentConfig), this flag will be ignored.
  late final pulumi.Output<bool?> createAdvancedSiteSearch;
  /// Timestamp when the DataStore was created.
  late final pulumi.Output<String> createTime;
  /// The unique id of the data store.
  late final pulumi.Output<String> dataStoreId;
  /// The id of the default Schema associated with this data store.
  late final pulumi.Output<String> defaultSchemaId;
  /// The display name of the data store. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  late final pulumi.Output<String> displayName;
  /// Configuration for Document understanding and enrichment.
  /// Structure is documented below.
  late final pulumi.Output<DataStoreDocumentProcessingConfig?> documentProcessingConfig;
  /// The industry vertical that the data store registers.
  /// Possible values are: `GENERIC`, `MEDIA`, `HEALTHCARE_FHIR`.
  late final pulumi.Output<String> industryVertical;
  /// KMS key resource name which will be used to encrypt resources:
  /// `/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`
  /// The KMS key to be used to protect this DataStore at creation time. Must be
  /// set for requests that need to comply with CMEK Org Policy protections.
  /// If this field is set and processed successfully, the DataStore will be
  /// protected by the KMS key, as indicated in the cmek_config field.
  late final pulumi.Output<String?> kmsKeyName;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;
  /// The unique full resource name of the data store. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// A boolean flag indicating whether to skip the default schema creation for
  /// the data store. Only enable this flag if you are certain that the default
  /// schema is incompatible with your use case.
  /// If set to true, you must manually create a schema for the data store
  /// before any documents can be ingested.
  /// This flag cannot be specified if `data_store.starting_schema` is
  /// specified.
  late final pulumi.Output<bool?> skipDefaultSchemaCreation;
  /// The solutions that the data store enrolls.
  /// Each value may be one of: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  late final pulumi.Output<List<String>?> solutionTypes;

  /// Creates a new [DataStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataStore]. {@macro pulumi_discoveryengine_data_store_data_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataStore(
    String name, {
    DataStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/dataStore:DataStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedSiteSearchConfig = registerOutput<DataStoreAdvancedSiteSearchConfig>('advancedSiteSearchConfig');
    this.contentConfig = registerOutput<String>('contentConfig');
    this.createAdvancedSiteSearch = registerOutput<bool?>('createAdvancedSiteSearch');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.defaultSchemaId = registerOutput<String>('defaultSchemaId');
    this.displayName = registerOutput<String>('displayName');
    this.documentProcessingConfig = registerOutput<DataStoreDocumentProcessingConfig?>('documentProcessingConfig');
    this.industryVertical = registerOutput<String>('industryVertical');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.skipDefaultSchemaCreation = registerOutput<bool?>('skipDefaultSchemaCreation');
    this.solutionTypes = registerOutput<List<String>?>('solutionTypes');
  }

  /// Gets an existing [DataStore] resource's state with the given [name] and [id].
  static DataStore get(
    String name,
    pulumi.Input<String> id, {
    DataStoreState? state,
  }) {
    return DataStore._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataStore._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/dataStore:DataStore',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedSiteSearchConfig = registerOutput<DataStoreAdvancedSiteSearchConfig>('advancedSiteSearchConfig');
    this.contentConfig = registerOutput<String>('contentConfig');
    this.createAdvancedSiteSearch = registerOutput<bool?>('createAdvancedSiteSearch');
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.defaultSchemaId = registerOutput<String>('defaultSchemaId');
    this.displayName = registerOutput<String>('displayName');
    this.documentProcessingConfig = registerOutput<DataStoreDocumentProcessingConfig?>('documentProcessingConfig');
    this.industryVertical = registerOutput<String>('industryVertical');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.skipDefaultSchemaCreation = registerOutput<bool?>('skipDefaultSchemaCreation');
    this.solutionTypes = registerOutput<List<String>?>('solutionTypes');
  }
}
