import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_args.dart';
import 'template_source_destination.dart';

/// A source for Pulumi templates
class TemplateSource extends pulumi.CustomResource {
  /// The default destination for projects using templates from this source.
  late final pulumi.Output<TemplateSourceDestination?> destination;

  /// Organization name.
  late final pulumi.Output<String> organizationName;

  /// Source name.
  late final pulumi.Output<String> sourceName;

  /// Github URL of the repository from which to grab templates.
  late final pulumi.Output<String> sourceURL;

  /// Creates a new [TemplateSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateSource]. {@macro pulumi_index_template_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateSource(
    String name, {
    TemplateSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'pulumiservice:index:TemplateSource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destination = registerOutput<TemplateSourceDestination?>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TemplateSourceDestination.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    organizationName = registerOutput<String>('organizationName');
    sourceName = registerOutput<String>('sourceName');
    sourceURL = registerOutput<String>('sourceURL');
  }
}
