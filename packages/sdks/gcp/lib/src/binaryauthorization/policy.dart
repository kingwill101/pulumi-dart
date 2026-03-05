import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_default_admission_rule.dart';
import 'policy_state.dart';

/// A policy for container image binary authorization.
///
///
/// To get more information about Policy, see:
///
/// * [API documentation](https://cloud.google.com/binary-authorization/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/binary-authorization/)
///
/// ## Example Usage
///
/// ### Binary Authorization Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "test-attestor-note",
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "My attestor",
///         },
///     },
/// });
/// const attestor = new gcp.binaryauthorization.Attestor("attestor", {
///     name: "test-attestor",
///     attestationAuthorityNote: {
///         noteReference: note.name,
///     },
/// });
/// const policy = new gcp.binaryauthorization.Policy("policy", {
///     admissionWhitelistPatterns: [{
///         namePattern: "gcr.io/google_containers/*",
///     }],
///     defaultAdmissionRule: {
///         evaluationMode: "ALWAYS_ALLOW",
///         enforcementMode: "ENFORCED_BLOCK_AND_AUDIT_LOG",
///     },
///     clusterAdmissionRules: [{
///         cluster: "us-central1-a.prod-cluster",
///         evaluationMode: "REQUIRE_ATTESTATION",
///         enforcementMode: "ENFORCED_BLOCK_AND_AUDIT_LOG",
///         requireAttestationsBies: [attestor.name],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// note = gcp.containeranalysis.Note("note",
///     name="test-attestor-note",
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "My attestor",
///         },
///     })
/// attestor = gcp.binaryauthorization.Attestor("attestor",
///     name="test-attestor",
///     attestation_authority_note={
///         "note_reference": note.name,
///     })
/// policy = gcp.binaryauthorization.Policy("policy",
///     admission_whitelist_patterns=[{
///         "name_pattern": "gcr.io/google_containers/*",
///     }],
///     default_admission_rule={
///         "evaluation_mode": "ALWAYS_ALLOW",
///         "enforcement_mode": "ENFORCED_BLOCK_AND_AUDIT_LOG",
///     },
///     cluster_admission_rules=[{
///         "cluster": "us-central1-a.prod-cluster",
///         "evaluation_mode": "REQUIRE_ATTESTATION",
///         "enforcement_mode": "ENFORCED_BLOCK_AND_AUDIT_LOG",
///         "require_attestations_bies": [attestor.name],
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
///     var note = new Gcp.ContainerAnalysis.Note("note", new()
///     {
///         Name = "test-attestor-note",
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "My attestor",
///             },
///         },
///     });
///
///     var attestor = new Gcp.BinaryAuthorization.Attestor("attestor", new()
///     {
///         Name = "test-attestor",
///         AttestationAuthorityNote = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNoteArgs
///         {
///             NoteReference = note.Name,
///         },
///     });
///
///     var policy = new Gcp.BinaryAuthorization.Policy("policy", new()
///     {
///         AdmissionWhitelistPatterns = new[]
///         {
///             new Gcp.BinaryAuthorization.Inputs.PolicyAdmissionWhitelistPatternArgs
///             {
///                 NamePattern = "gcr.io/google_containers/*",
///             },
///         },
///         DefaultAdmissionRule = new Gcp.BinaryAuthorization.Inputs.PolicyDefaultAdmissionRuleArgs
///         {
///             EvaluationMode = "ALWAYS_ALLOW",
///             EnforcementMode = "ENFORCED_BLOCK_AND_AUDIT_LOG",
///         },
///         ClusterAdmissionRules = new[]
///         {
///             new Gcp.BinaryAuthorization.Inputs.PolicyClusterAdmissionRuleArgs
///             {
///                 Cluster = "us-central1-a.prod-cluster",
///                 EvaluationMode = "REQUIRE_ATTESTATION",
///                 EnforcementMode = "ENFORCED_BLOCK_AND_AUDIT_LOG",
///                 RequireAttestationsBies = new[]
///                 {
///                     attestor.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/binaryauthorization"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		note, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name: pulumi.String("test-attestor-note"),
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("My attestor"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		attestor, err := binaryauthorization.NewAttestor(ctx, "attestor", &binaryauthorization.AttestorArgs{
/// 			Name: pulumi.String("test-attestor"),
/// 			AttestationAuthorityNote: &binaryauthorization.AttestorAttestationAuthorityNoteArgs{
/// 				NoteReference: note.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = binaryauthorization.NewPolicy(ctx, "policy", &binaryauthorization.PolicyArgs{
/// 			AdmissionWhitelistPatterns: binaryauthorization.PolicyAdmissionWhitelistPatternArray{
/// 				&binaryauthorization.PolicyAdmissionWhitelistPatternArgs{
/// 					NamePattern: pulumi.String("gcr.io/google_containers/*"),
/// 				},
/// 			},
/// 			DefaultAdmissionRule: &binaryauthorization.PolicyDefaultAdmissionRuleArgs{
/// 				EvaluationMode:  pulumi.String("ALWAYS_ALLOW"),
/// 				EnforcementMode: pulumi.String("ENFORCED_BLOCK_AND_AUDIT_LOG"),
/// 			},
/// 			ClusterAdmissionRules: binaryauthorization.PolicyClusterAdmissionRuleArray{
/// 				&binaryauthorization.PolicyClusterAdmissionRuleArgs{
/// 					Cluster:         pulumi.String("us-central1-a.prod-cluster"),
/// 					EvaluationMode:  pulumi.String("REQUIRE_ATTESTATION"),
/// 					EnforcementMode: pulumi.String("ENFORCED_BLOCK_AND_AUDIT_LOG"),
/// 					RequireAttestationsBies: pulumi.StringArray{
/// 						attestor.Name,
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
/// import com.pulumi.gcp.containeranalysis.Note;
/// import com.pulumi.gcp.containeranalysis.NoteArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityHintArgs;
/// import com.pulumi.gcp.binaryauthorization.Attestor;
/// import com.pulumi.gcp.binaryauthorization.AttestorArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNoteArgs;
/// import com.pulumi.gcp.binaryauthorization.Policy;
/// import com.pulumi.gcp.binaryauthorization.PolicyArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.PolicyAdmissionWhitelistPatternArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.PolicyDefaultAdmissionRuleArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.PolicyClusterAdmissionRuleArgs;
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
///             .name("test-attestor-note")
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("My attestor")
///                     .build())
///                 .build())
///             .build());
///
///         var attestor = new Attestor("attestor", AttestorArgs.builder()
///             .name("test-attestor")
///             .attestationAuthorityNote(AttestorAttestationAuthorityNoteArgs.builder()
///                 .noteReference(note.name())
///                 .build())
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .admissionWhitelistPatterns(PolicyAdmissionWhitelistPatternArgs.builder()
///                 .namePattern("gcr.io/google_containers/*")
///                 .build())
///             .defaultAdmissionRule(PolicyDefaultAdmissionRuleArgs.builder()
///                 .evaluationMode("ALWAYS_ALLOW")
///                 .enforcementMode("ENFORCED_BLOCK_AND_AUDIT_LOG")
///                 .build())
///             .clusterAdmissionRules(PolicyClusterAdmissionRuleArgs.builder()
///                 .cluster("us-central1-a.prod-cluster")
///                 .evaluationMode("REQUIRE_ATTESTATION")
///                 .enforcementMode("ENFORCED_BLOCK_AND_AUDIT_LOG")
///                 .requireAttestationsBies(attestor.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:binaryauthorization:Policy
///     properties:
///       admissionWhitelistPatterns:
///         - namePattern: gcr.io/google_containers/*
///       defaultAdmissionRule:
///         evaluationMode: ALWAYS_ALLOW
///         enforcementMode: ENFORCED_BLOCK_AND_AUDIT_LOG
///       clusterAdmissionRules:
///         - cluster: us-central1-a.prod-cluster
///           evaluationMode: REQUIRE_ATTESTATION
///           enforcementMode: ENFORCED_BLOCK_AND_AUDIT_LOG
///           requireAttestationsBies:
///             - ${attestor.name}
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: test-attestor-note
///       attestationAuthority:
///         hint:
///           humanReadableName: My attestor
///   attestor:
///     type: gcp:binaryauthorization:Attestor
///     properties:
///       name: test-attestor
///       attestationAuthorityNote:
///         noteReference: ${note.name}
/// ```
///
/// ### Binary Authorization Policy Global Evaluation
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "test-attestor-note",
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "My attestor",
///         },
///     },
/// });
/// const attestor = new gcp.binaryauthorization.Attestor("attestor", {
///     name: "test-attestor",
///     attestationAuthorityNote: {
///         noteReference: note.name,
///     },
/// });
/// const policy = new gcp.binaryauthorization.Policy("policy", {
///     defaultAdmissionRule: {
///         evaluationMode: "REQUIRE_ATTESTATION",
///         enforcementMode: "ENFORCED_BLOCK_AND_AUDIT_LOG",
///         requireAttestationsBies: [attestor.name],
///     },
///     globalPolicyEvaluationMode: "ENABLE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// note = gcp.containeranalysis.Note("note",
///     name="test-attestor-note",
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "My attestor",
///         },
///     })
/// attestor = gcp.binaryauthorization.Attestor("attestor",
///     name="test-attestor",
///     attestation_authority_note={
///         "note_reference": note.name,
///     })
/// policy = gcp.binaryauthorization.Policy("policy",
///     default_admission_rule={
///         "evaluation_mode": "REQUIRE_ATTESTATION",
///         "enforcement_mode": "ENFORCED_BLOCK_AND_AUDIT_LOG",
///         "require_attestations_bies": [attestor.name],
///     },
///     global_policy_evaluation_mode="ENABLE")
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
///         Name = "test-attestor-note",
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "My attestor",
///             },
///         },
///     });
///
///     var attestor = new Gcp.BinaryAuthorization.Attestor("attestor", new()
///     {
///         Name = "test-attestor",
///         AttestationAuthorityNote = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNoteArgs
///         {
///             NoteReference = note.Name,
///         },
///     });
///
///     var policy = new Gcp.BinaryAuthorization.Policy("policy", new()
///     {
///         DefaultAdmissionRule = new Gcp.BinaryAuthorization.Inputs.PolicyDefaultAdmissionRuleArgs
///         {
///             EvaluationMode = "REQUIRE_ATTESTATION",
///             EnforcementMode = "ENFORCED_BLOCK_AND_AUDIT_LOG",
///             RequireAttestationsBies = new[]
///             {
///                 attestor.Name,
///             },
///         },
///         GlobalPolicyEvaluationMode = "ENABLE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/binaryauthorization"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		note, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name: pulumi.String("test-attestor-note"),
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("My attestor"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		attestor, err := binaryauthorization.NewAttestor(ctx, "attestor", &binaryauthorization.AttestorArgs{
/// 			Name: pulumi.String("test-attestor"),
/// 			AttestationAuthorityNote: &binaryauthorization.AttestorAttestationAuthorityNoteArgs{
/// 				NoteReference: note.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = binaryauthorization.NewPolicy(ctx, "policy", &binaryauthorization.PolicyArgs{
/// 			DefaultAdmissionRule: &binaryauthorization.PolicyDefaultAdmissionRuleArgs{
/// 				EvaluationMode:  pulumi.String("REQUIRE_ATTESTATION"),
/// 				EnforcementMode: pulumi.String("ENFORCED_BLOCK_AND_AUDIT_LOG"),
/// 				RequireAttestationsBies: pulumi.StringArray{
/// 					attestor.Name,
/// 				},
/// 			},
/// 			GlobalPolicyEvaluationMode: pulumi.String("ENABLE"),
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
/// import com.pulumi.gcp.binaryauthorization.Attestor;
/// import com.pulumi.gcp.binaryauthorization.AttestorArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNoteArgs;
/// import com.pulumi.gcp.binaryauthorization.Policy;
/// import com.pulumi.gcp.binaryauthorization.PolicyArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.PolicyDefaultAdmissionRuleArgs;
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
///             .name("test-attestor-note")
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("My attestor")
///                     .build())
///                 .build())
///             .build());
///
///         var attestor = new Attestor("attestor", AttestorArgs.builder()
///             .name("test-attestor")
///             .attestationAuthorityNote(AttestorAttestationAuthorityNoteArgs.builder()
///                 .noteReference(note.name())
///                 .build())
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .defaultAdmissionRule(PolicyDefaultAdmissionRuleArgs.builder()
///                 .evaluationMode("REQUIRE_ATTESTATION")
///                 .enforcementMode("ENFORCED_BLOCK_AND_AUDIT_LOG")
///                 .requireAttestationsBies(attestor.name())
///                 .build())
///             .globalPolicyEvaluationMode("ENABLE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:binaryauthorization:Policy
///     properties:
///       defaultAdmissionRule:
///         evaluationMode: REQUIRE_ATTESTATION
///         enforcementMode: ENFORCED_BLOCK_AND_AUDIT_LOG
///         requireAttestationsBies:
///           - ${attestor.name}
///       globalPolicyEvaluationMode: ENABLE
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: test-attestor-note
///       attestationAuthority:
///         hint:
///           humanReadableName: My attestor
///   attestor:
///     type: gcp:binaryauthorization:Attestor
///     properties:
///       name: test-attestor
///       attestationAuthorityNote:
///         noteReference: ${note.name}
/// ```
///
///
/// ## Import
///
/// Policy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Policy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/policy:Policy default projects/{{project}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/policy:Policy default {{project}}
/// ```
class Policy extends pulumi.CustomResource {
  /// A whitelist of image patterns to exclude from admission rules. If an
  /// image's name matches a whitelist pattern, the image's admission
  /// requests will always be permitted regardless of your admission rules.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  admissionWhitelistPatterns;

  /// Per-cluster admission rules. An admission rule specifies either that
  /// all container images used in a pod creation request must be attested
  /// to by one or more attestors, that all pod creations will be allowed,
  /// or that all pod creations will be denied. There can be at most one
  /// admission rule per cluster spec.
  ///
  /// Identifier format: `{{location}}.{{clusterId}}`.
  /// A location is either a compute zone (e.g. `us-central1-a`) or a region
  /// (e.g. `us-central1`).
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> clusterAdmissionRules;

  /// Default admission rule for a cluster without a per-cluster admission
  /// rule.
  /// Structure is documented below.
  late final pulumi.Output<PolicyDefaultAdmissionRule> defaultAdmissionRule;

  /// A descriptive comment.
  late final pulumi.Output<String?> description;

  /// Controls the evaluation of a Google-maintained global admission policy
  /// for common system-level images. Images not covered by the global
  /// policy will be subject to the project admission policy.
  /// Possible values are: `ENABLE`, `DISABLE`.
  late final pulumi.Output<String> globalPolicyEvaluationMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_binaryauthorization_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:binaryauthorization/policy:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    admissionWhitelistPatterns = registerOutput<List<Map<String, dynamic>>?>(
      'admissionWhitelistPatterns',
    );
    clusterAdmissionRules = registerOutput<List<Map<String, dynamic>>?>(
      'clusterAdmissionRules',
    );
    defaultAdmissionRule = registerOutput<PolicyDefaultAdmissionRule>(
      'defaultAdmissionRule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PolicyDefaultAdmissionRule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    globalPolicyEvaluationMode = registerOutput<String>(
      'globalPolicyEvaluationMode',
    );
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:binaryauthorization/policy:Policy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    admissionWhitelistPatterns = registerOutput<List<Map<String, dynamic>>?>(
      'admissionWhitelistPatterns',
    );
    clusterAdmissionRules = registerOutput<List<Map<String, dynamic>>?>(
      'clusterAdmissionRules',
    );
    defaultAdmissionRule = registerOutput<PolicyDefaultAdmissionRule>(
      'defaultAdmissionRule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PolicyDefaultAdmissionRule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    globalPolicyEvaluationMode = registerOutput<String>(
      'globalPolicyEvaluationMode',
    );
    project = registerOutput<String>('project');
  }
}
