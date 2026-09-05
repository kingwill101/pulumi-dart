import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';
import 'workflow_default_retention.dart';
import 'workflow_instances.dart';
import 'workflow_limits.dart';
import 'workflow_schedule.dart';
import 'workflow_state.dart';

/// Accepted Permissions
///
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleWorkflow = new cloudflare.Workflow("example_workflow", {
///     accountId: "account_id",
///     workflowName: "x",
///     className: "x",
///     scriptName: "x",
///     defaultRetention: {
///         errorRetention: "5 minutes",
///         successRetention: "5 minutes",
///     },
///     limits: {
///         steps: 1,
///     },
///     schedules: [{
///         cron: "x",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_workflow = cloudflare.Workflow("example_workflow",
///     account_id="account_id",
///     workflow_name="x",
///     class_name="x",
///     script_name="x",
///     default_retention={
///         "error_retention": "5 minutes",
///         "success_retention": "5 minutes",
///     },
///     limits={
///         "steps": 1,
///     },
///     schedules=[{
///         "cron": "x",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkflow = new Cloudflare.Workflow("example_workflow", new()
///     {
///         AccountId = "account_id",
///         WorkflowName = "x",
///         ClassName = "x",
///         ScriptName = "x",
///         DefaultRetention = new Cloudflare.Inputs.WorkflowDefaultRetentionArgs
///         {
///             ErrorRetention = "5 minutes",
///             SuccessRetention = "5 minutes",
///         },
///         Limits = new Cloudflare.Inputs.WorkflowLimitsArgs
///         {
///             Steps = 1,
///         },
///         Schedules = new[]
///         {
///             new Cloudflare.Inputs.WorkflowScheduleArgs
///             {
///                 Cron = "x",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewWorkflow(ctx, "example_workflow", &cloudflare.WorkflowArgs{
/// 			AccountId:    pulumi.String("account_id"),
/// 			WorkflowName: pulumi.String("x"),
/// 			ClassName:    pulumi.String("x"),
/// 			ScriptName:   pulumi.String("x"),
/// 			DefaultRetention: &cloudflare.WorkflowDefaultRetentionArgs{
/// 				ErrorRetention:   pulumi.Any("5 minutes"),
/// 				SuccessRetention: pulumi.Any("5 minutes"),
/// 			},
/// 			Limits: &cloudflare.WorkflowLimitsArgs{
/// 				Steps: pulumi.Int(1),
/// 			},
/// 			Schedules: cloudflare.WorkflowScheduleArray{
/// 				&cloudflare.WorkflowScheduleArgs{
/// 					Cron: pulumi.String("x"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_workflow" "example_workflow" {
///   account_id    = "account_id"
///   workflow_name = "x"
///   class_name    = "x"
///   script_name   = "x"
///   default_retention = {
///     error_retention   = "5 minutes"
///     success_retention = "5 minutes"
///   }
///   limits = {
///     steps = 1
///   }
///   schedules {
///     cron = "x"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Workflow;
/// import com.pulumi.cloudflare.WorkflowArgs;
/// import com.pulumi.cloudflare.inputs.WorkflowDefaultRetentionArgs;
/// import com.pulumi.cloudflare.inputs.WorkflowLimitsArgs;
/// import com.pulumi.cloudflare.inputs.WorkflowScheduleArgs;
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
///         var exampleWorkflow = new Workflow("exampleWorkflow", WorkflowArgs.builder()
///             .accountId("account_id")
///             .workflowName("x")
///             .className("x")
///             .scriptName("x")
///             .defaultRetention(WorkflowDefaultRetentionArgs.builder()
///                 .errorRetention("5 minutes")
///                 .successRetention("5 minutes")
///                 .build())
///             .limits(WorkflowLimitsArgs.builder()
///                 .steps(1)
///                 .build())
///             .schedules(WorkflowScheduleArgs.builder()
///                 .cron("x")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkflow:
///     type: cloudflare:Workflow
///     name: example_workflow
///     properties:
///       accountId: account_id
///       workflowName: x
///       className: x
///       scriptName: x
///       defaultRetention:
///         errorRetention: 5 minutes
///         successRetention: 5 minutes
///       limits:
///         steps: 1
///       schedules:
///         - cron: x
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/workflow:Workflow example '<account_id>/<workflow_name>'
/// ```
class Workflow extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> className;
  late final pulumi.Output<String> createdOn;
  /// Default retention applied to instances of this version when they do not set their own retention.
  late final pulumi.Output<WorkflowDefaultRetention?> defaultRetention;
  late final pulumi.Output<WorkflowInstances> instances;
  late final pulumi.Output<double> isDeleted;
  late final pulumi.Output<WorkflowLimits?> limits;
  late final pulumi.Output<String> modifiedOn;
  late final pulumi.Output<String> name;
  late final pulumi.Output<List<WorkflowSchedule>?> schedules;
  late final pulumi.Output<String> scriptName;
  late final pulumi.Output<double> terminatorRunning;
  late final pulumi.Output<String> triggeredOn;
  late final pulumi.Output<String> versionId;
  late final pulumi.Output<String> workflowName;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_index_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    className = registerOutput<String>('className');
    createdOn = registerOutput<String>('createdOn');
    defaultRetention = registerOutput<WorkflowDefaultRetention?>('defaultRetention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowDefaultRetention.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<WorkflowInstances>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowInstances.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDeleted = registerOutput<double>('isDeleted');
    limits = registerOutput<WorkflowLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    schedules = registerOutput<List<WorkflowSchedule>?>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkflowSchedule>(guardedValue, (value) => WorkflowSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    scriptName = registerOutput<String>('scriptName');
    terminatorRunning = registerOutput<double>('terminatorRunning');
    triggeredOn = registerOutput<String>('triggeredOn');
    versionId = registerOutput<String>('versionId');
    workflowName = registerOutput<String>('workflowName');
  }

  /// Gets an existing [Workflow] resource's state with the given [name] and [id].
  static Workflow get(
    String name,
    pulumi.Input<String> id, {
    WorkflowState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workflow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workflow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    className = registerOutput<String>('className');
    createdOn = registerOutput<String>('createdOn');
    defaultRetention = registerOutput<WorkflowDefaultRetention?>('defaultRetention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowDefaultRetention.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<WorkflowInstances>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowInstances.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDeleted = registerOutput<double>('isDeleted');
    limits = registerOutput<WorkflowLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    schedules = registerOutput<List<WorkflowSchedule>?>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkflowSchedule>(guardedValue, (value) => WorkflowSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    scriptName = registerOutput<String>('scriptName');
    terminatorRunning = registerOutput<double>('terminatorRunning');
    triggeredOn = registerOutput<String>('triggeredOn');
    versionId = registerOutput<String>('versionId');
    workflowName = registerOutput<String>('workflowName');
  }

  /// Creates a typed reference to an existing [Workflow] resource.
  Workflow.reference(String urn)
    : super(
        'cloudflare:index/workflow:Workflow',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    className = registerOutput<String>('className');
    createdOn = registerOutput<String>('createdOn');
    defaultRetention = registerOutput<WorkflowDefaultRetention?>('defaultRetention', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowDefaultRetention.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<WorkflowInstances>('instances', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowInstances.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isDeleted = registerOutput<double>('isDeleted');
    limits = registerOutput<WorkflowLimits?>('limits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    schedules = registerOutput<List<WorkflowSchedule>?>('schedules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkflowSchedule>(guardedValue, (value) => WorkflowSchedule.fromMap((value as Map).cast<String, dynamic>())); });
    scriptName = registerOutput<String>('scriptName');
    terminatorRunning = registerOutput<double>('terminatorRunning');
    triggeredOn = registerOutput<String>('triggeredOn');
    versionId = registerOutput<String>('versionId');
    workflowName = registerOutput<String>('workflowName');
  }
}
