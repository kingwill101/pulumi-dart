import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_access.dart';
import 'dataset_args.dart';
import 'dataset_default_encryption_configuration.dart';
import 'dataset_external_catalog_dataset_options.dart';
import 'dataset_external_dataset_reference.dart';
import 'dataset_state.dart';

/// Datasets allow you to organize and control access to your tables.
///
///
/// To get more information about Dataset, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/datasets)
/// * How-to Guides
/// * [Datasets Intro](https://cloud.google.com/bigquery/docs/datasets-intro)
///
/// &gt; **Warning:** You must specify the role field using the legacy format `OWNER` instead of `roles/bigquery.dataOwner`.
/// The API does accept both formats but it will always return the legacy format which results in Terraform
/// showing permanent diff on each plan and apply operation.
///
/// ## Example Usage
///
/// ### Bigquery Dataset Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bqowner = new gcp.serviceaccount.Account("bqowner", {accountId: "bqowner"});
/// const dataset = new gcp.bigquery.Dataset("dataset", {
///     datasetId: "example_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "EU",
///     defaultTableExpirationMs: 3600000,
///     labels: {
///         env: "default",
///     },
///     accesses: [
///         {
///             role: "roles/bigquery.dataOwner",
///             userByEmail: bqowner.email,
///         },
///         {
///             role: "READER",
///             domain: "hashicorp.com",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bqowner = gcp.serviceaccount.Account("bqowner", account_id="bqowner")
/// dataset = gcp.bigquery.Dataset("dataset",
///     dataset_id="example_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="EU",
///     default_table_expiration_ms=3600000,
///     labels={
///         "env": "default",
///     },
///     accesses=[
///         {
///             "role": "roles/bigquery.dataOwner",
///             "user_by_email": bqowner.email,
///         },
///         {
///             "role": "READER",
///             "domain": "hashicorp.com",
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
///     var bqowner = new Gcp.ServiceAccount.Account("bqowner", new()
///     {
///         AccountId = "bqowner",
///     });
///
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "EU",
///         DefaultTableExpirationMs = 3600000,
///         Labels =
///         {
///             { "env", "default" },
///         },
///         Accesses = new[]
///         {
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "roles/bigquery.dataOwner",
///                 UserByEmail = bqowner.Email,
///             },
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "READER",
///                 Domain = "hashicorp.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bqowner, err := serviceaccount.NewAccount(ctx, "bqowner", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("bqowner"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("example_dataset"),
/// 			FriendlyName:             pulumi.String("test"),
/// 			Description:              pulumi.String("This is a test description"),
/// 			Location:                 pulumi.String("EU"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
/// 			},
/// 			Accesses: bigquery.DatasetAccessTypeArray{
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:        pulumi.String("roles/bigquery.dataOwner"),
/// 					UserByEmail: bqowner.Email,
/// 				},
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:   pulumi.String("READER"),
/// 					Domain: pulumi.String("hashicorp.com"),
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
/// resource "gcp_bigquery_dataset" "dataset" {
///   dataset_id                  = "example_dataset"
///   friendly_name               = "test"
///   description                 = "This is a test description"
///   location                    = "EU"
///   default_table_expiration_ms = 3600000
///   labels = {
///     "env" = "default"
///   }
///   accesses {
///     role          = "roles/bigquery.dataOwner"
///     user_by_email = gcp_serviceaccount_account.bqowner.email
///   }
///   accesses {
///     role   = "READER"
///     domain = "hashicorp.com"
///   }
/// }
/// resource "gcp_serviceaccount_account" "bqowner" {
///   account_id = "bqowner"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessArgs;
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
///         var bqowner = new Account("bqowner", AccountArgs.builder()
///             .accountId("bqowner")
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("EU")
///             .defaultTableExpirationMs(3600000)
///             .labels(Map.of("env", "default"))
///             .accesses(
///                 DatasetAccessArgs.builder()
///                     .role("roles/bigquery.dataOwner")
///                     .userByEmail(bqowner.email())
///                     .build(),
///                 DatasetAccessArgs.builder()
///                     .role("READER")
///                     .domain("hashicorp.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///       friendlyName: test
///       description: This is a test description
///       location: EU
///       defaultTableExpirationMs: 3.6e+06
///       labels:
///         env: default
///       accesses:
///         - role: roles/bigquery.dataOwner
///           userByEmail: ${bqowner.email}
///         - role: READER
///           domain: hashicorp.com
///   bqowner:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: bqowner
/// ```
///
/// ### Bigquery Dataset Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyRing = new gcp.kms.KeyRing("key_ring", {
///     name: "example-keyring",
///     location: "us",
/// });
/// const cryptoKey = new gcp.kms.CryptoKey("crypto_key", {
///     name: "example-key",
///     keyRing: keyRing.id,
/// });
/// const dataset = new gcp.bigquery.Dataset("dataset", {
///     datasetId: "example_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
///     defaultTableExpirationMs: 3600000,
///     defaultEncryptionConfiguration: {
///         kmsKeyName: cryptoKey.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// key_ring = gcp.kms.KeyRing("key_ring",
///     name="example-keyring",
///     location="us")
/// crypto_key = gcp.kms.CryptoKey("crypto_key",
///     name="example-key",
///     key_ring=key_ring.id)
/// dataset = gcp.bigquery.Dataset("dataset",
///     dataset_id="example_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US",
///     default_table_expiration_ms=3600000,
///     default_encryption_configuration={
///         "kms_key_name": crypto_key.id,
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
///     var keyRing = new Gcp.Kms.KeyRing("key_ring", new()
///     {
///         Name = "example-keyring",
///         Location = "us",
///     });
///
///     var cryptoKey = new Gcp.Kms.CryptoKey("crypto_key", new()
///     {
///         Name = "example-key",
///         KeyRing = keyRing.Id,
///     });
///
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "example_dataset",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///         DefaultTableExpirationMs = 3600000,
///         DefaultEncryptionConfiguration = new Gcp.BigQuery.Inputs.DatasetDefaultEncryptionConfigurationArgs
///         {
///             KmsKeyName = cryptoKey.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyRing, err := kms.NewKeyRing(ctx, "key_ring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("example-keyring"),
/// 			Location: pulumi.String("us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKey(ctx, "crypto_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("example-key"),
/// 			KeyRing: keyRing.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("example_dataset"),
/// 			FriendlyName:             pulumi.String("test"),
/// 			Description:              pulumi.String("This is a test description"),
/// 			Location:                 pulumi.String("US"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			DefaultEncryptionConfiguration: &bigquery.DatasetDefaultEncryptionConfigurationArgs{
/// 				KmsKeyName: cryptoKey.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_bigquery_dataset" "dataset" {
///   dataset_id                  = "example_dataset"
///   friendly_name               = "test"
///   description                 = "This is a test description"
///   location                    = "US"
///   default_table_expiration_ms = 3600000
///   default_encryption_configuration = {
///     kms_key_name = gcp_kms_cryptokey.crypto_key.id
///   }
/// }
/// resource "gcp_kms_cryptokey" "crypto_key" {
///   name     = "example-key"
///   key_ring = gcp_kms_keyring.key_ring.id
/// }
/// resource "gcp_kms_keyring" "key_ring" {
///   name     = "example-keyring"
///   location = "us"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetDefaultEncryptionConfigurationArgs;
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
///         var keyRing = new KeyRing("keyRing", KeyRingArgs.builder()
///             .name("example-keyring")
///             .location("us")
///             .build());
///
///         var cryptoKey = new CryptoKey("cryptoKey", CryptoKeyArgs.builder()
///             .name("example-key")
///             .keyRing(keyRing.id())
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .defaultTableExpirationMs(3600000)
///             .defaultEncryptionConfiguration(DatasetDefaultEncryptionConfigurationArgs.builder()
///                 .kmsKeyName(cryptoKey.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///       defaultTableExpirationMs: 3.6e+06
///       defaultEncryptionConfiguration:
///         kmsKeyName: ${cryptoKey.id}
///   cryptoKey:
///     type: gcp:kms:CryptoKey
///     name: crypto_key
///     properties:
///       name: example-key
///       keyRing: ${keyRing.id}
///   keyRing:
///     type: gcp:kms:KeyRing
///     name: key_ring
///     properties:
///       name: example-keyring
///       location: us
/// ```
///
/// ### Bigquery Dataset Authorized Dataset
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bqowner = new gcp.serviceaccount.Account("bqowner", {accountId: "bqowner"});
/// const _public = new gcp.bigquery.Dataset("public", {
///     datasetId: "public",
///     friendlyName: "test",
///     description: "This dataset is public",
///     location: "EU",
///     defaultTableExpirationMs: 3600000,
///     labels: {
///         env: "default",
///     },
///     accesses: [
///         {
///             role: "OWNER",
///             userByEmail: bqowner.email,
///         },
///         {
///             role: "READER",
///             domain: "hashicorp.com",
///         },
///     ],
/// });
/// const dataset = new gcp.bigquery.Dataset("dataset", {
///     datasetId: "private",
///     friendlyName: "test",
///     description: "This dataset is private",
///     location: "EU",
///     defaultTableExpirationMs: 3600000,
///     labels: {
///         env: "default",
///     },
///     accesses: [
///         {
///             role: "OWNER",
///             userByEmail: bqowner.email,
///         },
///         {
///             role: "READER",
///             domain: "hashicorp.com",
///         },
///         {
///             dataset: {
///                 dataset: {
///                     projectId: _public.project,
///                     datasetId: _public.datasetId,
///                 },
///                 targetTypes: ["VIEWS"],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bqowner = gcp.serviceaccount.Account("bqowner", account_id="bqowner")
/// public = gcp.bigquery.Dataset("public",
///     dataset_id="public",
///     friendly_name="test",
///     description="This dataset is public",
///     location="EU",
///     default_table_expiration_ms=3600000,
///     labels={
///         "env": "default",
///     },
///     accesses=[
///         {
///             "role": "OWNER",
///             "user_by_email": bqowner.email,
///         },
///         {
///             "role": "READER",
///             "domain": "hashicorp.com",
///         },
///     ])
/// dataset = gcp.bigquery.Dataset("dataset",
///     dataset_id="private",
///     friendly_name="test",
///     description="This dataset is private",
///     location="EU",
///     default_table_expiration_ms=3600000,
///     labels={
///         "env": "default",
///     },
///     accesses=[
///         {
///             "role": "OWNER",
///             "user_by_email": bqowner.email,
///         },
///         {
///             "role": "READER",
///             "domain": "hashicorp.com",
///         },
///         {
///             "dataset": {
///                 "dataset": {
///                     "project_id": public.project,
///                     "dataset_id": public.dataset_id,
///                 },
///                 "target_types": ["VIEWS"],
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
///     var bqowner = new Gcp.ServiceAccount.Account("bqowner", new()
///     {
///         AccountId = "bqowner",
///     });
///
///     var @public = new Gcp.BigQuery.Dataset("public", new()
///     {
///         DatasetId = "public",
///         FriendlyName = "test",
///         Description = "This dataset is public",
///         Location = "EU",
///         DefaultTableExpirationMs = 3600000,
///         Labels =
///         {
///             { "env", "default" },
///         },
///         Accesses = new[]
///         {
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "OWNER",
///                 UserByEmail = bqowner.Email,
///             },
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "READER",
///                 Domain = "hashicorp.com",
///             },
///         },
///     });
///
///     var dataset = new Gcp.BigQuery.Dataset("dataset", new()
///     {
///         DatasetId = "private",
///         FriendlyName = "test",
///         Description = "This dataset is private",
///         Location = "EU",
///         DefaultTableExpirationMs = 3600000,
///         Labels =
///         {
///             { "env", "default" },
///         },
///         Accesses = new[]
///         {
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "OWNER",
///                 UserByEmail = bqowner.Email,
///             },
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "READER",
///                 Domain = "hashicorp.com",
///             },
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Dataset = new Gcp.BigQuery.Inputs.DatasetAccessDatasetArgs
///                 {
///                     Dataset = new Gcp.BigQuery.Inputs.DatasetAccessDatasetDatasetArgs
///                     {
///                         ProjectId = @public.Project,
///                         DatasetId = @public.DatasetId,
///                     },
///                     TargetTypes = new[]
///                     {
///                         "VIEWS",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bqowner, err := serviceaccount.NewAccount(ctx, "bqowner", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("bqowner"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		public, err := bigquery.NewDataset(ctx, "public", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("public"),
/// 			FriendlyName:             pulumi.String("test"),
/// 			Description:              pulumi.String("This dataset is public"),
/// 			Location:                 pulumi.String("EU"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
/// 			},
/// 			Accesses: bigquery.DatasetAccessTypeArray{
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:        pulumi.String("OWNER"),
/// 					UserByEmail: bqowner.Email,
/// 				},
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:   pulumi.String("READER"),
/// 					Domain: pulumi.String("hashicorp.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId:                pulumi.String("private"),
/// 			FriendlyName:             pulumi.String("test"),
/// 			Description:              pulumi.String("This dataset is private"),
/// 			Location:                 pulumi.String("EU"),
/// 			DefaultTableExpirationMs: pulumi.Int(3600000),
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("default"),
/// 			},
/// 			Accesses: bigquery.DatasetAccessTypeArray{
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:        pulumi.String("OWNER"),
/// 					UserByEmail: bqowner.Email,
/// 				},
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:   pulumi.String("READER"),
/// 					Domain: pulumi.String("hashicorp.com"),
/// 				},
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Dataset: &bigquery.DatasetAccessDatasetArgs{
/// 						Dataset: &bigquery.DatasetAccessDatasetDatasetArgs{
/// 							ProjectId: public.Project,
/// 							DatasetId: public.DatasetId,
/// 						},
/// 						TargetTypes: pulumi.StringArray{
/// 							pulumi.String("VIEWS"),
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
/// resource "gcp_bigquery_dataset" "public" {
///   dataset_id                  = "public"
///   friendly_name               = "test"
///   description                 = "This dataset is public"
///   location                    = "EU"
///   default_table_expiration_ms = 3600000
///   labels = {
///     "env" = "default"
///   }
///   accesses {
///     role          = "OWNER"
///     user_by_email = gcp_serviceaccount_account.bqowner.email
///   }
///   accesses {
///     role   = "READER"
///     domain = "hashicorp.com"
///   }
/// }
/// resource "gcp_bigquery_dataset" "dataset" {
///   dataset_id                  = "private"
///   friendly_name               = "test"
///   description                 = "This dataset is private"
///   location                    = "EU"
///   default_table_expiration_ms = 3600000
///   labels = {
///     "env" = "default"
///   }
///   accesses {
///     role          = "OWNER"
///     user_by_email = gcp_serviceaccount_account.bqowner.email
///   }
///   accesses {
///     role   = "READER"
///     domain = "hashicorp.com"
///   }
///   accesses {
///     dataset = {
///       dataset = {
///         project_id = gcp_bigquery_dataset.public.project
///         dataset_id = gcp_bigquery_dataset.public.dataset_id
///       }
///       target_types = ["VIEWS"]
///     }
///   }
/// }
/// resource "gcp_serviceaccount_account" "bqowner" {
///   account_id = "bqowner"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessDatasetArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessDatasetDatasetArgs;
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
///         var bqowner = new Account("bqowner", AccountArgs.builder()
///             .accountId("bqowner")
///             .build());
///
///         var public_ = new Dataset("public", DatasetArgs.builder()
///             .datasetId("public")
///             .friendlyName("test")
///             .description("This dataset is public")
///             .location("EU")
///             .defaultTableExpirationMs(3600000)
///             .labels(Map.of("env", "default"))
///             .accesses(
///                 DatasetAccessArgs.builder()
///                     .role("OWNER")
///                     .userByEmail(bqowner.email())
///                     .build(),
///                 DatasetAccessArgs.builder()
///                     .role("READER")
///                     .domain("hashicorp.com")
///                     .build())
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("private")
///             .friendlyName("test")
///             .description("This dataset is private")
///             .location("EU")
///             .defaultTableExpirationMs(3600000)
///             .labels(Map.of("env", "default"))
///             .accesses(
///                 DatasetAccessArgs.builder()
///                     .role("OWNER")
///                     .userByEmail(bqowner.email())
///                     .build(),
///                 DatasetAccessArgs.builder()
///                     .role("READER")
///                     .domain("hashicorp.com")
///                     .build(),
///                 DatasetAccessArgs.builder()
///                     .dataset(DatasetAccessDatasetArgs.builder()
///                         .dataset(DatasetAccessDatasetDatasetArgs.builder()
///                             .projectId(public_.project())
///                             .datasetId(public_.datasetId())
///                             .build())
///                         .targetTypes("VIEWS")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   public:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: public
///       friendlyName: test
///       description: This dataset is public
///       location: EU
///       defaultTableExpirationMs: 3.6e+06
///       labels:
///         env: default
///       accesses:
///         - role: OWNER
///           userByEmail: ${bqowner.email}
///         - role: READER
///           domain: hashicorp.com
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: private
///       friendlyName: test
///       description: This dataset is private
///       location: EU
///       defaultTableExpirationMs: 3.6e+06
///       labels:
///         env: default
///       accesses:
///         - role: OWNER
///           userByEmail: ${bqowner.email}
///         - role: READER
///           domain: hashicorp.com
///         - dataset:
///             dataset:
///               projectId: ${public.project}
///               datasetId: ${public.datasetId}
///             targetTypes:
///               - VIEWS
///   bqowner:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: bqowner
/// ```
///
/// ### Bigquery Dataset Authorized Routine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _public = new gcp.bigquery.Dataset("public", {
///     datasetId: "public_dataset",
///     description: "This dataset is public",
/// });
/// const publicRoutine = new gcp.bigquery.Routine("public", {
///     datasetId: _public.datasetId,
///     routineId: "public_routine",
///     routineType: "TABLE_VALUED_FUNCTION",
///     language: "SQL",
///     definitionBody: "SELECT 1 + value AS value\n",
///     arguments: [{
///         name: "value",
///         argumentKind: "FIXED_TYPE",
///         dataType: JSON.stringify({
///             typeKind: "INT64",
///         }),
///     }],
///     returnTableType: JSON.stringify({
///         columns: [{
///             name: "value",
///             type: {
///                 typeKind: "INT64",
///             },
///         }],
///     }),
/// });
/// const _private = new gcp.bigquery.Dataset("private", {
///     datasetId: "private_dataset",
///     description: "This dataset is private",
///     accesses: [
///         {
///             role: "OWNER",
///             userByEmail: "my@service-account.com",
///         },
///         {
///             routine: {
///                 projectId: publicRoutine.project,
///                 datasetId: publicRoutine.datasetId,
///                 routineId: publicRoutine.routineId,
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// public = gcp.bigquery.Dataset("public",
///     dataset_id="public_dataset",
///     description="This dataset is public")
/// public_routine = gcp.bigquery.Routine("public",
///     dataset_id=public.dataset_id,
///     routine_id="public_routine",
///     routine_type="TABLE_VALUED_FUNCTION",
///     language="SQL",
///     definition_body="SELECT 1 + value AS value\n",
///     arguments=[{
///         "name": "value",
///         "argument_kind": "FIXED_TYPE",
///         "data_type": json.dumps({
///             "typeKind": "INT64",
///         }),
///     }],
///     return_table_type=json.dumps({
///         "columns": [{
///             "name": "value",
///             "type": {
///                 "typeKind": "INT64",
///             },
///         }],
///     }))
/// private = gcp.bigquery.Dataset("private",
///     dataset_id="private_dataset",
///     description="This dataset is private",
///     accesses=[
///         {
///             "role": "OWNER",
///             "user_by_email": "my@service-account.com",
///         },
///         {
///             "routine": {
///                 "project_id": public_routine.project,
///                 "dataset_id": public_routine.dataset_id,
///                 "routine_id": public_routine.routine_id,
///             },
///         },
///     ])
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
///     var @public = new Gcp.BigQuery.Dataset("public", new()
///     {
///         DatasetId = "public_dataset",
///         Description = "This dataset is public",
///     });
///
///     var publicRoutine = new Gcp.BigQuery.Routine("public", new()
///     {
///         DatasetId = @public.DatasetId,
///         RoutineId = "public_routine",
///         RoutineType = "TABLE_VALUED_FUNCTION",
///         Language = "SQL",
///         DefinitionBody = @"SELECT 1 + value AS value
/// ",
///         Arguments = new[]
///         {
///             new Gcp.BigQuery.Inputs.RoutineArgumentArgs
///             {
///                 Name = "value",
///                 ArgumentKind = "FIXED_TYPE",
///                 DataType = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["typeKind"] = "INT64",
///                 }),
///             },
///         },
///         ReturnTableType = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["columns"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["name"] = "value",
///                     ["type"] = new Dictionary<string, object?>
///                     {
///                         ["typeKind"] = "INT64",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var @private = new Gcp.BigQuery.Dataset("private", new()
///     {
///         DatasetId = "private_dataset",
///         Description = "This dataset is private",
///         Accesses = new[]
///         {
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Role = "OWNER",
///                 UserByEmail = "my@service-account.com",
///             },
///             new Gcp.BigQuery.Inputs.DatasetAccessArgs
///             {
///                 Routine = new Gcp.BigQuery.Inputs.DatasetAccessRoutineArgs
///                 {
///                     ProjectId = publicRoutine.Project,
///                     DatasetId = publicRoutine.DatasetId,
///                     RoutineId = publicRoutine.RoutineId,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		public, err := bigquery.NewDataset(ctx, "public", &bigquery.DatasetArgs{
/// 			DatasetId:   pulumi.String("public_dataset"),
/// 			Description: pulumi.String("This dataset is public"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"typeKind": "INT64",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string][]map[string]interface{}{
/// 			"columns": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"name": "value",
/// 					"type": map[string]string{
/// 						"typeKind": "INT64",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		publicRoutine, err := bigquery.NewRoutine(ctx, "public", &bigquery.RoutineArgs{
/// 			DatasetId:      public.DatasetId,
/// 			RoutineId:      pulumi.String("public_routine"),
/// 			RoutineType:    pulumi.String("TABLE_VALUED_FUNCTION"),
/// 			Language:       pulumi.String("SQL"),
/// 			DefinitionBody: pulumi.String("SELECT 1 + value AS value\n"),
/// 			Arguments: bigquery.RoutineArgumentArray{
/// 				&bigquery.RoutineArgumentArgs{
/// 					Name:         pulumi.String("value"),
/// 					ArgumentKind: pulumi.String("FIXED_TYPE"),
/// 					DataType:     pulumi.String(json0),
/// 				},
/// 			},
/// 			ReturnTableType: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigquery.NewDataset(ctx, "private", &bigquery.DatasetArgs{
/// 			DatasetId:   pulumi.String("private_dataset"),
/// 			Description: pulumi.String("This dataset is private"),
/// 			Accesses: bigquery.DatasetAccessTypeArray{
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Role:        pulumi.String("OWNER"),
/// 					UserByEmail: pulumi.String("my@service-account.com"),
/// 				},
/// 				&bigquery.DatasetAccessTypeArgs{
/// 					Routine: &bigquery.DatasetAccessRoutineArgs{
/// 						ProjectId: publicRoutine.Project,
/// 						DatasetId: publicRoutine.DatasetId,
/// 						RoutineId: publicRoutine.RoutineId,
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
/// resource "gcp_bigquery_dataset" "public" {
///   dataset_id  = "public_dataset"
///   description = "This dataset is public"
/// }
/// resource "gcp_bigquery_routine" "public" {
///   dataset_id      = gcp_bigquery_dataset.public.dataset_id
///   routine_id      = "public_routine"
///   routine_type    = "TABLE_VALUED_FUNCTION"
///   language        = "SQL"
///   definition_body = "SELECT 1 + value AS value\n"
///   arguments {
///     name          = "value"
///     argument_kind = "FIXED_TYPE"
///     data_type = jsonencode({
///       "typeKind" = "INT64"
///     })
///   }
///   return_table_type = jsonencode({
///     "columns" = [{
///       "name" = "value"
///       "type" = {
///         "typeKind" = "INT64"
///       }
///     }]
///   })
/// }
/// resource "gcp_bigquery_dataset" "private" {
///   dataset_id  = "private_dataset"
///   description = "This dataset is private"
///   accesses {
///     role          = "OWNER"
///     user_by_email = "my@service-account.com"
///   }
///   accesses {
///     routine = {
///       project_id = gcp_bigquery_routine.public.project
///       dataset_id = gcp_bigquery_routine.public.dataset_id
///       routine_id = gcp_bigquery_routine.public.routine_id
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
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Routine;
/// import com.pulumi.gcp.bigquery.RoutineArgs;
/// import com.pulumi.gcp.bigquery.inputs.RoutineArgumentArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessArgs;
/// import com.pulumi.gcp.bigquery.inputs.DatasetAccessRoutineArgs;
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
///         var public_ = new Dataset("public", DatasetArgs.builder()
///             .datasetId("public_dataset")
///             .description("This dataset is public")
///             .build());
///
///         var publicRoutine = new Routine("publicRoutine", RoutineArgs.builder()
///             .datasetId(public_.datasetId())
///             .routineId("public_routine")
///             .routineType("TABLE_VALUED_FUNCTION")
///             .language("SQL")
///             .definitionBody("""
/// SELECT 1 + value AS value
///             """)
///             .arguments(RoutineArgumentArgs.builder()
///                 .name("value")
///                 .argumentKind("FIXED_TYPE")
///                 .dataType(serializeJson(
///                     jsonObject(
///                         jsonProperty("typeKind", "INT64")
///                     )))
///                 .build())
///             .returnTableType(serializeJson(
///                 jsonObject(
///                     jsonProperty("columns", jsonArray(jsonObject(
///                         jsonProperty("name", "value"),
///                         jsonProperty("type", jsonObject(
///                             jsonProperty("typeKind", "INT64")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var private_ = new Dataset("private", DatasetArgs.builder()
///             .datasetId("private_dataset")
///             .description("This dataset is private")
///             .accesses(
///                 DatasetAccessArgs.builder()
///                     .role("OWNER")
///                     .userByEmail("my@service-account.com")
///                     .build(),
///                 DatasetAccessArgs.builder()
///                     .routine(DatasetAccessRoutineArgs.builder()
///                         .projectId(publicRoutine.project())
///                         .datasetId(publicRoutine.datasetId())
///                         .routineId(publicRoutine.routineId())
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   public:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: public_dataset
///       description: This dataset is public
///   publicRoutine:
///     type: gcp:bigquery:Routine
///     name: public
///     properties:
///       datasetId: ${public.datasetId}
///       routineId: public_routine
///       routineType: TABLE_VALUED_FUNCTION
///       language: SQL
///       definitionBody: |
///         SELECT 1 + value AS value
///       arguments:
///         - name: value
///           argumentKind: FIXED_TYPE
///           dataType:
///             fn::toJSON:
///               typeKind: INT64
///       returnTableType:
///         fn::toJSON:
///           columns:
///             - name: value
///               type:
///                 typeKind: INT64
///   private:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: private_dataset
///       description: This dataset is private
///       accesses:
///         - role: OWNER
///           userByEmail: my@service-account.com
///         - routine:
///             projectId: ${publicRoutine.project}
///             datasetId: ${publicRoutine.datasetId}
///             routineId: ${publicRoutine.routineId}
/// ```
///
/// ### Bigquery Dataset External Reference Aws
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {
///     datasetId: "example_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "aws-us-east-1",
///     externalDatasetReference: {
///         externalSource: "aws-glue://arn:aws:glue:us-east-1:999999999999:database/database",
///         connection: "projects/project/locations/aws-us-east-1/connections/connection",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset",
///     dataset_id="example_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="aws-us-east-1",
///     external_dataset_reference={
///         "external_source": "aws-glue://arn:aws:glue:us-east-1:999999999999:database/database",
///         "connection": "projects/project/locations/aws-us-east-1/connections/connection",
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
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "aws-us-east-1",
///         ExternalDatasetReference = new Gcp.BigQuery.Inputs.DatasetExternalDatasetReferenceArgs
///         {
///             ExternalSource = "aws-glue://arn:aws:glue:us-east-1:999999999999:database/database",
///             Connection = "projects/project/locations/aws-us-east-1/connections/connection",
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
/// 		_, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("example_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("aws-us-east-1"),
/// 			ExternalDatasetReference: &bigquery.DatasetExternalDatasetReferenceArgs{
/// 				ExternalSource: pulumi.String("aws-glue://arn:aws:glue:us-east-1:999999999999:database/database"),
/// 				Connection:     pulumi.String("projects/project/locations/aws-us-east-1/connections/connection"),
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
/// resource "gcp_bigquery_dataset" "dataset" {
///   dataset_id    = "example_dataset"
///   friendly_name = "test"
///   description   = "This is a test description"
///   location      = "aws-us-east-1"
///   external_dataset_reference = {
///     external_source = "aws-glue://arn:aws:glue:us-east-1:999999999999:database/database"
///     connection      = "projects/project/locations/aws-us-east-1/connections/connection"
///   }
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
/// import com.pulumi.gcp.bigquery.inputs.DatasetExternalDatasetReferenceArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("aws-us-east-1")
///             .externalDatasetReference(DatasetExternalDatasetReferenceArgs.builder()
///                 .externalSource("aws-glue://arn:aws:glue:us-east-1:999999999999:database/database")
///                 .connection("projects/project/locations/aws-us-east-1/connections/connection")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///       friendlyName: test
///       description: This is a test description
///       location: aws-us-east-1
///       externalDatasetReference:
///         externalSource: aws-glue://arn:aws:glue:us-east-1:999999999999:database/database
///         connection: projects/project/locations/aws-us-east-1/connections/connection
/// ```
///
/// ### Bigquery Dataset External Catalog Dataset Options
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataset = new gcp.bigquery.Dataset("dataset", {
///     datasetId: "example_dataset",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
///     externalCatalogDatasetOptions: {
///         parameters: {
///             dataset_owner: "test_dataset_owner",
///         },
///         defaultStorageLocationUri: "gs://test_dataset/tables",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dataset = gcp.bigquery.Dataset("dataset",
///     dataset_id="example_dataset",
///     friendly_name="test",
///     description="This is a test description",
///     location="US",
///     external_catalog_dataset_options={
///         "parameters": {
///             "dataset_owner": "test_dataset_owner",
///         },
///         "default_storage_location_uri": "gs://test_dataset/tables",
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
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///         ExternalCatalogDatasetOptions = new Gcp.BigQuery.Inputs.DatasetExternalCatalogDatasetOptionsArgs
///         {
///             Parameters =
///             {
///                 { "dataset_owner", "test_dataset_owner" },
///             },
///             DefaultStorageLocationUri = "gs://test_dataset/tables",
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
/// 		_, err := bigquery.NewDataset(ctx, "dataset", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("example_dataset"),
/// 			FriendlyName: pulumi.String("test"),
/// 			Description:  pulumi.String("This is a test description"),
/// 			Location:     pulumi.String("US"),
/// 			ExternalCatalogDatasetOptions: &bigquery.DatasetExternalCatalogDatasetOptionsArgs{
/// 				Parameters: pulumi.StringMap{
/// 					"dataset_owner": pulumi.String("test_dataset_owner"),
/// 				},
/// 				DefaultStorageLocationUri: pulumi.String("gs://test_dataset/tables"),
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
/// resource "gcp_bigquery_dataset" "dataset" {
///   dataset_id    = "example_dataset"
///   friendly_name = "test"
///   description   = "This is a test description"
///   location      = "US"
///   external_catalog_dataset_options = {
///     parameters = {
///       "dataset_owner" = "test_dataset_owner"
///     }
///     default_storage_location_uri = "gs://test_dataset/tables"
///   }
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
/// import com.pulumi.gcp.bigquery.inputs.DatasetExternalCatalogDatasetOptionsArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetId("example_dataset")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .externalCatalogDatasetOptions(DatasetExternalCatalogDatasetOptionsArgs.builder()
///                 .parameters(Map.of("dataset_owner", "test_dataset_owner"))
///                 .defaultStorageLocationUri("gs://test_dataset/tables")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataset:
///     type: gcp:bigquery:Dataset
///     properties:
///       datasetId: example_dataset
///       friendlyName: test
///       description: This is a test description
///       location: US
///       externalCatalogDatasetOptions:
///         parameters:
///           dataset_owner: test_dataset_owner
///         defaultStorageLocationUri: gs://test_dataset/tables
/// ```
///
///
/// ## Import
///
/// Dataset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}`
/// * `{{project}}/{{dataset_id}}`
/// * `{{dataset_id}}`
///
///
/// When using the `pulumi import` command, Dataset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/dataset:Dataset default projects/{{project}}/datasets/{{dataset_id}}
/// $ pulumi import gcp:bigquery/dataset:Dataset default {{project}}/{{dataset_id}}
/// $ pulumi import gcp:bigquery/dataset:Dataset default {{dataset_id}}
/// ```
class Dataset extends pulumi.CustomResource {
  /// An array of objects that define dataset access for one or more entities.
  /// Structure is documented below.
  late final pulumi.Output<List<DatasetAccess>> accesses;
  /// The time when this dataset was created, in milliseconds since the
  /// epoch.
  late final pulumi.Output<int> creationTime;
  /// A unique ID for this dataset, without the project name. The ID
  /// must contain only letters (a-z, A-Z), numbers (0-9), or
  /// underscores (_). The maximum length is 1,024 characters.
  late final pulumi.Output<String> datasetId;
  /// Defines the default collation specification of future tables created
  /// in the dataset. If a table is created in this dataset without table-level
  /// default collation, then the table inherits the dataset default collation,
  /// which is applied to the string fields that do not have explicit collation
  /// specified. A change to this field affects only tables created afterwards,
  /// and does not alter the existing tables.
  /// The following values are supported:
  /// - 'und:ci': undetermined locale, case insensitive.
  /// - '': empty string. Default to case-sensitive behavior.
  late final pulumi.Output<String> defaultCollation;
  /// The default encryption key for all tables in the dataset. Once this property is set,
  /// all newly-created partitioned tables in the dataset will have encryption key set to
  /// this value, unless table creation request (or query) overrides the key.
  /// Structure is documented below.
  late final pulumi.Output<DatasetDefaultEncryptionConfiguration?> defaultEncryptionConfiguration;
  /// The default partition expiration for all partitioned tables in
  /// the dataset, in milliseconds.
  /// Once this property is set, all newly-created partitioned tables in
  /// the dataset will have an `expirationMs` property in the `timePartitioning`
  /// settings set to this value, and changing the value will only
  /// affect new tables, not existing ones. The storage in a partition will
  /// have an expiration time of its partition time plus this value.
  /// Setting this property overrides the use of `defaultTableExpirationMs`
  /// for partitioned tables: only one of `defaultTableExpirationMs` and
  /// `defaultPartitionExpirationMs` will be used for any new partitioned
  /// table. If you provide an explicit `timePartitioning.expirationMs` when
  /// creating or updating a partitioned table, that value takes precedence
  /// over the default partition expiration time indicated by this property.
  late final pulumi.Output<int?> defaultPartitionExpirationMs;
  /// The default lifetime of all tables in the dataset, in milliseconds.
  /// The minimum value is 3600000 milliseconds (one hour).
  /// Once this property is set, all newly-created tables in the dataset
  /// will have an `expirationTime` property set to the creation time plus
  /// the value in this property, and changing the value will only affect
  /// new tables, not existing ones. When the `expirationTime` for a given
  /// table is reached, that table will be deleted automatically.
  /// If a table's `expirationTime` is modified or removed before the
  /// table expires, or if you provide an explicit `expirationTime` when
  /// creating a table, that value takes precedence over the default
  /// expiration time indicated by this property.
  late final pulumi.Output<int?> defaultTableExpirationMs;
  /// If set to `true`, delete all the tables in the
  /// dataset when destroying the resource; otherwise,
  /// destroying the resource will fail if tables are present.
  late final pulumi.Output<bool?> deleteContentsOnDestroy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A user-friendly description of the dataset
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A hash of the resource.
  late final pulumi.Output<String> etag;
  /// Options defining open source compatible datasets living in the BigQuery catalog. Contains
  /// metadata of open source database, schema or namespace represented by the current dataset.
  /// Structure is documented below.
  late final pulumi.Output<DatasetExternalCatalogDatasetOptions?> externalCatalogDatasetOptions;
  /// Information about the external metadata storage where the dataset is defined.
  /// Structure is documented below.
  late final pulumi.Output<DatasetExternalDatasetReference?> externalDatasetReference;
  /// A descriptive name for the dataset
  late final pulumi.Output<String?> friendlyName;
  /// TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.
  /// By default, this is FALSE, which means the dataset and its table names are
  /// case-sensitive. This field does not affect routine references.
  late final pulumi.Output<bool> isCaseInsensitive;
  /// The labels associated with this dataset. You can use these to
  /// organize and group your datasets.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The date when this dataset or any of its tables was last modified, in
  /// milliseconds since the epoch.
  late final pulumi.Output<int> lastModifiedTime;
  /// The geographic location where the dataset should reside.
  /// See [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).
  /// There are two types of locations, regional or multi-regional. A regional
  /// location is a specific geographic place, such as Tokyo, and a multi-regional
  /// location is a large geographic area, such as the United States, that
  /// contains at least two geographic places.
  /// The default value is multi-regional location `US`.
  /// Changing this forces a new resource to be created.
  late final pulumi.Output<String?> location;
  /// Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days).
  late final pulumi.Output<String> maxTimeTravelHours;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The tags attached to this table. Tag keys are globally unique. Tag key is expected to be
  /// in the namespaced format, for example "123456789012/environment" where 123456789012 is the
  /// ID of the parent organization or project resource for this tag key. Tag value is expected
  /// to be the short name, for example "Production". See [Tag definitions](https://cloud.google.com/iam/docs/tags-access-control#definitions)
  /// for more details.
  late final pulumi.Output<Map<String, String>?> resourceTags;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// Specifies the storage billing model for the dataset.
  /// Set this flag value to LOGICAL to use logical bytes for storage billing,
  /// or to PHYSICAL to use physical bytes instead.
  /// LOGICAL is the default if this flag isn't specified.
  late final pulumi.Output<String> storageBillingModel;

  /// Creates a new [Dataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataset]. {@macro pulumi_bigquery_dataset_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataset(
    String name, {
    DatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataset:Dataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    accesses = registerOutput<List<DatasetAccess>>('accesses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetAccess>(guardedValue, (value) => DatasetAccess.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<int>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    defaultCollation = registerOutput<String>('defaultCollation');
    defaultEncryptionConfiguration = registerOutput<DatasetDefaultEncryptionConfiguration?>('defaultEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetDefaultEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultPartitionExpirationMs = registerOutput<int?>('defaultPartitionExpirationMs');
    defaultTableExpirationMs = registerOutput<int?>('defaultTableExpirationMs');
    deleteContentsOnDestroy = registerOutput<bool?>('deleteContentsOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    externalCatalogDatasetOptions = registerOutput<DatasetExternalCatalogDatasetOptions?>('externalCatalogDatasetOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetExternalCatalogDatasetOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDatasetReference = registerOutput<DatasetExternalDatasetReference?>('externalDatasetReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetExternalDatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    isCaseInsensitive = registerOutput<bool>('isCaseInsensitive');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    location = registerOutput<String?>('location');
    maxTimeTravelHours = registerOutput<String>('maxTimeTravelHours');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    selfLink = registerOutput<String>('selfLink');
    storageBillingModel = registerOutput<String>('storageBillingModel');
  }

  /// Gets an existing [Dataset] resource's state with the given [name] and [id].
  static Dataset get(
    String name,
    pulumi.Input<String> id, {
    DatasetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Dataset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Dataset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/dataset:Dataset',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accesses = registerOutput<List<DatasetAccess>>('accesses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetAccess>(guardedValue, (value) => DatasetAccess.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<int>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    defaultCollation = registerOutput<String>('defaultCollation');
    defaultEncryptionConfiguration = registerOutput<DatasetDefaultEncryptionConfiguration?>('defaultEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetDefaultEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultPartitionExpirationMs = registerOutput<int?>('defaultPartitionExpirationMs');
    defaultTableExpirationMs = registerOutput<int?>('defaultTableExpirationMs');
    deleteContentsOnDestroy = registerOutput<bool?>('deleteContentsOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    externalCatalogDatasetOptions = registerOutput<DatasetExternalCatalogDatasetOptions?>('externalCatalogDatasetOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetExternalCatalogDatasetOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDatasetReference = registerOutput<DatasetExternalDatasetReference?>('externalDatasetReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetExternalDatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    isCaseInsensitive = registerOutput<bool>('isCaseInsensitive');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    location = registerOutput<String?>('location');
    maxTimeTravelHours = registerOutput<String>('maxTimeTravelHours');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    selfLink = registerOutput<String>('selfLink');
    storageBillingModel = registerOutput<String>('storageBillingModel');
  }

  /// Creates a typed reference to an existing [Dataset] resource.
  Dataset.reference(String urn)
    : super(
        'gcp:bigquery/dataset:Dataset',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    accesses = registerOutput<List<DatasetAccess>>('accesses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DatasetAccess>(guardedValue, (value) => DatasetAccess.fromMap((value as Map).cast<String, dynamic>())); });
    creationTime = registerOutput<int>('creationTime');
    datasetId = registerOutput<String>('datasetId');
    defaultCollation = registerOutput<String>('defaultCollation');
    defaultEncryptionConfiguration = registerOutput<DatasetDefaultEncryptionConfiguration?>('defaultEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetDefaultEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultPartitionExpirationMs = registerOutput<int?>('defaultPartitionExpirationMs');
    defaultTableExpirationMs = registerOutput<int?>('defaultTableExpirationMs');
    deleteContentsOnDestroy = registerOutput<bool?>('deleteContentsOnDestroy');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    etag = registerOutput<String>('etag');
    externalCatalogDatasetOptions = registerOutput<DatasetExternalCatalogDatasetOptions?>('externalCatalogDatasetOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetExternalCatalogDatasetOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalDatasetReference = registerOutput<DatasetExternalDatasetReference?>('externalDatasetReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatasetExternalDatasetReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    friendlyName = registerOutput<String?>('friendlyName');
    isCaseInsensitive = registerOutput<bool>('isCaseInsensitive');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    lastModifiedTime = registerOutput<int>('lastModifiedTime');
    location = registerOutput<String?>('location');
    maxTimeTravelHours = registerOutput<String>('maxTimeTravelHours');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    resourceTags = registerOutput<Map<String, String>?>('resourceTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    selfLink = registerOutput<String>('selfLink');
    storageBillingModel = registerOutput<String>('storageBillingModel');
  }
}
