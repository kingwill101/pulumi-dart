import 'package:pulumi/pulumi.dart' as pulumi;
import 'note_args.dart';
import 'note_attestation_authority.dart';
import 'note_state.dart';

/// A Container Analysis note is a high-level piece of metadata that
/// describes a type of analysis that can be done for a resource.
///
///
/// To get more information about Note, see:
///
/// * [API documentation](https://cloud.google.com/container-analysis/api/reference/rest/)
/// * How-to Guides
/// * [Creating Attestations (Occurrences)](https://cloud.google.com/binary-authorization/docs/making-attestations)
/// * [Official Documentation](https://cloud.google.com/container-analysis/)
///
/// ## Example Usage
///
/// ### Container Analysis Note Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "attestor-note",
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "Attestor Note",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// note = gcp.containeranalysis.Note("note",
///     name="attestor-note",
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "Attestor Note",
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
///     var note = new Gcp.ContainerAnalysis.Note("note", new()
///     {
///         Name = "attestor-note",
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "Attestor Note",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name: pulumi.String("attestor-note"),
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("Attestor Note"),
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
/// import com.pulumi.gcp.containeranalysis.Note;
/// import com.pulumi.gcp.containeranalysis.NoteArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityHintArgs;
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
///         var note = new Note("note", NoteArgs.builder()
///             .name("attestor-note")
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("Attestor Note")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: attestor-note
///       attestationAuthority:
///         hint:
///           humanReadableName: Attestor Note
/// ```
///
/// ### Container Analysis Note Attestation Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "attestor-note",
///     shortDescription: "test note",
///     longDescription: "a longer description of test note",
///     expirationTime: "2120-10-02T15:01:23.045123456Z",
///     relatedUrls: [
///         {
///             url: "some.url",
///             label: "foo",
///         },
///         {
///             url: "google.com",
///         },
///     ],
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "Attestor Note",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// note = gcp.containeranalysis.Note("note",
///     name="attestor-note",
///     short_description="test note",
///     long_description="a longer description of test note",
///     expiration_time="2120-10-02T15:01:23.045123456Z",
///     related_urls=[
///         {
///             "url": "some.url",
///             "label": "foo",
///         },
///         {
///             "url": "google.com",
///         },
///     ],
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "Attestor Note",
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
///     var note = new Gcp.ContainerAnalysis.Note("note", new()
///     {
///         Name = "attestor-note",
///         ShortDescription = "test note",
///         LongDescription = "a longer description of test note",
///         ExpirationTime = "2120-10-02T15:01:23.045123456Z",
///         RelatedUrls = new[]
///         {
///             new Gcp.ContainerAnalysis.Inputs.NoteRelatedUrlArgs
///             {
///                 Url = "some.url",
///                 Label = "foo",
///             },
///             new Gcp.ContainerAnalysis.Inputs.NoteRelatedUrlArgs
///             {
///                 Url = "google.com",
///             },
///         },
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "Attestor Note",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name:             pulumi.String("attestor-note"),
/// 			ShortDescription: pulumi.String("test note"),
/// 			LongDescription:  pulumi.String("a longer description of test note"),
/// 			ExpirationTime:   pulumi.String("2120-10-02T15:01:23.045123456Z"),
/// 			RelatedUrls: containeranalysis.NoteRelatedUrlArray{
/// 				&containeranalysis.NoteRelatedUrlArgs{
/// 					Url:   pulumi.String("some.url"),
/// 					Label: pulumi.String("foo"),
/// 				},
/// 				&containeranalysis.NoteRelatedUrlArgs{
/// 					Url: pulumi.String("google.com"),
/// 				},
/// 			},
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("Attestor Note"),
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
/// import com.pulumi.gcp.containeranalysis.Note;
/// import com.pulumi.gcp.containeranalysis.NoteArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteRelatedUrlArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityHintArgs;
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
///         var note = new Note("note", NoteArgs.builder()
///             .name("attestor-note")
///             .shortDescription("test note")
///             .longDescription("a longer description of test note")
///             .expirationTime("2120-10-02T15:01:23.045123456Z")
///             .relatedUrls(
///                 NoteRelatedUrlArgs.builder()
///                     .url("some.url")
///                     .label("foo")
///                     .build(),
///                 NoteRelatedUrlArgs.builder()
///                     .url("google.com")
///                     .build())
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("Attestor Note")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: attestor-note
///       shortDescription: test note
///       longDescription: a longer description of test note
///       expirationTime: 2120-10-02T15:01:23.045123456Z
///       relatedUrls:
///         - url: some.url
///           label: foo
///         - url: google.com
///       attestationAuthority:
///         hint:
///           humanReadableName: Attestor Note
/// ```
///
///
/// ## Import
///
/// Note can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/notes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Note can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/note:Note default projects/{{project}}/notes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/note:Note default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:containeranalysis/note:Note default {{name}}
/// ```
class Note extends pulumi.CustomResource {
  /// Note kind that represents a logical attestation "role" or "authority".
  /// For example, an organization might have one AttestationAuthority for
  /// "QA" and one for "build". This Note is intended to act strictly as a
  /// grouping mechanism for the attached Occurrences (Attestations). This
  /// grouping mechanism also provides a security boundary, since IAM ACLs
  /// gate the ability for a principle to attach an Occurrence to a given
  /// Note. It also provides a single point of lookup to find all attached
  /// Attestation Occurrences, even if they don't all live in the same
  /// project.
  /// Structure is documented below.
  late final pulumi.Output<NoteAttestationAuthority> attestationAuthority;

  /// The time this note was created.
  late final pulumi.Output<String> createTime;

  /// Time of expiration for this note. Leave empty if note does not expire.
  late final pulumi.Output<String?> expirationTime;

  /// The type of analysis this note describes
  late final pulumi.Output<String> kind;

  /// A detailed description of the note
  late final pulumi.Output<String?> longDescription;

  /// The name of the note.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Names of other notes related to this note.
  late final pulumi.Output<List<String>?> relatedNoteNames;

  /// URLs associated with this note and related metadata.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> relatedUrls;

  /// A one sentence description of the note.
  late final pulumi.Output<String?> shortDescription;

  /// The time this note was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Note].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Note]. {@macro pulumi_containeranalysis_note_note_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Note(String name, {NoteArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:containeranalysis/note:Note',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    attestationAuthority = registerOutput<NoteAttestationAuthority>(
      'attestationAuthority',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NoteAttestationAuthority.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    expirationTime = registerOutput<String?>('expirationTime');
    kind = registerOutput<String>('kind');
    longDescription = registerOutput<String?>('longDescription');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    relatedNoteNames = registerOutput<List<String>?>('relatedNoteNames');
    relatedUrls = registerOutput<List<Map<String, dynamic>>?>('relatedUrls');
    shortDescription = registerOutput<String?>('shortDescription');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Note] resource's state with the given [name] and [id].
  static Note get(String name, pulumi.Input<String> id, {NoteState? state}) {
    return Note._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Note._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:containeranalysis/note:Note',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    attestationAuthority = registerOutput<NoteAttestationAuthority>(
      'attestationAuthority',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NoteAttestationAuthority.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    expirationTime = registerOutput<String?>('expirationTime');
    kind = registerOutput<String>('kind');
    longDescription = registerOutput<String?>('longDescription');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    relatedNoteNames = registerOutput<List<String>?>('relatedNoteNames');
    relatedUrls = registerOutput<List<Map<String, dynamic>>?>('relatedUrls');
    shortDescription = registerOutput<String?>('shortDescription');
    updateTime = registerOutput<String>('updateTime');
  }
}
