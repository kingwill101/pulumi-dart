import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_response.dart';
import 'job_template_args.dart';

/// Creates a job template in the specified region.
class JobTemplate extends pulumi.CustomResource {
  /// The configuration for this template.
  late final pulumi.Output<JobConfigResponse> config;
  /// Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.
  late final pulumi.Output<String> jobTemplateId;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Creates a new [JobTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobTemplate]. {@macro pulumi_transcoder_v1_job_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobTemplate(
    String name, {
    JobTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:transcoder/v1:JobTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['jobTemplateId', 'location', 'project']).merge(options),
        ) {
    config = registerOutput<JobConfigResponse>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobTemplateId = registerOutput<String>('jobTemplateId');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [JobTemplate] resource.
  JobTemplate.reference(String urn)
    : super(
        'google-native:transcoder/v1:JobTemplate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    config = registerOutput<JobConfigResponse>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return JobConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobTemplateId = registerOutput<String>('jobTemplateId');
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
