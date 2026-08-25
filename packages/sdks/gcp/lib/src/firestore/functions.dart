import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_args.dart';
import 'get_document_result.dart';

/// Reads a document from a Firestore database.
/// See [the official documentation](https://cloud.google.com/firestore/native/docs/)
/// and
/// [API](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents/get/).
///
///
/// ## Example Usage
///
/// Retrieve a document from the Firestore database.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mydoc = new gcp.firestore.Document("mydoc", {
///     project: database.project,
///     database: database.name,
///     collection: "somenewcollection",
///     documentId: "my-doc-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// mydoc = gcp.firestore.Document("mydoc",
///     project=database["project"],
///     database=database["name"],
///     collection="somenewcollection",
///     document_id="my-doc-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mydoc = new Gcp.Firestore.Document("mydoc", new()
///     {
///         Project = database.Project,
///         Database = database.Name,
///         Collection = "somenewcollection",
///         DocumentId = "my-doc-id",
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
/// 		_, err := firestore.NewDocument(ctx, "mydoc", &firestore.DocumentArgs{
/// 			Project:    pulumi.Any(database.Project),
/// 			Database:   pulumi.Any(database.Name),
/// 			Collection: pulumi.String("somenewcollection"),
/// 			DocumentId: pulumi.String("my-doc-id"),
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
/// resource "gcp_firestore_document" "mydoc" {
///   project     = database.project
///   database    = database.name
///   collection  = "somenewcollection"
///   document_id = "my-doc-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Document;
/// import com.pulumi.gcp.firestore.DocumentArgs;
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
///         var mydoc = new Document("mydoc", DocumentArgs.builder()
///             .project(database.get("project"))
///             .database(database.get("name"))
///             .collection("somenewcollection")
///             .documentId("my-doc-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mydoc:
///     type: gcp:firestore:Document
///     properties:
///       project: ${database.project}
///       database: ${database.name}
///       collection: somenewcollection
///       documentId: my-doc-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_firestore_get_document_get_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firestore/getDocument:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}

pulumi.Output<GetDocumentResult> getDocumentOutput(
  GetDocumentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:firestore/getDocument:getDocument',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDocumentResult.fromMap);
}
