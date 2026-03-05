import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_args.dart';
import 'index_state.dart';

/// Cloud Firestore indexes enable simple and complex queries against documents in a database.
/// Both Firestore Native and Datastore Mode indexes are supported.
/// This resource manages composite indexes and not single field indexes.
/// To manage single field indexes, use the `gcp.firestore.Field` resource instead.
///
///
/// To get more information about Index, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.collectionGroups.indexes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/query-data/indexing)
///
/// &gt; **Warning:** This resource creates a Firestore Index on a project that already has
/// a Firestore database. If you haven't already created it, you may
/// create a `gcp.firestore.Database` resource and `location_id` set
/// to your chosen location. If you wish to use App Engine, you may
/// instead create a `gcp.appengine.Application` resource.
/// Your Firestore location will be the same as the App Engine location specified.
///
/// ## Example Usage
///
/// ### Firestore Index Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     fields: [
///         {
///             fieldPath: "name",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "description",
///             order: "DESCENDING",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     fields=[
///         {
///             "field_path": "name",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "description",
///             "order": "DESCENDING",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "name",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "description",
///                 Order = "DESCENDING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("name"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("description"),
/// 					Order:     pulumi.String("DESCENDING"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .fields(
///                 IndexFieldArgs.builder()
///                     .fieldPath("name")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("description")
///                     .order("DESCENDING")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       fields:
///         - fieldPath: name
///           order: ASCENDING
///         - fieldPath: description
///           order: DESCENDING
/// ```
///
/// ### Firestore Index Datastore Mode
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-dm",
///     locationId: "nam5",
///     type: "DATASTORE_MODE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     queryScope: "COLLECTION_RECURSIVE",
///     apiScope: "DATASTORE_MODE_API",
///     density: "SPARSE_ALL",
///     fields: [
///         {
///             fieldPath: "name",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "description",
///             order: "DESCENDING",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-dm",
///     location_id="nam5",
///     type="DATASTORE_MODE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     query_scope="COLLECTION_RECURSIVE",
///     api_scope="DATASTORE_MODE_API",
///     density="SPARSE_ALL",
///     fields=[
///         {
///             "field_path": "name",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "description",
///             "order": "DESCENDING",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-dm",
///         LocationId = "nam5",
///         Type = "DATASTORE_MODE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         QueryScope = "COLLECTION_RECURSIVE",
///         ApiScope = "DATASTORE_MODE_API",
///         Density = "SPARSE_ALL",
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "name",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "description",
///                 Order = "DESCENDING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-dm"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("DATASTORE_MODE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			QueryScope: pulumi.String("COLLECTION_RECURSIVE"),
/// 			ApiScope:   pulumi.String("DATASTORE_MODE_API"),
/// 			Density:    pulumi.String("SPARSE_ALL"),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("name"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("description"),
/// 					Order:     pulumi.String("DESCENDING"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-dm")
///             .locationId("nam5")
///             .type("DATASTORE_MODE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .queryScope("COLLECTION_RECURSIVE")
///             .apiScope("DATASTORE_MODE_API")
///             .density("SPARSE_ALL")
///             .fields(
///                 IndexFieldArgs.builder()
///                     .fieldPath("name")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("description")
///                     .order("DESCENDING")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-dm
///       locationId: nam5
///       type: DATASTORE_MODE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       queryScope: COLLECTION_RECURSIVE
///       apiScope: DATASTORE_MODE_API
///       density: SPARSE_ALL
///       fields:
///         - fieldPath: name
///           order: ASCENDING
///         - fieldPath: description
///           order: DESCENDING
/// ```
///
/// ### Firestore Index Vector
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-vector",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     fields: [
///         {
///             fieldPath: "field_name",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "__name__",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "description",
///             vectorConfig: {
///                 dimension: 128,
///                 flat: {},
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-vector",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     fields=[
///         {
///             "field_path": "field_name",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "__name__",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "description",
///             "vector_config": {
///                 "dimension": 128,
///                 "flat": {},
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-vector",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "field_name",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "__name__",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "description",
///                 VectorConfig = new Gcp.Firestore.Inputs.IndexFieldVectorConfigArgs
///                 {
///                     Dimension = 128,
///                     Flat = null,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-vector"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("field_name"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("__name__"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("description"),
/// 					VectorConfig: &firestore.IndexFieldVectorConfigArgs{
/// 						Dimension: pulumi.Int(128),
/// 						Flat:      &firestore.IndexFieldVectorConfigFlatArgs{},
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldVectorConfigArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldVectorConfigFlatArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-vector")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .fields(
///                 IndexFieldArgs.builder()
///                     .fieldPath("field_name")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("__name__")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("description")
///                     .vectorConfig(IndexFieldVectorConfigArgs.builder()
///                         .dimension(128)
///                         .flat(IndexFieldVectorConfigFlatArgs.builder()
///                             .build())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-vector
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       fields:
///         - fieldPath: field_name
///           order: ASCENDING
///         - fieldPath: __name__
///           order: ASCENDING
///         - fieldPath: description
///           vectorConfig:
///             dimension: 128
///             flat: {}
/// ```
///
/// ### Firestore Index Name Descending
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     fields: [{
///         fieldPath: "__name__",
///         order: "DESCENDING",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     fields=[{
///         "field_path": "__name__",
///         "order": "DESCENDING",
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
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "__name__",
///                 Order = "DESCENDING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("__name__"),
/// 					Order:     pulumi.String("DESCENDING"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .fields(IndexFieldArgs.builder()
///                 .fieldPath("__name__")
///                 .order("DESCENDING")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       fields:
///         - fieldPath: __name__
///           order: DESCENDING
/// ```
///
/// ### Firestore Index Mongodb Compatible Scope
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-mongodb-compatible",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     apiScope: "MONGODB_COMPATIBLE_API",
///     queryScope: "COLLECTION_GROUP",
///     multikey: true,
///     density: "DENSE",
///     fields: [
///         {
///             fieldPath: "name",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "description",
///             order: "DESCENDING",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-mongodb-compatible",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     api_scope="MONGODB_COMPATIBLE_API",
///     query_scope="COLLECTION_GROUP",
///     multikey=True,
///     density="DENSE",
///     fields=[
///         {
///             "field_path": "name",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "description",
///             "order": "DESCENDING",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-mongodb-compatible",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         ApiScope = "MONGODB_COMPATIBLE_API",
///         QueryScope = "COLLECTION_GROUP",
///         Multikey = true,
///         Density = "DENSE",
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "name",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "description",
///                 Order = "DESCENDING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-mongodb-compatible"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition:       pulumi.String("ENTERPRISE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			ApiScope:   pulumi.String("MONGODB_COMPATIBLE_API"),
/// 			QueryScope: pulumi.String("COLLECTION_GROUP"),
/// 			Multikey:   pulumi.Bool(true),
/// 			Density:    pulumi.String("DENSE"),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("name"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("description"),
/// 					Order:     pulumi.String("DESCENDING"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-mongodb-compatible")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .apiScope("MONGODB_COMPATIBLE_API")
///             .queryScope("COLLECTION_GROUP")
///             .multikey(true)
///             .density("DENSE")
///             .fields(
///                 IndexFieldArgs.builder()
///                     .fieldPath("name")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("description")
///                     .order("DESCENDING")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-mongodb-compatible
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       apiScope: MONGODB_COMPATIBLE_API
///       queryScope: COLLECTION_GROUP
///       multikey: true
///       density: DENSE
///       fields:
///         - fieldPath: name
///           order: ASCENDING
///         - fieldPath: description
///           order: DESCENDING
/// ```
///
/// ### Firestore Index Sparse Any
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-sparse-any",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     apiScope: "MONGODB_COMPATIBLE_API",
///     queryScope: "COLLECTION_GROUP",
///     multikey: true,
///     density: "SPARSE_ANY",
///     fields: [
///         {
///             fieldPath: "name",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "description",
///             order: "DESCENDING",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-sparse-any",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     api_scope="MONGODB_COMPATIBLE_API",
///     query_scope="COLLECTION_GROUP",
///     multikey=True,
///     density="SPARSE_ANY",
///     fields=[
///         {
///             "field_path": "name",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "description",
///             "order": "DESCENDING",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-sparse-any",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         ApiScope = "MONGODB_COMPATIBLE_API",
///         QueryScope = "COLLECTION_GROUP",
///         Multikey = true,
///         Density = "SPARSE_ANY",
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "name",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "description",
///                 Order = "DESCENDING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-sparse-any"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition:       pulumi.String("ENTERPRISE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			ApiScope:   pulumi.String("MONGODB_COMPATIBLE_API"),
/// 			QueryScope: pulumi.String("COLLECTION_GROUP"),
/// 			Multikey:   pulumi.Bool(true),
/// 			Density:    pulumi.String("SPARSE_ANY"),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("name"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("description"),
/// 					Order:     pulumi.String("DESCENDING"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-sparse-any")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .apiScope("MONGODB_COMPATIBLE_API")
///             .queryScope("COLLECTION_GROUP")
///             .multikey(true)
///             .density("SPARSE_ANY")
///             .fields(
///                 IndexFieldArgs.builder()
///                     .fieldPath("name")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("description")
///                     .order("DESCENDING")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-sparse-any
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       apiScope: MONGODB_COMPATIBLE_API
///       queryScope: COLLECTION_GROUP
///       multikey: true
///       density: SPARSE_ANY
///       fields:
///         - fieldPath: name
///           order: ASCENDING
///         - fieldPath: description
///           order: DESCENDING
/// ```
///
/// ### Firestore Index Unique
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id-unique",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     databaseEdition: "ENTERPRISE",
///     deleteProtectionState: "DELETE_PROTECTION_DISABLED",
///     deletionPolicy: "DELETE",
/// });
/// const my_index = new gcp.firestore.Index("my-index", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "atestcollection",
///     apiScope: "MONGODB_COMPATIBLE_API",
///     queryScope: "COLLECTION_GROUP",
///     multikey: true,
///     density: "DENSE",
///     unique: true,
///     fields: [
///         {
///             fieldPath: "name",
///             order: "ASCENDING",
///         },
///         {
///             fieldPath: "description",
///             order: "DESCENDING",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id-unique",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     database_edition="ENTERPRISE",
///     delete_protection_state="DELETE_PROTECTION_DISABLED",
///     deletion_policy="DELETE")
/// my_index = gcp.firestore.Index("my-index",
///     project="my-project-name",
///     database=database.name,
///     collection="atestcollection",
///     api_scope="MONGODB_COMPATIBLE_API",
///     query_scope="COLLECTION_GROUP",
///     multikey=True,
///     density="DENSE",
///     unique=True,
///     fields=[
///         {
///             "field_path": "name",
///             "order": "ASCENDING",
///         },
///         {
///             "field_path": "description",
///             "order": "DESCENDING",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id-unique",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DatabaseEdition = "ENTERPRISE",
///         DeleteProtectionState = "DELETE_PROTECTION_DISABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var my_index = new Gcp.Firestore.Index("my-index", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "atestcollection",
///         ApiScope = "MONGODB_COMPATIBLE_API",
///         QueryScope = "COLLECTION_GROUP",
///         Multikey = true,
///         Density = "DENSE",
///         Unique = true,
///         Fields = new[]
///         {
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "name",
///                 Order = "ASCENDING",
///             },
///             new Gcp.Firestore.Inputs.IndexFieldArgs
///             {
///                 FieldPath = "description",
///                 Order = "DESCENDING",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id-unique"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DatabaseEdition:       pulumi.String("ENTERPRISE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_DISABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewIndex(ctx, "my-index", &firestore.IndexArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("atestcollection"),
/// 			ApiScope:   pulumi.String("MONGODB_COMPATIBLE_API"),
/// 			QueryScope: pulumi.String("COLLECTION_GROUP"),
/// 			Multikey:   pulumi.Bool(true),
/// 			Density:    pulumi.String("DENSE"),
/// 			Unique:     pulumi.Bool(true),
/// 			Fields: firestore.IndexFieldArray{
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("name"),
/// 					Order:     pulumi.String("ASCENDING"),
/// 				},
/// 				&firestore.IndexFieldArgs{
/// 					FieldPath: pulumi.String("description"),
/// 					Order:     pulumi.String("DESCENDING"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Index;
/// import com.pulumi.gcp.firestore.IndexArgs;
/// import com.pulumi.gcp.firestore.inputs.IndexFieldArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id-unique")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .databaseEdition("ENTERPRISE")
///             .deleteProtectionState("DELETE_PROTECTION_DISABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var my_index = new Index("my-index", IndexArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("atestcollection")
///             .apiScope("MONGODB_COMPATIBLE_API")
///             .queryScope("COLLECTION_GROUP")
///             .multikey(true)
///             .density("DENSE")
///             .unique(true)
///             .fields(
///                 IndexFieldArgs.builder()
///                     .fieldPath("name")
///                     .order("ASCENDING")
///                     .build(),
///                 IndexFieldArgs.builder()
///                     .fieldPath("description")
///                     .order("DESCENDING")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id-unique
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       databaseEdition: ENTERPRISE
///       deleteProtectionState: DELETE_PROTECTION_DISABLED
///       deletionPolicy: DELETE
///   my-index:
///     type: gcp:firestore:Index
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: atestcollection
///       apiScope: MONGODB_COMPATIBLE_API
///       queryScope: COLLECTION_GROUP
///       multikey: true
///       density: DENSE
///       unique: true
///       fields:
///         - fieldPath: name
///           order: ASCENDING
///         - fieldPath: description
///           order: DESCENDING
/// ```
///
///
/// ## Import
///
/// Index can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Index can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/index:Index default {{name}}
/// ```
class Index extends pulumi.CustomResource {
  /// The API scope at which a query is run.
  /// Default value is `ANY_API`.
  /// Possible values are: `ANY_API`, `DATASTORE_MODE_API`, `MONGODB_COMPATIBLE_API`.
  late final pulumi.Output<String?> apiScope;
  /// The collection being indexed.
  late final pulumi.Output<String> collection;
  /// The Firestore database id. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;
  /// The density configuration for this index.
  /// Possible values are: `SPARSE_ALL`, `SPARSE_ANY`, `DENSE`.
  late final pulumi.Output<String> density;
  /// The fields supported by this index. The last non-stored field entry is
  /// always for the field path `__name__`. If, on creation, `__name__` was not
  /// specified as the last field, it will be added automatically with the same
  /// direction as that of the last field defined. If the final field in a
  /// composite index is not directional, the `__name__` will be ordered
  /// `"ASCENDING"` (unless explicitly specified otherwise).
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> fields;
  /// Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to indexes with MONGODB_COMPATIBLE_API ApiScope.
  late final pulumi.Output<bool?> multikey;
  /// A server defined name for this index. Format:
  /// `projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/indexes/{{server_generated_id}}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The scope at which a query is run.
  /// Default value is `COLLECTION`.
  /// Possible values are: `COLLECTION`, `COLLECTION_GROUP`, `COLLECTION_RECURSIVE`.
  late final pulumi.Output<String?> queryScope;
  /// Whether it is an unique index. Unique index ensures all values for the indexed field(s) are unique across documents.
  late final pulumi.Output<bool> unique;

  /// Creates a new [Index].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Index]. {@macro pulumi_firestore_index_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Index(
    String name, {
    IndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/index:Index',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiScope = registerOutput<String?>('apiScope');
    collection = registerOutput<String>('collection');
    database = registerOutput<String?>('database');
    density = registerOutput<String>('density');
    fields = registerOutput<List<Map<String, dynamic>>>('fields');
    multikey = registerOutput<bool?>('multikey');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    queryScope = registerOutput<String?>('queryScope');
    unique = registerOutput<bool>('unique');
  }

  /// Gets an existing [Index] resource's state with the given [name] and [id].
  static Index get(
    String name,
    pulumi.Input<String> id, {
    IndexState? state,
  }) {
    return Index._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Index._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/index:Index',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiScope = registerOutput<String?>('apiScope');
    collection = registerOutput<String>('collection');
    database = registerOutput<String?>('database');
    density = registerOutput<String>('density');
    fields = registerOutput<List<Map<String, dynamic>>>('fields');
    multikey = registerOutput<bool?>('multikey');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    queryScope = registerOutput<String?>('queryScope');
    unique = registerOutput<bool>('unique');
  }
}
